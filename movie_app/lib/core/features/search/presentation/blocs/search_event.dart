import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
  @override
  List<Object> get props => [];
}

//fetch movies based on keyword
class FetchSearchResults extends SearchEvent {
  final String keyword;

  const FetchSearchResults(this.keyword);

  @override
  List<Object> get props => [keyword];
}
