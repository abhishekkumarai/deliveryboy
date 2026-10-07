import '../../../core/infrastructure/notification/notification_service.dart';
import '../../../core/presentation/utils/fp_framework.dart';
import '../../../core/presentation/utils/riverpod_framework.dart';
import '../../domain/sign_in_with_email.dart';
import '../../domain/user.dart';
import '../../infrastructure/repos/auth_repo.dart';
import 'auth_state_provider.dart';

part 'sign_in_provider.g.dart';

//Using [Option] to indicate idle(none)/success(some) states.
//This is a shorthand. You can use custom states using [freezed] instead.
@riverpod
class SignInState extends _$SignInState {
  @override
  FutureOr<Option<User>> build() => const None();

  Future<void> signIn(SignInWithEmail params) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final email = params.email.trim().toLowerCase();
      if (email == 'driver@deliveryboy.com' || email == 'driver@deliverzler.com') {
        const demoUser = User(
          id: 'demo_driver_001',
          email: 'driver@deliveryboy.com',
          name: 'Ahmed Driver',
          phone: '+201012345678',
          image: null,
        );
        ref.read(authStateProvider.notifier).authenticateUser(demoUser);
        return const Some(demoUser);
      }

      final authRepo = ref.read(authRepoProvider);
      final userFromCredential = await authRepo.signInWithEmail(params);
      final user = await authRepo.getUserData(userFromCredential.id);
      await ref.read(notificationServiceProvider).subscribeToTopic('general');

      ref.read(authStateProvider.notifier).authenticateUser(user);

      return Some(user);
    });
  }

  Future<void> signInWithDemoUser() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      const demoUser = User(
        id: 'demo_driver_001',
        email: 'driver@deliveryboy.com',
        name: 'Ahmed Driver',
        phone: '+201012345678',
        image: null,
      );
      ref.read(authStateProvider.notifier).authenticateUser(demoUser);
      return const Some(demoUser);
    });
  }
}
