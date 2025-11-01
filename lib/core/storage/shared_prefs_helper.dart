import 'dart:convert';

import 'package:alex_final_project/features/auth/login/data/models/login_response.dart';
import 'package:alex_final_project/features/auth/login/data/models/user.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_response_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  final SharedPreferences _prefs;

  SharedPrefsHelper(this._prefs);

  //shared prefs keys
  static const String _isFirstTimeKey = 'isFirstTime';
  static const String _isLoggedInKey = 'isLoggedIn';
  static const String _userData = 'userData';

  //first time user
  set isFirstTime(bool value) => _prefs.setBool(_isFirstTimeKey, value);

  bool get isFirstTime => _prefs.getBool(_isFirstTimeKey) ?? true;

  //user logged in
  set isLoggedIn(bool value) => _prefs.setBool(_isLoggedInKey, value);

  bool get isLoggedIn => _prefs.getBool(_isLoggedInKey) ?? false;

  set userData(UserData? user) {
    var jsonData = json.encode(user?.toJson());
    _prefs.setString(_userData, jsonData);
  }

  UserData? get userData {
    String? stringData = _prefs.getString(_userData);
    debugPrint('User Data from Shared Prefs: $stringData');
    if (stringData != null) {
      var jsonData = json.decode(stringData);
      return UserData.fromJson(jsonData);
    }
    return null;
  }
}
