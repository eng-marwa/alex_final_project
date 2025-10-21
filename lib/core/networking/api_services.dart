import 'package:alex_final_project/core/env/env.dart';
import 'package:alex_final_project/core/networking/api_exception.dart';
import 'package:alex_final_project/core/networking/api_result.dart';
import 'package:alex_final_project/features/auth/login/data/models/login_request.dart';
import 'package:alex_final_project/features/auth/login/data/models/login_response.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  ApiServices(this._dio);



  Future<ApiResult<LoginResponse>> login(LoginRequest request) async {
    try {
      Response response = await _dio.post(
        Env.loginEndPoint,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return ApiResult.success(LoginResponse.fromJson(response.data));
      } else {
        return ApiResult.failure(
          ApiException(
            message: response.statusMessage ?? "Unknown error",
            code: response.statusCode,
          ),
        );
      }
    } on DioException catch (dioException) {
      return ApiResult.failure(ApiException.fromDioException(dioException));
    } catch (e) {
      return ApiResult.failure(
        ApiException(message: e.toString(), code: 3000),
      );
    }
  }
}

/*
DartZ
Freezed
Custom class
 */
