import 'package:alex_final_project/core/networking/api_result.dart';
import 'package:alex_final_project/core/networking/api_services.dart';
import 'package:alex_final_project/features/auth/login/data/models/login_request.dart';
import 'package:alex_final_project/features/auth/login/data/models/login_response.dart';

class AuthDataSource {
  final ApiServices _apiServices;

  AuthDataSource(this._apiServices);

  Future<ApiResult<LoginResponse>> login(LoginRequest request) {
    return _apiServices.login(request);
  }
}
