import 'package:alex_final_project/features/auth/login/domain/entities/login_response_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/repositories/auth_repository.dart';

class SaveUserDataUseCase {
  final AuthRepository _repository;

  SaveUserDataUseCase(this._repository);

  void call(LoginResponseEntity response) {
    _repository.saveUserData(response);
  }
}
