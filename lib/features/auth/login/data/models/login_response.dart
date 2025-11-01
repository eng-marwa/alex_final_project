import 'package:alex_final_project/features/auth/login/data/models/user.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String username;
  @JsonKey(name: 'accessToken')
  final String token;
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String refreshToken;

  LoginResponse(
    this.username,
    this.token,
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.image,
    this.refreshToken,
  );

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

extension LoginResponseExtension on LoginResponse {
  LoginResponseEntity toEntity() {
    return LoginResponseEntity(
      username,
      token,
      id,
      email,
      firstName,
      lastName,
      gender,
      image,
    );
  }

  UserData toUserData() {
    return UserData(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      image: image,
    );
  }
}
