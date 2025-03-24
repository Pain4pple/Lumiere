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
        emit(MovieListDone(result.data ?? []));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //now playing with videos
    on<FetchNowPlayingMoviesWithVideos>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getNowPlayingWithVideos();
      if (result is DataSuccess) {
        emit(MovieListDone(result.data ?? []));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //classic movies
    on<FetchClassicMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getClassicMovies();
      if (result is DataSuccess) {
        emit(MovieListDone(result.data ?? []));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //oscar winning movies
    on<FetchOscarWinningMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getOscarWinningMovies();
      if (result is DataSuccess) {
        emit(MovieListDone(result.data ?? []));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //filipino movies
    on<FetchFilipinoMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getCountryMovies();
      if (result is DataSuccess) {
        emit(MovieListDone(result.data ?? []));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //top rated movies
    on<FetchTopRatedMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getTopRatedMovies();
      if (result is DataSuccess) {
        emit(MovieListDone(result.data ?? []));
      } else {
        emit(MovieListError(result.error!));
      }
    });

    //upcoming movies
    on<FetchUpcomingMovies>((event, emit) async {
      emit(MovieListLoading());

      final result = await movieRepository.getUpcomingMovies();
      if (result is DataSuccess) {
        emit(MovieListDone(result.data ?? []));
      } else {
        emit(MovieListError(result.error!));
      }
    });
  }
}
