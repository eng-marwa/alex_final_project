import 'package:alex_final_project/features/splash/domain/repository/splash_repository.dart';

class CheckFirstTimeUserUseCase {
  final SplashRepository _splashRepository;

  CheckFirstTimeUserUseCase(this._splashRepository);

  Future<bool> call() {
    return _splashRepository.isFirstUser();
  }
}
