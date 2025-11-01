// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) =>
    MoviesResponse(
      page: (json['page'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: (json['total_results'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
    );

Map<String, dynamic> _$MoviesResponseToJson(MoviesResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
  adult: json['adult'] as bool?,
  backdropPath: json['backdrop_path'] as String?,
  id: (json['id'] as num?)?.toInt(),
  originalLanguage: json['original_language'] as String?,
  originalTitle: json['original_title'] as String?,
  overview: json['overview'] as String?,
  posterPath: json['poster_path'] as String?,
  releaseDate: json['release_date'] as String?,
  title: json['title'] as String?,
  voteAverage: (json['vote_average'] as num?)?.toDouble(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
  'adult': instance.adult,
  'backdrop_path': instance.backdropPath,
  'id': instance.id,
  'original_language': instance.originalLanguage,
  'original_title': instance.originalTitle,
  'overview': instance.overview,
  'poster_path': instance.posterPath,
  'release_date': instance.releaseDate,
  'title': instance.title,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
};
