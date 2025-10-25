import 'package:alex_final_project/core/networking/api_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';
@freezed
abstract class ApiResult<T> with _$ApiResult<T>{
  const factory ApiResult.success(T data) = ApiSuccess<T>;
  const factory ApiResult.failure(ApiException exception) = ApiFailure<T>;

}

