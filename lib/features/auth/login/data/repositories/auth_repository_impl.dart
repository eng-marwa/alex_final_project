import 'package:alex_final_project/core/networking/api_result.dart';
import 'package:alex_final_project/core/storage/shared_prefs_helper.dart';
import 'package:alex_final_project/features/auth/login/data/datasources/auth_data_source.dart';
import 'package:alex_final_project/features/auth/login/data/models/login_response.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_request_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_response_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;
  final SharedPrefsHelper _sharedPrefsHelper;

  AuthRepositoryImpl(this._authDataSource, this._sharedPrefsHelper);

  @override
  Future<ApiResult<LoginResponseEntity>> login(
    LoginRequestEntity request,
  ) async {
    ApiResult<LoginResponse> result = await _authDataSource.login(
      request.toModel(),
    );
    return result.when(
      success: (data) => ApiResult.success(data.toEntity()),
      failure: (exception) => ApiResult.failure(exception),
    );
  }

  @override
  Future<void> setSignInStatus(bool isSignedIn) async {
    _sharedPrefsHelper.isLoggedIn = isSignedIn;
  }
}
