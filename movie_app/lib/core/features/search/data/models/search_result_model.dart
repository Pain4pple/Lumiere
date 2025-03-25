import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';

@freezed
abstract class SearchResultModel with _$SearchResultModel {
  factory SearchResultModel({
    @Default(0) @JsonKey(name: 'page') int page,
    @Default(0) @JsonKey(name: 'total_pages') int totalPages,
    @Default(0) @JsonKey(name: 'total_results') int totalResults,
    @Default([]) @JsonKey(name: 'results') List<MovieListItemModel>? results,
  }) = _SearchResultModel;
  factory SearchResultModel.fromJson(Map<String, dynamic> json) => _$SearchResultModelFromJson(json);
}

@freezed
abstract class MovieListItemModel with _$MovieListItemModel {
  factory MovieListItemModel({
    @Default(true) bool adult,
    @Default("") @JsonKey(name: 'backdrop_path') String backdropPath,
    @Default([]) @JsonKey(name: 'genre_ids') List<int> genreIds,
    @Default(0) int id,
    @Default("") @JsonKey(name: 'original_language') String originalLanguage,
    @Default("") @JsonKey(name: 'original_title') String originalTitle,
    @Default('No overview found') String overview,
    @Default(0) double popularity,
    @Default('') @JsonKey(name: 'poster_path') String posterPath,
    @Default("") @JsonKey(name: 'release_date') String releaseDate,
    @Default("") String title,
    @Default(true) bool video,
    @Default(0) @JsonKey(name: 'vote_average') double voteAverage,
    @Default(0) @JsonKey(name: 'vote_count') int voteCount,
  }) = _MovieListItemModel;

  factory MovieListItemModel.fromJson(Map<String, dynamic> json) => _$MovieListItemModelFromJson(json);
}
