import 'package:alex_final_project/core/resources/app_router.dart';
import 'package:alex_final_project/features/splash/domain/use_cases/check_first_time_user_use_case.dart';
import 'package:alex_final_project/features/splash/domain/use_cases/check_user_logged_in_use_case.dart';
import 'package:alex_final_project/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<void> {
  final CheckUserLoggedInUseCase _checkUserLoggedInUseCase;
  final CheckFirstTimeUserUseCase _checkFirstTimeUserUseCase;

  SplashCubit(this._checkUserLoggedInUseCase, this._checkFirstTimeUserUseCase)
    : super(null);

  Future<void> init(BuildContext context) async {
    final firstTime = await _checkFirstTimeUserUseCase();
    final loggedIn = await _checkUserLoggedInUseCase();
    if (!context.mounted) {
      return;
    }
    if (firstTime) {
      context.navigateReplacement(Routes.onboarding);
    } else {
      if (loggedIn) {
        context.navigateReplacement(Routes.home);
      } else {
        context.navigateReplacement(Routes.login);
      }
    }
  }
}
