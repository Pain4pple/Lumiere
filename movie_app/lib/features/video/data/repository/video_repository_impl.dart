import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movie_app/core/data/models/movie_list_model.dart';
import 'package:movie_app/core/data/models/video_model.dart';
import 'package:movie_app/core/data/services/tmdb_api_service.dart';
import 'package:movie_app/core/domain/models/movie_list.dart';
import 'package:movie_app/core/domain/models/video.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/video/domain/repository/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  final TmdbApiService _tmdbApiService;

  VideoRepositoryImpl(this._tmdbApiService);

  @override
  Future<DataState<List<int>>> getNowPlayingMoviesId() async {
    try {
      final httpResponse = await _tmdbApiService.getNowPlayingMovies(apiKey: apiKey);
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final movies = toDomainResults(httpResponse.data);
        return DataSuccess(movies.take(7).map((movie) => movie.id).toList());
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e, stackTrace) {
      log("API Call Failed: $e");
      log("Stack Trace: $stackTrace");
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<String?>> getVideoKey(int movieId) async {
    try {
      final httpResponse = await _tmdbApiService.getMovieVideos(movieId, apiKey);
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final videos = toDomainVideo(httpResponse.data);
        final trailers = videos.where((video) => video.type == "Trailer" && video.site == "YouTube").toList();
        log("Trailer: ${trailers.isNotEmpty ? trailers.first.key : null}");
        return DataSuccess(trailers.isNotEmpty ? trailers.first.key : null);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e, stackTrace) {
      log("API Call Failed: $e");
      log("Stack Trace: $stackTrace");
      return DataFailed(e);
    }
  }

  //this conversion is specific for movie lists that returns "results" to encase individual movies
  List<MovieEntity> toDomainResults(MovieListModel model) {
    final movieEntity =
        model.results
            .map(
              (e) => MovieEntity(
                adult: e.adult,
                video: e.video,
                genreIds: e.genreIds,
                id: e.id,
                overview: e.overview,
                posterPath: e.posterPath,
                releaseDate: e.releaseDate,
                title: e.title,
                voteAverage: e.voteAverage,
              ),
            )
            .toList();
    return movieEntity;
  }

  //this conversion is specific for movie lists that returns "results" to encase individual movies
  List<Video> toDomainVideo(VideoListModel video) {
    final videoEntity = video.results.map((e) => Video(key: e.key, id: e.id, site: e.site, type: e.type)).toList();
    return videoEntity;
  }
}
