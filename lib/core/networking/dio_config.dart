import 'package:alex_final_project/core/env/env.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfig {
  DioConfig._();

  static final DioConfig instance = DioConfig._();
  static final Duration _timeOut = Duration(seconds: 15);

  Dio getDio() {
    Dio dio = Dio()
      ..options.baseUrl = Env.baseUrl
      ..options.headers = {'Content-Type': 'application/json'}
      ..options.connectTimeout = _timeOut
      ..options.receiveTimeout = _timeOut
      ..options.responseType = ResponseType.json
      ..interceptors.addAll([
        AuthInterceptor(),
        PrettyDioLogger(requestBody: true),
      ]);
    return dio;
  }
}

class AuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String token = '';
    if (options.path != Env.loginEndPoint) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}
