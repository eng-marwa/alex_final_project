import 'package:alex_final_project/core/storage/shared_prefs_helper.dart';

class SplashLocalDataSource {
  final SharedPrefsHelper _sharedPrefsHelper;

  SplashLocalDataSource(this._sharedPrefsHelper);

  //first time user
  Future<bool> isFirstUser() async {
    return _sharedPrefsHelper.isFirstTime;
  }

  //user logged in
  Future<bool> isLoggedIn() async {
    return _sharedPrefsHelper.isLoggedIn;
  }
}
