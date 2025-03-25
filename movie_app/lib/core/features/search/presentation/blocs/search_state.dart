import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/features/search/domain/models/search_result_model.dart';

abstract class SearchState extends Equatable {
  final List<SearchMovieEntity>? searchResults;
  final DioException? error;

  const SearchState({this.searchResults, this.error});

  @override
  List<Object?> get props => [searchResults, error];
}

//init state
class SearchInitial extends SearchState {}

//loading
class SearchLoading extends SearchState {
  const SearchLoading();
}

//done loading
class SearchDone extends SearchState {
  const SearchDone(List<SearchMovieEntity>? searchResults) : super(searchResults: searchResults);
}

//error
class SearchError extends SearchState {
  const SearchError(DioException error) : super(error: error);
}
