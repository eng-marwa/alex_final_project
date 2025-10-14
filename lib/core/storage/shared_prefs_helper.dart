import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  final SharedPreferences _prefs;

  SharedPrefsHelper(this._prefs);

  //shared prefs keys
  static const String _isFirstTimeKey = 'isFirstTime';
  static const String _isLoggedInKey = 'isLoggedIn';

  //first time user
  set isFirstTime(bool value) => _prefs.setBool(_isFirstTimeKey, value);

  bool get isFirstTime => _prefs.getBool(_isFirstTimeKey) ?? true;

  //user logged in
  set isLoggedIn(bool value) => _prefs.setBool(_isLoggedInKey, value);

  bool get isLoggedIn => _prefs.getBool(_isLoggedInKey) ?? false;
}
