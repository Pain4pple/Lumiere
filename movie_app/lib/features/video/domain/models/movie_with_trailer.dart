class MovieWithTrailer {
  final int id;
  final String title;
  final String posterPath;
  final String overview;
  final String? videoKey;

  MovieWithTrailer({required this.overview, required this.id, required this.title, required this.posterPath, this.videoKey});
}
