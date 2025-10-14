import 'package:alex_final_project/core/storage/shared_prefs_helper.dart';
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
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPrefsHelper>(() => SharedPrefsHelper(prefs));
  sl.registerSingleton<SplashLocalDataSource>(SplashLocalDataSource(sl()));
  sl.registerFactory<SplashRepository>(() => SplashRepositoryImpl(sl()));
  sl.registerFactory<CheckFirstTimeUserUseCase>(
    () => CheckFirstTimeUserUseCase(sl()),
  );
  sl.registerFactory<CheckUserLoggedInUseCase>(
    () => CheckUserLoggedInUseCase(sl()),
  );
  sl.registerFactory<SplashCubit>(() => SplashCubit(sl(), sl()));
}
