// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      json['username'] as String,
      json['accessToken'] as String,
      (json['id'] as num).toInt(),
      json['email'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['gender'] as String,
      json['image'] as String,
      json['refreshToken'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'accessToken': instance.token,
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
      'refreshToken': instance.refreshToken,
    };
