/*
  Video Repository
*/

import 'package:movie_app/core/resources/data_state.dart';

abstract class VideoRepository {
  Future<DataState<List<int>>> getNowPlayingMoviesId();
  Future<DataState<String?>> getVideoKey(int movieId);
}
