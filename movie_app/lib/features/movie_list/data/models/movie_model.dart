import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movie_list/data/models/genre_model.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  factory MovieModel({
    required int id,
    @Default(true) bool adult,
    @Default(true) bool video,
    required String backdropPath,
    required String belongsToCollection,
    required String budget,
    required String homepage,
    required String imdbId,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    @Default(0) int popularity,
    @Default(0) int revenue,
    @Default(0) int runtime,
    @Default(0) int voteAverage,
    @Default(0) int voteCount,
    required String posterPath,
    required String releaseDate,
    required String status,
    required String tagline,
    required String title,
    required List<GenreModel> genres,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);
}
