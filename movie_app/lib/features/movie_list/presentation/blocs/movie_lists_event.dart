import 'package:equatable/equatable.dart';

abstract class MovieListEvent extends Equatable {
  @override
  List<Object> get props => [];
}

//fetch now playing movies
class FetchNowPlayingMovies extends MovieListEvent {}

//fetch specific now playing movies that has videos
class FetchNowPlayingMoviesWithVideos extends MovieListEvent {}

//fetch popular movies
class FetchPopularMovies extends MovieListEvent {}

//fetch classic movies
class FetchClassicMovies extends MovieListEvent {}

//fetch oscar winning movies
class FetchOscarWinningMovies extends MovieListEvent {}

//fetch filipino movies
class FetchFilipinoMovies extends MovieListEvent {}

//fetch top rated movies
class FetchTopRatedMovies extends MovieListEvent {}

//fetch upcoming movies
class FetchUpcomingMovies extends MovieListEvent {}
