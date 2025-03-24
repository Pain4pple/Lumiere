/*
  Video Repository
*/

import 'package:movie_app/core/resources/data_state.dart';

abstract class VideoRepository {
  Future<DataState<String?>> getVideoKey(int movieId);
}
