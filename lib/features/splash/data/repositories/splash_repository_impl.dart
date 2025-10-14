import 'package:alex_final_project/features/splash/data/data_source/splash_local_data_source.dart';
import 'package:alex_final_project/features/splash/domain/repository/splash_repository.dart';

class SplashRepositoryImpl implements SplashRepository{
  final SplashLocalDataSource _localDataSource;

  SplashRepositoryImpl(this._localDataSource);
  @override
  Future<bool> isFirstUser() {
   return _localDataSource.isFirstUser();
  }

  @override
  Future<bool> isLoggedIn() {
    return _localDataSource.isLoggedIn();
  }


}