import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class UserData {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String? image;

  UserData({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    this.image,
  });


  Map<String,dynamic> toJson() => _$UserDataToJson(this);
  factory UserData.fromJson(Map<String,dynamic> json) => _$UserDataFromJson(json);
}
