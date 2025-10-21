import 'package:alex_final_project/core/networking/api_result.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_request_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/entities/login_response_entity.dart';
import 'package:alex_final_project/features/auth/login/domain/use_cases/login_use_case.dart';
import 'package:alex_final_project/features/auth/login/domain/use_cases/set_sign_in_status_use_case.dart';
import 'package:alex_final_project/features/auth/login/presentation/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase _loginUseCase;
  final SetSignInStatusUseCase _inStatusUseCase;

  AuthCubit(this._loginUseCase, this._inStatusUseCase) : super(AuthInitial());

  Future<void> login(String username, String password) async {
    emit(AuthLoading());
    ApiResult<LoginResponseEntity> result = await _loginUseCase(
      LoginRequestEntity(username, password),
    );
    result.when(
      success: (data) {
        _inStatusUseCase(true);
        emit(AuthSuccess());
      },
      failure: (exception) {
        emit(AuthError(exception.message));
      },
    );
  }
}
