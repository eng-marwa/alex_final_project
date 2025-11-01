import 'package:alex_final_project/core/networking/api_services.dart';
import 'package:alex_final_project/core/networking/dio_config.dart';
import 'package:alex_final_project/core/storage/secure_storage_helper.dart';
import 'package:alex_final_project/core/storage/shared_prefs_helper.dart';
import 'package:alex_final_project/features/auth/login/data/datasources/auth_data_source.dart';
import 'package:alex_final_project/features/auth/login/data/repositories/auth_repository_impl.dart';
import 'package:alex_final_project/features/auth/login/domain/repositories/auth_repository.dart';
import 'package:alex_final_project/features/auth/login/domain/use_cases/login_use_case.dart';
import 'package:alex_final_project/features/auth/login/domain/use_cases/save_user_data_use_case.dart';
import 'package:alex_final_project/features/auth/login/domain/use_cases/set_sign_in_status_use_case.dart';
import 'package:alex_final_project/features/auth/login/presentation/cubit/auth_cubit.dart';
import 'package:alex_final_project/features/onboarding/data/repository_impl/onboarding_repository_impl.dart';
import 'package:alex_final_project/features/onboarding/domain/onboarding_repository.dart';
import 'package:alex_final_project/features/onboarding/domain/use_cases/set_first_time_status_use_case.dart';
import 'package:alex_final_project/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:alex_final_project/features/splash/data/data_source/splash_local_data_source.dart';
import 'package:alex_final_project/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:alex_final_project/features/splash/domain/repository/splash_repository.dart';
import 'package:alex_final_project/features/splash/domain/use_cases/check_first_time_user_use_case.dart';
import 'package:alex_final_project/features/splash/domain/use_cases/check_user_logged_in_use_case.dart';
import 'package:alex_final_project/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sl = GetIt.instance;

Future<void> setupDependencies() async {
  final dio = await DioConfig.instance.getDio();
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SecureStorageHelper>(
    () => SecureStorageHelper.instance,
  );
  sl.registerLazySingleton<SharedPrefsHelper>(() => SharedPrefsHelper(prefs));

  //splash
  sl.registerSingleton<SplashLocalDataSource>(SplashLocalDataSource(sl()));
  sl.registerFactory<SplashRepository>(() => SplashRepositoryImpl(sl()));
  sl.registerFactory<CheckFirstTimeUserUseCase>(
    () => CheckFirstTimeUserUseCase(sl()),
  );
  sl.registerFactory<CheckUserLoggedInUseCase>(
    () => CheckUserLoggedInUseCase(sl()),
  );
  sl.registerFactory<SplashCubit>(() => SplashCubit(sl(), sl()));
  //onboarding
  sl.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepositoryImpl(sl()),
  );
  sl.registerFactory<SetFirstTimeStatusUseCase>(
    () => SetFirstTimeStatusUseCase(sl()),
  );
  sl.registerFactory<SaveUserDataUseCase>(
    () => SaveUserDataUseCase(sl()),
  );
  sl.registerFactory<OnboardingCubit>(() => OnboardingCubit(sl()));

  //login
  sl.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  sl.registerLazySingleton<AuthDataSource>(() => AuthDataSource(sl()));
  sl.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(sl(), sl(), sl()),
  );
  sl.registerFactory<SetSignInStatusUseCase>(
    () => SetSignInStatusUseCase(sl()),
  );
  sl.registerFactory<LoginUseCase>(() => LoginUseCase(sl()));
  sl.registerFactory<AuthCubit>(() => AuthCubit(sl(), sl(), sl()));
}
