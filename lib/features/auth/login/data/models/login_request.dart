import 'package:json_annotation/json_annotation.dart';
part 'login_request.g.dart';
@JsonSerializable()
class LoginRequest {
  @JsonKey(name: 'username')
  final String userName;
  @JsonKey(name: 'password')
  final String passWord;

  LoginRequest({required this.userName, required this.passWord});

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
