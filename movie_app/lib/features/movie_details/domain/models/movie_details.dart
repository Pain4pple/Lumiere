/*
 This is what a movie object is

_________________________________________________

  it has these properties:
  > int id;
  > int popularity;
  > int runtime;
  > String title;
  > String tagline;
  > String overview;
  > String status;
  > String backdropPath;
  > String posterPath;
  > bool video;
  > DateTime releaseDate;
  > List<Genre> genres;
  > List<ProductionCompanies> productionCompanies;

_________________________________________________

 */

import 'package:movie_app/core/domain/models/genre.dart';
import 'package:movie_app/features/movie_details/domain/models/production_company.dart';

class MovieDetails {
  final int id;
  final int popularity;
  final int runtime;
  final String title;
  final String tagline;
  final String overview;
  final String status;
  final String backdropPath;
  final String posterPath;
  final bool video;
  final DateTime releaseDate;
  final List<Genre> genres;
  final List<ProductionCompany> productionCompanies;

  MovieDetails({
    required this.id,
    required this.popularity,
    required this.title,
    required this.status,
    required this.backdropPath,
    required this.posterPath,
    required this.video,
    required this.releaseDate,
    required this.runtime,
    required this.tagline,
    required this.overview,
    required this.genres,
    required this.productionCompanies,
  });
}
