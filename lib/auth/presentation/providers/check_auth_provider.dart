import 'package:flutter/foundation.dart';

import '../../../auth/domain/user.dart';
import '../../../auth/infrastructure/repos/auth_repo.dart';
import '../../../auth/presentation/providers/auth_state_provider.dart';
import '../../../auth/presentation/providers/sign_out_provider.dart';
import '../../../core/presentation/utils/riverpod_framework.dart';

part 'check_auth_provider.g.dart';

@riverpod
Future<User> checkAuth(CheckAuthRef ref) async {
  final sub = ref.listen(authStateProvider.notifier, (prev, next) {});
  ref.listenSelf((previous, next) {
    next.whenOrNull(
      data: (user) => sub.read().authenticateUser(user),
      error: (err, st) => ref.read(signOutStateProvider.notifier).signOut(),
    );
  });

  if (kIsWeb) {
    return const User(
      id: 'DP-402',
      email: 'driver@deliveryboy.com',
      name: 'Alex Smith',
      phone: '+919876543210',
      image: null,
    );
  }

  final uid = await ref.watch(authRepoProvider).getUserAuthUid();
  return ref.watch(authRepoProvider).getUserData(uid);
}
