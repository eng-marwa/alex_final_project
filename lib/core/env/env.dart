import 'package:envied/envied.dart';
import 'package:envied_generator/envied_generator.dart';
part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'BASE_URL')
  static final String baseUrl = _Env.baseUrl;
  @EnviedField(varName: 'API_KEY')
  static final String apiKey = _Env.apiKey;

  @EnviedField(varName: 'LOGIN_END_POINT')
  static final String loginEndPoint = _Env.loginEndPoint;

  @EnviedField(varName: 'MOVIE_BASE_URL')
  static final String movieBaseUrl = _Env.movieBaseUrl;
}
