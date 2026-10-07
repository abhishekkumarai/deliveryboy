import 'dart:async';
import 'package:flutter/foundation.dart';

import '../../../core/infrastructure/notification/notification_service.dart';
import '../../../core/presentation/extensions/future_extensions.dart';
import '../../../core/presentation/utils/fp_framework.dart';
import '../../../core/presentation/utils/riverpod_framework.dart';
import '../../infrastructure/repos/auth_repo.dart';
import 'auth_state_provider.dart';

part 'sign_out_provider.g.dart';

@riverpod
class SignOutState extends _$SignOutState {
  @override
  FutureOr<Option<Unit>> build() => const None();

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final user = ref.read(authStateProvider);
      final isDemoOrWeb = kIsWeb ||
          user.fold(
            () => false,
            (u) => u.id == 'DP-402' || u.id.startsWith('demo'),
          );

      if (!isDemoOrWeb) {
        try {
          await ref.read(authRepoProvider).signOut();
        } catch (_) {}
        try {
          await ref.read(notificationServiceProvider).unsubscribeFromTopic('general');
        } catch (_) {}
      }

      ref.read(authStateProvider.notifier).unAuthenticateUser();

      return const Some(unit);
    });
  }
}
