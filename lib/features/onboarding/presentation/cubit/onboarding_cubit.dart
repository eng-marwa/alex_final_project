import 'package:alex_final_project/features/onboarding/domain/use_cases/set_first_time_status_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<void>{
  final SetFirstTimeStatusUseCase _firstTimeStatusUseCase;
  OnboardingCubit(this._firstTimeStatusUseCase):super(null);

  void setFirstTime(){
    _firstTimeStatusUseCase(false);
  }
}