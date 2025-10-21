import 'package:alex_final_project/features/auth/login/data/models/login_request.dart';

class LoginRequestEntity {
  final String username;
  final String password;

  LoginRequestEntity(this.username, this.password);
}

extension LoginRequestEntityExtension on LoginRequestEntity {
  LoginRequest toModel() {
    return LoginRequest(userName: username, passWord: password);
  }
}
