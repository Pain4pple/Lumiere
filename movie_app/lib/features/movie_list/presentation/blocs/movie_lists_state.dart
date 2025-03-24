// ignore_for_file: annotate_overrides, overridden_fields

import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

abstract class MovieListState extends Equatable {
  final Map<String, dynamic>? movieCategories;
  final DioException? error;

  const MovieListState({this.movieCategories, this.error});

  @override
  List<Object> get props => [movieCategories!, error!];
}

//init state
class MovieListInitial extends MovieListState {}

//loading
class MovieListLoading extends MovieListState {
  const MovieListLoading();
}

//done loading
class MovieListDone extends MovieListState {
  final Map<String, dynamic> movieCategories;

  const MovieListDone(this.movieCategories) : super();

  @override
  List<Object> get props => [movieCategories];
}

//error
class MovieListError extends MovieListState {
  const MovieListError(DioException error) : super(error: error);
}
