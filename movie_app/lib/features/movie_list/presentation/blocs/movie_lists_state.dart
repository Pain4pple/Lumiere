import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/domain/models/movie_list.dart';

abstract class MovieListState extends Equatable {
  final List<MovieEntity>? movies;
  final DioException? error;

  const MovieListState({this.movies, this.error});

  @override
  List<Object> get props => [movies!, error!];
}

//init state
class MovieListInitial extends MovieListState {}

//loading
class MovieListLoading extends MovieListState {
  const MovieListLoading();
}

//done loading
class MovieListDone extends MovieListState {
  const MovieListDone(List<MovieEntity> movies) : super(movies: movies);
}

//error
class MovieListError extends MovieListState {
  const MovieListError(DioException error) : super(error: error);
}
