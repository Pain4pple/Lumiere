import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details.dart';

abstract class MovieDetailsState extends Equatable {
  final MovieDetails? movie;
  final DioException? error;

  const MovieDetailsState({this.movie, this.error});

  @override
  List<Object> get props => [movie!, error!];
}

//init state
class MovieDetailsInitial extends MovieDetailsState {}

//loading
class MovieDetailsLoading extends MovieDetailsState {
  const MovieDetailsLoading();
}

//done loading
class MovieDetailsDone extends MovieDetailsState {
  const MovieDetailsDone(MovieDetails movie) : super(movie: movie);
}

//error
class MovieDetailsError extends MovieDetailsState {
  const MovieDetailsError(DioException error) : super(error: error);
}
