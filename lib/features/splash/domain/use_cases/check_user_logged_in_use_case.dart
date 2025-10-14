import 'package:alex_final_project/features/splash/domain/repository/splash_repository.dart';

class CheckUserLoggedInUseCase {
  final SplashRepository _splashRepository;

  CheckUserLoggedInUseCase(this._splashRepository);

  Future<bool> call() {
    return _splashRepository.isLoggedIn();
  }
}
