/*
  Model Repository
*/

import 'package:movie_app/features/movie_details/domain/models/movie_details.dart';

abstract class MovieDetailsRepository {
  Future<MovieDetails> getMovieDetails(int movieId);
}
