import 'package:alex_final_project/features/auth/login/domain/repositories/auth_repository.dart';

class SetSignInStatusUseCase {
  final AuthRepository authRepository;

  SetSignInStatusUseCase(this.authRepository);

  Future<void> call(bool isSignedIn) async {
    await authRepository.setSignInStatus(isSignedIn);
  }
}