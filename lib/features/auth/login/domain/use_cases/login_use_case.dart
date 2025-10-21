import 'package:alex_final_project/core/networking/api_result.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_request_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_response_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<ApiResult<LoginResponseEntity>> call(LoginRequestEntity entity) {
    return _authRepository.login(entity);
  }
}
