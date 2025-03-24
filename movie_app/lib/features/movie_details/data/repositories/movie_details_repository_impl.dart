import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movie_app/core/data/services/tmdb_api_service.dart';
import 'package:movie_app/core/domain/models/genre.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/movie_details/data/models/movie_details_model.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details.dart';
import 'package:movie_app/features/movie_details/domain/models/production_company.dart';
import 'package:movie_app/features/movie_details/domain/repositories/movie_details_repository.dart';

class MovieDetailsRepositoryImpl implements MovieDetailsRepository {
  final TmdbApiService _tmdbApiService;

  MovieDetailsRepositoryImpl(this._tmdbApiService);
  @override
  //gets specific movie details using movie ID
  Future<DataState<MovieDetails>> getMovieDetails(int movieId) async {
    try {
      log("Searching movie ID: $movieId");
      final httpResponse = await _tmdbApiService.getMovieDetails(movieId, apiKey!);
      log("Movie Details: ${httpResponse.data}");
      if (httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == 200) {
        final movieDetails = toDomain(httpResponse.data);
        return DataSuccess(movieDetails);
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

  //to convert data model to domain model
  MovieDetails toDomain(MovieDetailsModel movie) {
    return MovieDetails(
      video: movie.video,
      id: movie.id,
      overview: movie.overview ?? "No overview found",
      posterPath: movie.posterPath ?? "",
      releaseDate: movie.releaseDate != null ? (DateTime.tryParse(movie.releaseDate!) ?? DateTime(1970, 1, 1)) : DateTime(1970, 1, 1),
      title: movie.title ?? "Untitled",
      backdropPath: movie.backdropPath ?? "",
      genres: (movie.genres ?? []).map((e) => Genre(id: e.id, name: e.name)).toList(),
      popularity: movie.popularity,
      voteAverage: movie.voteAverage,
      productionCompanies:
          (movie.productionCompanies ?? [])
              .map((e) => ProductionCompany(id: e.id, name: e.name, logoPath: e.logoPath ?? "", originCountry: e.originCountry ?? ""))
              .toList(),
      runtime: movie.runtime,
      status: movie.status ?? "Unknown",
      tagline: movie.tagline ?? "",
    );
  }
}
