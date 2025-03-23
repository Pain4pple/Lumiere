/*
  Model Repository
*/

import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details.dart';

abstract class MovieDetailsRepository {
  Future<DataState<MovieDetails>> getMovieDetails(int movieId);
}
