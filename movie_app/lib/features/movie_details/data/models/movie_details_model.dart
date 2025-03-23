/*
  movie details object as a
  raw response from TMdB
*/
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/core/data/models/genre_model.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
abstract class MovieDetailsModel with _$MovieDetailsModel {
  factory MovieDetailsModel({
    required int id,
    @Default(true) bool adult,
    @Default(false) bool video,
    @Default('') @JsonKey(name: 'backdrop_path') String? backdropPath,
    @Default('') @JsonKey(name: 'homepage') String? homepage,
    @Default('') @JsonKey(name: 'imdb_id') String? imdbId,
    @Default('') @JsonKey(name: 'original_language') String? originalLanguage,
    @Default('') @JsonKey(name: 'original_title') String? originalTitle,
    @Default('') @Default('No overview available') String? overview,
    @Default(0) int budget,
    @Default(0) int popularity,
    @Default(0) int revenue,
    @Default(0) int runtime,
    @Default(0) @JsonKey(name: 'vote_average') int voteAverage,
    @Default(0) @JsonKey(name: 'vote_count') int voteCount,
    @Default('') @JsonKey(name: 'poster_path') String? posterPath,
    @Default('') @JsonKey(name: 'release_date') String? releaseDate,
    @Default('') String? status,
    @Default('') String? tagline,
    @Default('') String? title,
    List<GenreModel>? genres,
    List<ProductionCompanyModel>? productionCompanies,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) => _$MovieDetailsModelFromJson(json);
}

@freezed
abstract class ProductionCompanyModel with _$ProductionCompanyModel {
  factory ProductionCompanyModel({
    required int id,
    @JsonKey(name: 'poster_path') String? logoPath,
    required String name,
    @JsonKey(name: 'origin_country') String? originCountry,
  }) = _ProductionCompanyModel;
  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) => _$ProductionCompanyModelFromJson(json);
}
