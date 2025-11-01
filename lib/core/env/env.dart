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

  @EnviedField(varName: 'TOP_RATED_END_POINT')
  static final String topRatedEndPoint = _Env.topRatedEndPoint;

  @EnviedField(varName: 'POPULAR_END_POINT')
  static final String popularEndPoint = _Env.popularEndPoint;

  @EnviedField(varName: 'NOW_PLAYING_END_POINT')
  static final String nowPlayingEndPoint = _Env.nowPlayingEndPoint;

  @EnviedField(varName: 'UPCOMING_END_POINT')
  static final String upcomingEndPoint = _Env.upcomingEndPoint;
}
