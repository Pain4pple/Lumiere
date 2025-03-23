abstract class MovieDetailsEvent {}

//fetch now playing movies
class FetchMovieDetails extends MovieDetailsEvent {
  final int movieId;
  FetchMovieDetails(this.movieId);
}
