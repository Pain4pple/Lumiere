import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/movie_details/domain/repositories/movie_details_repository.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_event.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieDetailsRepository movieDetailsRepository;

  MovieDetailsBloc(this.movieDetailsRepository) : super(MovieDetailsInitial()) {
    on<FetchMovieDetails>((event, emit) async {
      emit(MovieDetailsLoading());

      final result = await movieDetailsRepository.getMovieDetails(event.movieId);
      if (result is DataSuccess) {
        emit(MovieDetailsDone(result.data!));
      } else {
        emit(MovieDetailsError(result.error!));
      }
    });
  }
}
