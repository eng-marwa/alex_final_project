import 'package:alex_final_project/features/auth/login/data/models/login_response.dart';
import 'package:alex_final_project/features/auth/login/data/models/user.dart';

class LoginResponseEntity {
  final String username;
  final String token;
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;

  LoginResponseEntity(this.username,
      this.token,
      this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.gender,
      this.image,);
}
extension LoginResponseEntityEx on LoginResponseEntity {
  UserData toUserData() {
    return UserData(id: id,
        email: email,
        firstName: firstName,
        lastName: lastName,
        gender: gender,
        image: image);
  }
}