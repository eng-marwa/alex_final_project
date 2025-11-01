import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_response.g.dart';
@JsonSerializable()
class MoviesResponse {
  final int page;
  final List<Movie> results;
  @JsonKey(name: 'total_results')
  final int totalResults;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  MoviesResponse({
    required this.page,
    required this.results,
    required this.totalResults,
    required this.totalPages,
  });

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);
}

@JsonSerializable()
class Movie {
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final int? id;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  final String? title;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  Movie({
    this.adult,
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);
}
