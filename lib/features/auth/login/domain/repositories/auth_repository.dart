import 'package:alex_final_project/core/networking/api_result.dart';
import 'package:alex_final_project/features/auth/login/data/models/login_response.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_request_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_response_entity.dart';

abstract class AuthRepository {
  Future<ApiResult<LoginResponseEntity>> login(LoginRequestEntity request);
  Future<void> setSignInStatus(bool isSignedIn);
  void saveUserData(LoginResponseEntity user);
}