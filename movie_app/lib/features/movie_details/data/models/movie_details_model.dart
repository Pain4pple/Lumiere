// /*
// movie object as a
// raw response from TMdB
// */
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:movie_app/core/data/models/genre_model.dart';
// import 'package:movie_app/features/movie_list/domain/models/movie_details.dart';

// part 'movie_details_model.freezed.dart';
// part 'movie_details_model.g.dart';

// @freezed
// abstract class MovieDetailsModel with _$MovieModel {
//   factory MovieDetailsModel({
//     @Default(0) required int id,
//     @Default(true) bool adult,
//     @Default(false) bool video,
//     @JsonKey(name: 'backdrop_path') required String backdropPath,
//     @JsonKey(name: 'belongs_to_collection') required String belongsToCollection,
//     @JsonKey(name: 'homepage') required String homepage,
//     @JsonKey(name: 'imdb_id') required String imdbId,
//     @JsonKey(name: 'original_language') required String originalLanguage,
//     @JsonKey(name: 'original_title') required String originalTitle,
//     @Default('No overview available') required String overview,
//     @Default(0) int budget,
//     @Default(0) int popularity,
//     @Default(0) int revenue,
//     @Default(0) int runtime,
//     @JsonKey(name: 'vote_average') @Default(0) int voteAverage,
//     @JsonKey(name: 'vote_count') @Default(0) int voteCount,
//     @JsonKey(name: 'poster_path') String? posterPath,
//     @JsonKey(name: 'release_date') required String releaseDate,
//     required String status,
//     required String tagline,
//     required String title,
//     required List<GenreModel> genres,
//   }) = _MovieDetailsModel;

//   factory MovieDetailsModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);
// }

// extension MovieModelMapper on MovieDetails {
//   MovieDetails toEntity() {
//     return MovieDetails(
//       id: id,
//       title: title,
//       popularity: popularity,
//       posterPath: posterPath,
//       status: status,
//       backdropPath: backdropPath,
//       genres: genres,
//       video: video,
//       releaseDate: releaseDate,
//     );
//   }
// }

// // class MovieResponse {
// //   final List<MovieModel> results;

// //   MovieResponse({required this.results});

// //   factory MovieResponse.fromJson(Map<String, dynamic> json) {
// //     return MovieResponse(results: (json['results'] as List).map((movie) => MovieModel.fromJson(movie)).toList());
// //   }
// // }
