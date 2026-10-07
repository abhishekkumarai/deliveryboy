import 'package:flutter/material.dart';

import '../../../../../auth/domain/user.dart';
import '../../../../../auth/presentation/providers/auth_state_provider.dart';
import '../../../../../core/presentation/styles/styles.dart';
import '../../../../../core/presentation/utils/fp_framework.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../core/presentation/widgets/cached_network_image_circular.dart';

class UserDetailsComponent extends ConsumerWidget {
  const UserDetailsComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    if (authState is! Some<User>) {
      return const SizedBox.shrink();
    }
    final user = authState.value;

    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                user.name ?? 'User${user.id.substring(0, 6)}',
                style: TextStyles.f18(context).copyWith(fontWeight: FontStyles.fontWeightBold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                user.email,
                style: TextStyles.f16(context),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: Sizes.marginV2,
        ),
        user.image != null && user.image!.contains('http')
            ? CachedNetworkImageCircular(
                imageUrl: user.image,
                radius: Sizes.imageR28,
              )
            : CircleAvatar(
                radius: Sizes.imageR28,
                backgroundColor: const Color(0xFF0F172A),
                child: Text(
                  (user.name?.isNotEmpty ?? false) ? user.name![0].toUpperCase() : 'A',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
      ],
    );
  }
}
