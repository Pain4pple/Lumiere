import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movie_app/core/data/services/tmdb_api_service.dart';
import 'package:movie_app/core/features/search/data/models/search_result_model.dart';
import 'package:movie_app/core/features/search/domain/models/search_result_model.dart';
import 'package:movie_app/core/features/search/domain/repositories/search_repository.dart';
import 'package:movie_app/core/resources/data_state.dart';

class SearchRepositoryImpl implements SearchRepository {
  final TmdbApiService _tmdbApiService;

  SearchRepositoryImpl(this._tmdbApiService);

  @override
  Future<DataState<List<SearchMovieEntity>>> getSearchResults(String keyword) async {
    try {
      log("Attempting to search for $keyword");
      final httpResponse = await _tmdbApiService.searchKeyword(keyword, apiKey!);
      log("$keyword results: ${httpResponse.data}");
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final List<SearchMovieEntity>? detailedMovies = toDomainResults(httpResponse.data);

        return DataSuccess(detailedMovies!);
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
  List<SearchMovieEntity>? toDomainResults(SearchResultModel model) {
    final movieEntity =
        model.results
            ?.map(
              (e) => SearchMovieEntity(
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
