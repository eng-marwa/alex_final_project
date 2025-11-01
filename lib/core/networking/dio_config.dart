import 'dart:io';

import 'package:alex_final_project/core/env/env.dart';
import 'package:alex_final_project/core/storage/secure_storage_helper.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/services.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfig {
  DioConfig._();

  static final DioConfig instance = DioConfig._();
  static final Duration _timeOut = Duration(seconds: 15);
  static SecurityContext? _securityContext;

  Future<Dio> getDio() async {
    await loadCertificateForSSLPinning();
    final client = HttpClient(context: _securityContext);
    Dio dio = Dio()
      ..options.baseUrl = Env.baseUrl
      ..options.headers = {'Content-Type': 'application/json'}
      ..options.connectTimeout = _timeOut
      ..options.receiveTimeout = _timeOut
      ..options.responseType = ResponseType.json
      ..httpClientAdapter = IOHttpClientAdapter(createHttpClient: () => client)
      ..interceptors.addAll([
        AuthInterceptor(),
        PrettyDioLogger(requestBody: true),
      ]);
    return dio;
  }

  static Future<void> loadCertificateForSSLPinning() async {
    final byteData = await PlatformAssetBundle().load(
      'assets/cert/certification.pem',
    );
    SecurityContext securityContext = SecurityContext(withTrustedRoots: false);
    securityContext.setTrustedCertificatesBytes(byteData.buffer.asUint8List());
    _securityContext = securityContext;
  }
}

class AuthInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String? token = await SecureStorageHelper.instance.getToken();
    if (options.path != Env.loginEndPoint) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}
