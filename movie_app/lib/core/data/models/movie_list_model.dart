import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_model.freezed.dart';
part 'movie_list_model.g.dart';

@freezed
abstract class MovieListModel with _$MovieListModel {
  factory MovieListModel({
    @JsonKey(name: 'dates') Dates? dates,
    @Default(1) int page,
    @Default([]) List<MovieListItemModel> results,
    @Default([]) List<MovieListItemModel> items,
    @Default(0) @JsonKey(name: 'total_pages') int totalPages,
    @Default(0) @JsonKey(name: 'total_results') int totalResults,
  }) = _MovieListModel;

  factory MovieListModel.fromJson(Map<String, dynamic> json) => _$MovieListModelFromJson(json);
}

@freezed
abstract class Dates with _$Dates {
  factory Dates({required String maximum, required String minimum}) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
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
