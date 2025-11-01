import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  final storage = FlutterSecureStorage();

  SecureStorageHelper._();

  static final SecureStorageHelper instance = SecureStorageHelper._();

  //keys
  static const String _tokenKey = 'token';

  void saveToken(String token) async {
    await storage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await storage.read(key: _tokenKey);
  }
}
