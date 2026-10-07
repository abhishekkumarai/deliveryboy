import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../domain/delivery_task.dart';

class PodChecklistModal extends StatefulWidget {
  const PodChecklistModal({
    required this.task,
    required this.onComplete,
    super.key,
  });

  final DeliveryTask task;
  final Function({
    required bool otpVerified,
    required String barcodeScanned,
    required bool codCollected,
    required String notes,
  }) onComplete;

  @override
  State<PodChecklistModal> createState() => _PodChecklistModalState();
}

class _PodChecklistModalState extends State<PodChecklistModal> {
  final _otpController = TextEditingController();
  final _notesController = TextEditingController(
    text: 'Handed directly to recipient at front door. Left safe.',
  );

  bool _otpVerified = false;
  bool _barcodeScanned = true; // default simulated scanned for package
  bool _codCollected = false;
  bool _photoTaken = true; // simulated POD photo captured
  bool _signed = true; // simulated digital signature

  @override
  void initState() {
    super.initState();
    if (widget.task.verificationRequirements.expectedOtp != null) {
      _otpController.text = widget.task.verificationRequirements.expectedOtp!;
      _otpVerified = true;
    }
    if (!widget.task.payment.isPrepaid) {
      _codCollected = true;
    }
  }

  @override
  void dispose() {
    _otpController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF131317) : Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Modal Handle & Header
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Destination Arrived',
                      style: TextStyles.f18SemiBold(context).copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Task ${widget.task.taskId} • Recipient: ${widget.task.destination.name}',
                      style: TextStyles.f12(context).copyWith(
                        color: theme.textTheme.bodySmall?.color,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFF10B981).withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'ARRIVED',
                    style: TextStyle(
                      color: Color(0xFF047857),
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 28),

            // Checklist Section
            Text(
              'VERIFICATION CHECKLIST (POD)',
              style: TextStyles.f12(context).copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                color: theme.textTheme.bodySmall?.color,
              ),
            ),
            const SizedBox(height: 12),

            // 1. OTP Verification
            if (widget.task.verificationRequirements.requireOtp) ...[
              _buildChecklistTile(
                icon: Icons.pin_outlined,
                title: 'Customer Delivery OTP',
                subtitle: 'Expected: ${widget.task.verificationRequirements.expectedOtp ?? '4-digit PIN'}',
                isDone: _otpVerified,
                trailing: SizedBox(
                  width: 100,
                  height: 36,
                  child: TextField(
                    controller: _otpController,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: 'PIN',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        _otpVerified = val == widget.task.verificationRequirements.expectedOtp;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],

            // 2. Barcode Scan
            _buildChecklistTile(
              icon: Icons.qr_code_scanner_rounded,
              title: 'Package Barcode Check',
              subtitle: 'Barcode: ${widget.task.packageDetails.trackingBarcode}',
              isDone: _barcodeScanned,
              trailing: TextButton.icon(
                onPressed: () {
                  setState(() => _barcodeScanned = !_barcodeScanned);
                },
                icon: Icon(
                  _barcodeScanned ? Icons.check_circle : Icons.camera_alt_outlined,
                  size: 16,
                  color: _barcodeScanned ? const Color(0xFF10B981) : null,
                ),
                label: Text(_barcodeScanned ? 'Scanned' : 'Scan'),
              ),
            ),
            const SizedBox(height: 10),

            // 3. Cash on Delivery
            if (!widget.task.payment.isPrepaid) ...[
              _buildChecklistTile(
                icon: Icons.attach_money_rounded,
                title: 'Cash Collection (COD)',
                subtitle: 'Collect: \$${widget.task.payment.amountDue.toStringAsFixed(2)}',
                isDone: _codCollected,
                trailing: Switch(
                  value: _codCollected,
                  activeColor: const Color(0xFF10B981),
                  onChanged: (val) {
                    setState(() => _codCollected = val);
                  },
                ),
              ),
              const SizedBox(height: 10),
            ],

            // 4. Photo Proof & Signature
            _buildChecklistTile(
              icon: Icons.camera_enhance_outlined,
              title: 'Doorstep Photo & Signature',
              subtitle: 'Multi-factor verification recorded',
              isDone: _photoTaken && _signed,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF10B981).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Photo ✓',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF047857),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF10B981).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Signed ✓',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF047857),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),

            // 5. Courier Notes
            TextField(
              controller: _notesController,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: 'Delivery Notes (Optional)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Primary Completion Button
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F172A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  widget.onComplete(
                    otpVerified: _otpVerified,
                    barcodeScanned: widget.task.packageDetails.trackingBarcode,
                    codCollected: _codCollected,
                    notes: _notesController.text,
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirm & Complete Delivery',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_rounded, color: Colors.white),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                '⚡ Dispatches webhook to ${widget.task.clientApp.webhookUrl}',
                style: TextStyle(
                  fontSize: 11,
                  color: theme.textTheme.bodySmall?.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChecklistTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required bool isDone,
    required Widget trailing,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDone
              ? const Color(0xFF10B981).withValues(alpha: 0.4)
              : Theme.of(context).dividerColor.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isDone
                  ? const Color(0xFF10B981).withValues(alpha: 0.15)
                  : Colors.grey.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 20,
              color: isDone ? const Color(0xFF10B981) : Colors.grey,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 11,
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
              ],
            ),
          ),
          trailing,
        ],
      ),
    );
  }
}
