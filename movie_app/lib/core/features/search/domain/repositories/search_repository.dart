import 'package:movie_app/core/features/search/domain/models/search_result_model.dart';
import 'package:movie_app/core/resources/data_state.dart';

abstract class SearchRepository {
  Future<DataState<List<SearchMovieEntity>>> getSearchResults(String keyword);
}
