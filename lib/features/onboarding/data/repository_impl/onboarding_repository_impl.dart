import 'package:alex_final_project/core/storage/shared_prefs_helper.dart';
import 'package:alex_final_project/features/onboarding/domain/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final SharedPrefsHelper _sharedPrefsHelper;

  OnboardingRepositoryImpl(this._sharedPrefsHelper);
  @override
  Future<void> setFirstTimeStatus(bool isFirstTime) async{
   _sharedPrefsHelper.isFirstTime = isFirstTime;
  }
}