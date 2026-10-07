import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../domain/delivery_task.dart';

class TaskManifestCardComponent extends StatelessWidget {
  const TaskManifestCardComponent({
    required this.task,
    super.key,
  });

  final DeliveryTask task;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Provenance Banner
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.sync_alt,
                      size: 16,
                      color: Color(0xFF10B981),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Origin: ${task.clientApp.appName}',
                      style: TextStyles.f12(context).copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0F172A),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    task.taskId,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 24),

            // Waypoints Flow
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        color: Color(0xFF10B981),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 48,
                      color: const Color(0xFFCBD5E1),
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        color: Color(0xFF0F172A),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: Sizes.marginH12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Pickup
                      Text(
                        'PICKUP',
                        style: TextStyles.f12(context).copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF047857),
                        ),
                      ),
                      Text(
                        task.pickup.name,
                        style: TextStyles.f14(context).copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        task.pickup.address,
                        style: TextStyles.f12(context).copyWith(
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: Sizes.marginV12),

                      // Destination
                      Text(
                        'DESTINATION',
                        style: TextStyles.f12(context).copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF0F172A),
                        ),
                      ),
                      Text(
                        task.destination.name,
                        style: TextStyles.f14(context).copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        task.destination.address,
                        style: TextStyles.f12(context).copyWith(
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (task.destination.instructions != null) ...[
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.amber.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '⚠️ ${task.destination.instructions}',
                            style: const TextStyle(
                              fontSize: 11,
                              color: Color(0xFFB45309),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 24),

            // Metadata Chips
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                _buildChip(
                  context,
                  Icons.inventory_2_outlined,
                  '${task.packageDetails.category} • ${task.packageDetails.itemsCount} items',
                ),
                _buildChip(
                  context,
                  Icons.scale_outlined,
                  '${task.packageDetails.weightKg} kg',
                ),
                if (task.packageDetails.isFragile)
                  _buildChip(
                    context,
                    Icons.warning_amber_rounded,
                    'Fragile',
                    isAlert: true,
                  ),
                _buildChip(
                  context,
                  Icons.payments_outlined,
                  '${task.payment.mode}: \$${task.payment.amountDue.toStringAsFixed(2)}',
                  isAccent: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(
    BuildContext context,
    IconData icon,
    String label, {
    bool isAlert = false,
    bool isAccent = false,
  }) {
    Color bg = Theme.of(context).dividerColor.withValues(alpha: 0.1);
    Color fg = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black87;

    if (isAlert) {
      bg = Colors.red.withValues(alpha: 0.12);
      fg = const Color(0xFFBA1A1A);
    } else if (isAccent) {
      bg = const Color(0xFF10B981).withValues(alpha: 0.12);
      fg = const Color(0xFF047857);
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: fg),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: fg,
            ),
          ),
        ],
      ),
    );
  }
}
