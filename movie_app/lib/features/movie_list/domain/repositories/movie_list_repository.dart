/*
  Model Repository
*/

import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/core/domain/models/movie_list.dart';

abstract class MovieRepository {
  Future<DataState<List<MovieEntity>>> getNowPlayingMovies();
  Future<DataState<List<MovieEntity>>> getNowPlayingWithVideos();
  Future<DataState<List<MovieEntity>>> getOscarWinningMovies();
  // Future<DataState<List<Video>>> getMovieVideos();
  Future<DataState<List<MovieEntity>>> getClassicMovies();
  Future<DataState<List<MovieEntity>>> getTrendingInPh();
  Future<DataState<List<MovieEntity>>> getTopRatedMovies();
  Future<DataState<List<MovieEntity>>> getUpcomingMovies();
}
