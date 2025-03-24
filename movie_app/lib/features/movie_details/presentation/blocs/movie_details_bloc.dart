import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/movie_details/domain/repositories/movie_details_repository.dart';
import 'movie_details_event.dart';
import 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieDetailsRepository movieDetailsRepository;

  MovieDetailsBloc(this.movieDetailsRepository) : super(MovieDetailsInitial()) {
    on<FetchMovieDetails>((event, emit) async {
      emit(MovieDetailsLoading());
      log('Fetching Movie Details');
      final movieResult = await movieDetailsRepository.getMovieDetails(event.movieId);
      log('Fetched $movieResult');

      log('Fetching Credit Details');
      final creditsResult = await movieDetailsRepository.getMovieCredits(event.movieId);
      log('Fetched $creditsResult');

      if (movieResult is DataSuccess && creditsResult is DataSuccess) {
        final movie = movieResult.data!;
        final credits = creditsResult.data!;
        emit(MovieDetailsDone(movie, credits.cast, credits.crew));
      } else {
        emit(MovieDetailsError(movieResult is DataFailed ? movieResult.error! : creditsResult.error!));
      }
    });
  }
}
