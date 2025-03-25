import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/movie_list/domain/repositories/movie_list_repository.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_event.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_state.dart';

class MovieListsBloc extends Bloc<MovieListEvent, MovieListState> {
  final MovieRepository movieRepository;

  MovieListsBloc(this.movieRepository) : super(MovieListInitial()) {
    //now playing
    on<FetchNowPlayingMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getNowPlayingMovies();
      if (result is DataSuccess) {
        final updatedCategories = Map<String, dynamic>.from(state.movieCategories!.cast<String, dynamic>());
        updatedCategories["Now Playing"] = result.data ?? [];
        emit(MovieListDone(updatedCategories));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //classic movies
    on<FetchClassicMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getClassicMovies();
      if (result is DataSuccess) {
        final updatedCategories = Map<String, dynamic>.from(state.movieCategories!.cast<String, dynamic>());
        updatedCategories["Classic"] = result.data ?? [];
        emit(MovieListDone(updatedCategories));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //oscar winning movies
    on<FetchOscarWinningMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getOscarWinningMovies();
      if (result is DataSuccess) {
        final updatedCategories = Map<String, dynamic>.from(state.movieCategories!.cast<String, dynamic>());
        updatedCategories["Oscar Winning"] = result.data ?? [];
        emit(MovieListDone(updatedCategories));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //filipino movies
    on<FetchFilipinoMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getCountryMovies();
      if (result is DataSuccess) {
        final updatedCategories = Map<String, dynamic>.from(state.movieCategories!.cast<String, dynamic>());
        updatedCategories["Classic"] = result.data ?? [];
        emit(MovieListDone(updatedCategories));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //top rated movies
    on<FetchTopRatedMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getTopRatedMovies();
      if (result is DataSuccess) {
        final updatedCategories = Map<String, dynamic>.from(state.movieCategories!.cast<String, dynamic>());
        updatedCategories["Top Rated"] = result.data ?? [];
        emit(MovieListDone(updatedCategories));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //upcoming movies
    on<FetchUpcomingMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getUpcomingMovies();
      if (result is DataSuccess) {
        final updatedCategories = Map<String, dynamic>.from(state.movieCategories!.cast<String, dynamic>());
        updatedCategories["Upcoming"] = result.data ?? [];
        emit(MovieListDone(updatedCategories));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    on<FetchAllMovieCategories>((event, emit) async {
      emit(MovieListLoading());

      try {
        final nowPlaying = await movieRepository.getNowPlayingMovies();
        final oscarWinning = await movieRepository.getOscarWinningMovies();
        final topRated = await movieRepository.getTopRatedMovies();
        final koreanMovies = await movieRepository.getCountryMovies();
        final classics = await movieRepository.getClassicMovies();

        emit(
          MovieListDone({
            "Now Playing": nowPlaying is DataSuccess ? nowPlaying.data ?? [] : [],
            "Best Picture - The Academy Awards": oscarWinning is DataSuccess ? oscarWinning.data ?? [] : [],
            "Top Rated": topRated is DataSuccess ? topRated.data ?? [] : [],
            "Korean Movies": koreanMovies is DataSuccess ? koreanMovies.data ?? [] : [],
            "Classics": classics is DataSuccess ? classics.data ?? [] : [],
          }),
        );
      } catch (e) {
        emit(MovieListError(DioException(requestOptions: RequestOptions(path: ""), error: e)));
      }
    });
  }
}
