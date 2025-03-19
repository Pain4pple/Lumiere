/*
 This is what a movie object is

_________________________________________________

  it has these properties:
  > int id;
  > int popularity;
  > String title;
  > String status;
  > String backdropPath;
  > String posterPath;
  > bool video;
  > DateTime releaseDate;
  > Array genre;

_________________________________________________

 */
import 'package:movie_app/features/movie_list/domain/models/genre.dart';

class Movie {
  final int id;
  final int popularity;
  final String title;
  final String status;
  final String backdropPath;
  final String posterPath;
  final bool video;
  final DateTime releaseDate;
  final List<Genre> genre;

  Movie({
    required this.id,
    required this.popularity,
    required this.title,
    required this.status,
    required this.backdropPath,
    required this.posterPath,
    required this.video,
    required this.releaseDate,
    required this.genre,
  });
}
