import 'package:dio/dio.dart';

class ApiException {
  final String message;
  final int? code;

  ApiException({required this.message, this.code});

  factory ApiException.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
        return ApiException(message: "Connection Timeout. Please try again.");
      case DioExceptionType.badCertificate:
        return ApiException(
          message: "Bad Certificate. Please contact support.",
        );
      case DioExceptionType.connectionError:
        return ApiException(message: "Connection Error. Please try again.");
      case DioExceptionType.cancel:
        return ApiException(message: "Request Cancelled. Please try again.");
      case DioExceptionType.badResponse:
        return ApiException(
          message: dioException.response?.data,
          code: dioException.response?.statusCode,
        );
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') ?? false) {
          return ApiException(
            message:
                "No Internet Connection. Please check your connection and try again.",
          );
        }
        return ApiException(
          message: "Something went wrong. Please try again.",
          code: 1000,
        );
      default:
        return ApiException(
          message: "Something went wrong. Please try again.",
          code: 2000,
        );
    }
  }
}
