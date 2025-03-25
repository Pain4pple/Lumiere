import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/features/search/domain/repositories/search_repository.dart';
import 'package:movie_app/core/features/search/presentation/blocs/search_event.dart';
import 'package:movie_app/core/features/search/presentation/blocs/search_state.dart';
import 'package:movie_app/core/resources/data_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository searchRepository;

  SearchBloc(this.searchRepository) : super(SearchInitial()) {
    on<FetchSearchResults>((event, emit) async {
      emit(SearchLoading());
      log('Fetching Movies');
      final searchResult = await searchRepository.getSearchResults(event.keyword);
      log('Fetched $searchResult');

      if (searchResult is DataSuccess) {
        final search = searchResult.data;
        emit(SearchDone(search));
      } else {
        emit(SearchError(searchResult.error!));
      }
    });
  }
}
