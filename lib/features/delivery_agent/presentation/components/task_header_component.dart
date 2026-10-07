import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../domain/delivery_task.dart';

class TaskHeaderComponent extends StatelessWidget {
  const TaskHeaderComponent({
    required this.task,
    super.key,
  });

  final DeliveryTask task;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: Sizes.paddingV12,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor.withValues(alpha: 0.1),
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F172A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.electric_moped,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: Sizes.marginH8),
                  Text(
                    'DeliveryBoy',
                    style: TextStyles.f18SemiBold(context).copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF10B981).withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFF10B981).withValues(alpha: 0.3),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Color(0xFF10B981),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'ON DUTY • EN ROUTE',
                      style: TextStyle(
                        color: Color(0xFF047857),
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: const Color(0xFF0F172A),
                child: Text(
                  task.deliveryPerson.name.isNotEmpty
                      ? task.deliveryPerson.name[0]
                      : 'D',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(width: Sizes.marginH8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.deliveryPerson.name,
                      style: TextStyles.f14(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${task.deliveryPerson.vehicle?.type ?? 'Vehicle'} • ${task.deliveryPerson.vehicle?.licensePlate ?? ''}',
                      style: TextStyles.f12(context).copyWith(
                        color: Theme.of(context).textTheme.bodySmall?.color,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.amber.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    SizedBox(width: 3),
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
