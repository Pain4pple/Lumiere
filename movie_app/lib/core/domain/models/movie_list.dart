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
  > List<Genre> genres;

_________________________________________________

 */

import 'package:equatable/equatable.dart';

class MovieList {
  final List<MovieEntity> movies;
  // final List<DateEntity> dates;
  final int page;
  final int totalPages;
  final int totalResults;

  const MovieList({required this.movies, required this.page, required this.totalPages, required this.totalResults});

  @override
  List<Object?> get props => [movies, page, totalPages, totalResults];
}

class DateEntity {
  final String maximum;
  final String minimum;

  DateEntity({required this.maximum, required this.minimum});

  @override
  List<Object?> get props => [maximum, minimum];
}

class MovieEntity {
  final int id;
  final bool adult;
  final bool video;
  final String title;
  final String overview;
  final String posterPath;
  final double voteAverage;
  final String releaseDate;
  final List<int> genreIds;

  const MovieEntity({
    required this.id,
    required this.adult,
    required this.video,
    required this.genreIds,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [id, adult, title, overview, posterPath, voteAverage, releaseDate, genreIds];
}
