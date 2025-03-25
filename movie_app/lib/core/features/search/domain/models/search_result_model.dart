class SearchResultEntity {
  final int page;
  final int totalPages;
  final int totalResults;
  final List<SearchMovieEntity> results;

  SearchResultEntity({required this.page, required this.totalPages, required this.totalResults, required this.results});
}

class SearchMovieEntity {
  final int id;
  final bool adult;
  final bool video;
  final String title;
  final String overview;
  final String posterPath;
  final double voteAverage;
  final String releaseDate;
  final List<int> genreIds;

  const SearchMovieEntity({
    required this.id,
    required this.adult,
    required this.video,
    required this.genreIds,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
    required this.releaseDate,
  });
}
