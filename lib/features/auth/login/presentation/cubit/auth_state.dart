import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@immutable
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.authenticated() = AuthSuccess;

  const factory AuthState.error(String message) = AuthError;
}
