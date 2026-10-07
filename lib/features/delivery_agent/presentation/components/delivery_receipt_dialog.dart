import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../domain/completion_payload.dart';

class DeliveryReceiptDialog extends StatelessWidget {
  const DeliveryReceiptDialog({
    required this.payload,
    required this.webhookUrl,
    required this.returnUrl,
    required this.onReturnToApp,
    super.key,
  });

  final CompletionPayload payload;
  final String webhookUrl;
  final String? returnUrl;
  final VoidCallback onReturnToApp;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final jsonPretty = const JsonEncoder.withIndent('  ').convert(payload.toJson());

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: isDark ? const Color(0xFF131317) : Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500, maxHeight: 680),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Success Header
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFF10B981),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery Completed!',
                          style: TextStyles.f18SemiBold(context).copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Task #${payload.taskId} • External Order #${payload.externalOrderId}',
                          style: TextStyles.f12(context).copyWith(
                            color: theme.textTheme.bodySmall?.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(height: 24),

              Expanded(
                child: ListView(
                  children: [
                    // Outbound Webhook Relay Card
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0F172A),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.webhook, size: 16, color: Color(0xFF10B981)),
                                  SizedBox(width: 6),
                                  Text(
                                    'WEBHOOK DISPATCHED',
                                    style: TextStyle(
                                      color: Color(0xFF10B981),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF10B981).withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'HTTP 200 OK • 142ms',
                                  style: TextStyle(
                                    color: Color(0xFF10B981),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            webhookUrl,
                            style: const TextStyle(
                              color: Color(0xFF94A3B8),
                              fontSize: 11,
                              fontFamily: 'monospace',
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Payload JSON:',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Clipboard.setData(ClipboardData(text: jsonPretty));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Payload copied to clipboard!'),
                                      duration: Duration(seconds: 1),
                                    ),
                                  );
                                },
                                child: const Row(
                                  children: [
                                    Icon(Icons.copy, size: 12, color: Colors.white70),
                                    SizedBox(width: 4),
                                    Text(
                                      'Copy',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF030712),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              jsonPretty,
                              style: const TextStyle(
                                color: Color(0xFF38BDF8),
                                fontSize: 10,
                                fontFamily: 'monospace',
                              ),
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Metrics Grid (2x2)
                    Row(
                      children: [
                        Expanded(
                          child: _buildMetricTile(
                            context,
                            'Courier',
                            payload.deliveryPerson.name,
                            Icons.person_outline,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildMetricTile(
                            context,
                            'Status',
                            payload.status.toUpperCase(),
                            Icons.check_circle_outline,
                            isGreen: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: _buildMetricTile(
                            context,
                            'OTP Verified',
                            payload.verification.otpVerified ? 'YES (4890)' : 'NO',
                            Icons.pin_outlined,
                            isGreen: payload.verification.otpVerified,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildMetricTile(
                            context,
                            'Payment Collected',
                            payload.verification.paymentCollected != null
                                ? '\$${payload.verification.paymentCollected!.amount.toStringAsFixed(2)}'
                                : 'Prepaid',
                            Icons.attach_money,
                            isGreen: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(height: 24),

              // Actions
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F172A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    onReturnToApp();
                  },
                  icon: const Icon(Icons.open_in_new, color: Colors.white, size: 18),
                  label: const Text(
                    'Return to Caller App (StoreApp)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Back to Active Shift'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetricTile(
    BuildContext context,
    String label,
    String value,
    IconData icon, {
    bool isGreen = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 14,
                color: isGreen ? const Color(0xFF10B981) : Colors.grey,
              ),
              const SizedBox(width: 4),
              Text(
                label,
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: isGreen ? const Color(0xFF047857) : null,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
