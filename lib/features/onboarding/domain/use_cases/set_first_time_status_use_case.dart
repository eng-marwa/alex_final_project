import 'package:alex_final_project/features/onboarding/domain/onboarding_repository.dart';

class SetFirstTimeStatusUseCase {
  final OnboardingRepository repository;

  SetFirstTimeStatusUseCase(this.repository);

  Future<void> call(bool isFirstTime) async {
    await repository.setFirstTimeStatus(isFirstTime);
  }
}