import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:deliverzler/core/presentation/routing/app_router.dart';
import 'package:deliverzler/core/presentation/styles/styles.dart';
import 'package:deliverzler/features/delivery_agent/domain/completion_payload.dart';
import 'package:deliverzler/features/delivery_agent/domain/delivery_task.dart';
import 'package:deliverzler/features/delivery_agent/infrastructure/task_ingestion_service.dart';
import 'package:deliverzler/features/delivery_agent/presentation/components/delivery_receipt_dialog.dart';
import 'package:deliverzler/features/delivery_agent/presentation/components/pod_checklist_modal.dart';
import 'package:deliverzler/features/delivery_agent/presentation/components/task_header_component.dart';
import 'package:deliverzler/features/delivery_agent/presentation/components/task_manifest_card_component.dart';

class ActiveDeliveryTaskScreen extends ConsumerWidget {
  const ActiveDeliveryTaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(activeDeliveryTaskControllerProvider);

    if (task == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('DeliveryBoy')),
        body: const Center(
          child: Text('No active delivery task assigned.'),
        ),
      );
    }

    void handleArrivedAtDestination() {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (ctx) => PodChecklistModal(
          task: task,
          onComplete: ({
            required bool otpVerified,
            required String barcodeScanned,
            required bool codCollected,
            required String notes,
          }) {
            Navigator.of(ctx).pop();

            // Construct Completion Payload
            final payload = CompletionPayload(
              taskId: task.taskId,
              externalOrderId: task.externalOrderId,
              status: 'delivered',
              deliveryPerson: DeliveryPersonSummary(
                id: task.deliveryPerson.id,
                name: task.deliveryPerson.name,
                phone: task.deliveryPerson.phone,
              ),
              timeline: CompletionTimeline(
                startedAt: task.createdAt,
                arrivedAtDestination: DateTime.now().toIso8601String(),
                completedAt: DateTime.now().toIso8601String(),
              ),
              deliveryLocation: CompletionLocation(
                latitude: task.destination.latitude,
                longitude: task.destination.longitude,
                distanceTraveledKm: 8.4,
              ),
              verification: CompletionVerification(
                otpVerified: otpVerified,
                barcodeScanned: barcodeScanned,
                paymentCollected: codCollected
                    ? CollectedPaymentSummary(
                        amount: task.payment.amountDue,
                        currency: task.payment.currency,
                        method: 'cash',
                      )
                    : null,
              ),
              proofOfDelivery: ProofOfDeliverySummary(
                recipientNameReceived: task.destination.name,
                signatureBase64OrUrl: 'signed_token_pod_${task.taskId}',
                photoBase64OrUrl: 'photo_doorstep_pod_${task.taskId}.jpg',
                driverNotes: notes,
              ),
            );

            // Update status
            ref
                .read(activeDeliveryTaskControllerProvider.notifier)
                .updateStatus(TaskStatus.delivered);

            // Show Receipt Dialog with Webhook details
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (dCtx) => DeliveryReceiptDialog(
                payload: payload,
                webhookUrl: task.clientApp.webhookUrl,
                returnUrl: task.clientApp.returnUrl,
                onReturnToApp: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Returning to ${task.clientApp.appName} via ${task.clientApp.returnUrl ?? 'callback'}...',
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TaskHeaderComponent(task: task),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TaskManifestCardComponent(task: task),
                    const SizedBox(height: Sizes.marginV16),

                    // Quick Map Route CTA
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {
                          const MapRoute().go(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F172A).withValues(alpha: 0.04),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF10B981).withValues(alpha: 0.15),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.map_outlined,
                                  color: Color(0xFF047857),
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Navigate via OpenStreetMap',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'OSRM Driving Route • Free & Open-source',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context).textTheme.bodySmall?.color,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios, size: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Persistent Bottom Action Bar
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: Sizes.paddingV12,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    offset: const Offset(0, -2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Calling recipient at ${task.destination.phone}...'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.phone_outlined, size: 18),
                          label: const Text('Call Recipient'),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            const MapRoute().go(context);
                          },
                          icon: const Icon(Icons.navigation_outlined, size: 18),
                          label: const Text('Open Map'),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0F172A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: handleArrivedAtDestination,
                      icon: const Icon(Icons.check_circle_outline, color: Colors.white),
                      label: const Text(
                        'Arrived at Destination (Complete POD)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
