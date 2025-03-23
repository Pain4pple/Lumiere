import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movie_app/core/data/models/movie_list_model.dart';
import 'package:movie_app/core/data/services/tmdb_api_service.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/core/domain/models/movie_list.dart';
import 'package:movie_app/features/movie_list/domain/repositories/movie_list_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final TmdbApiService _tmdbApiService;

  MovieRepositoryImpl(this._tmdbApiService);
  @override
  Future<DataState<List<MovieEntity>>> getNowPlayingMovies() async {
    try {
      //returns a movie list object, we must extract the list of movie entity
      final httpResponse = await _tmdbApiService.getNowPlayingMovies(apiKey: apiKey);
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final List<MovieEntity> movieEntities = toDomainResults(httpResponse.data);
        return DataSuccess(movieEntities);
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
  Future<DataState<List<MovieEntity>>> getNowPlayingWithVideos() async {
    try {
      //returns a movie list object, we must extract the list of movie entity
      final httpResponse = await _tmdbApiService.getNowPlayingMovies(apiKey: apiKey);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final List<MovieEntity> movieEntities = toDomainResults(httpResponse.data);
        final moviesWithVideos = movieEntities.where((movieModel) => movieModel.video).toList();
        return DataSuccess(moviesWithVideos);
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
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  //get videos
  // @override
  // Future<DataState<List<Video>>> getMovieVideos() async {
  //   try {
  //     final httpResponse = await _tmdbApiService.getNowPlayingMovies(TMDB_API_KEY: TMDB_API_KEY);
  //     if (httpResponse.response.statusCode == HttpStatus.ok) {
  //       final movies = httpResponse.data.map((movieModel) => movieModel.toEntity()).toList();
  //       return DataSuccess(movies);
  //     } else {
  //       return DataFailed(
  //         DioException(
  //           error: httpResponse.response.statusMessage,
  //           response: httpResponse.response,
  //           type: DioExceptionType.badResponse,
  //           requestOptions: httpResponse.response.requestOptions,
  //         ),
  //       );
  //     }
  //   } on DioException catch (e) {
  //     return DataFailed(e);
  //   }
  // }

  @override
  Future<DataState<List<MovieEntity>>> getClassicMovies() async {
    try {
      final httpResponse = await _tmdbApiService.getClassicMovies(apiKey, "popularity.desc", "1970-01-01");
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final List<MovieEntity> movieEntities = toDomainResults(httpResponse.data);
        return DataSuccess(movieEntities);
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
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<MovieEntity>>> getTopRatedMovies() async {
    try {
      final httpResponse = await _tmdbApiService.getTopRatedMovies(apiKey: apiKey);
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final List<MovieEntity> movieEntities = toDomainResults(httpResponse.data);
        return DataSuccess(movieEntities);
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
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<MovieEntity>>> getTrendingInPh() async {
    try {
      final httpResponse = await _tmdbApiService.getFilipinoMovies(apiKey, "popularity.desc", "tl");
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final List<MovieEntity> movieEntities = toDomainResults(httpResponse.data);
        return DataSuccess(movieEntities);
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
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<MovieEntity>>> getOscarWinningMovies() async {
    try {
      final httpResponse = await _tmdbApiService.getBestPictures(apiKey);
      log("Oscar Movie Response: ${httpResponse.data}");
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final List<MovieEntity> movieEntities = toDomainItems(httpResponse.data);
        return DataSuccess(movieEntities);
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
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<MovieEntity>>> getUpcomingMovies() async {
    try {
      final httpResponse = await _tmdbApiService.getUpcomingMovies(apiKey: apiKey);
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final List<MovieEntity> movieEntities = toDomainResults(httpResponse.data);
        return DataSuccess(movieEntities);
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
    } on DioException catch (e) {
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

  //this conversion is specific for movie lists that returns "items" to encase individual movies (e.g. The Best Picture List)
  List<MovieEntity> toDomainItems(MovieListModel model) {
    final movieEntity =
        model.items
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
}
