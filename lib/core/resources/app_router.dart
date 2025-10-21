import 'package:alex_final_project/core/di/module.dart';
import 'package:alex_final_project/core/storage/shared_prefs_helper.dart';
import 'package:alex_final_project/features/auth/login/presentation/cubit/auth_cubit.dart';
import 'package:alex_final_project/features/auth/login/presentation/screens/login_screen.dart';
import 'package:alex_final_project/features/home/home_screen.dart';
import 'package:alex_final_project/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:alex_final_project/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:alex_final_project/features/splash/data/data_source/splash_local_data_source.dart';
import 'package:alex_final_project/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:alex_final_project/features/splash/domain/use_cases/check_first_time_user_use_case.dart';
import 'package:alex_final_project/features/splash/domain/use_cases/check_user_logged_in_use_case.dart';
import 'package:alex_final_project/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:alex_final_project/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Routes {
  Routes._();

  static const String splash = '/';
  static const String home = '/home';
  static const login = '/login';
  static const register = '/register';
  static const String profile = '/profile';
  static const String favorites = '/favorites';
  static const String orders = '/orders';
  static const String notifications = '/notifications';
  static const String offers = '/offers';
  static const String onboarding = '/onboarding';
}

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SplashCubit>(
            create: (context) => sl<SplashCubit>(),
            child: SplashScreen(),
          ),
        );
      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => BlocProvider<OnboardingCubit>(
    create: (context) =>sl<OnboardingCubit>(), child: OnboardingScreen()));
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthCubit>(
            create: (context) => sl<AuthCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) =>
          Scaffold(body: Center(child: Text('No Route Found'))),
    );
  }
}
