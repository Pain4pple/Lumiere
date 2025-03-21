import 'package:movie_app/core/data/models/movie_list_model.dart';
import 'package:movie_app/core/data/models/video_model.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'tmdb_api_service.g.dart';

final String? apiKey = dotenv.env['TMDB_API_KEY'];

@RestApi(baseUrl: tmdbBaseURL)
abstract class TmdbApiService {
  factory TmdbApiService(Dio dio) = _TmdbApiService;

  //get movies playing in theaters
  @GET('/movie/now_playing')
  Future<HttpResponse<MovieListModel>> getNowPlayingMovies({
    @Query("api_key") String? apiKey,
    @Query('language') String language = language,
    @Query('page') int page = page,
  });

  //get trailers for movies
  @GET('/movie/{movie_id}/videos')
  Future<HttpResponse<List<VideoModel>>> getMovieVideos(@Path('movie_id') int movieId, @Query('api_key') String? apiKey);

  //get top rated movies
  @GET('/movie/popular')
  Future<HttpResponse<MovieListModel>> getPopularMovies({
    @Query("api_key") String? apiKey,
    @Query('language') String language = language,
    @Query('page') int page = page,
  });

  //get top rated movies
  @GET('/movie/top_rated')
  Future<HttpResponse<MovieListModel>> getTopRatedMovies({
    @Query("api_key") String? apiKey,
    @Query('language') String language = language,
    @Query('page') int page = page,
  });

  //get top rated movies
  @GET('/movie/upcoming')
  Future<HttpResponse<MovieListModel>> getUpcomingMovies({
    @Query("api_key") String? apiKey,
    @Query('language') String language = language,
    @Query('page') int page = page,
  });

  @GET("/discover/movie")
  Future<HttpResponse<MovieListModel>> getClassicMovies(
    @Query("api_key") String? apiKey,
    @Query("sort_by") String sortBy,
    @Query("primary_release_date.lte") String releaseDate,
  );

  @GET("/discover/movie")
  Future<HttpResponse<MovieListModel>> getFilipinoMovies(
    @Query("api_key") String? apiKey,
    @Query("sort_by") String sortBy,
    @Query("with_original_language") String language,
  );

  @GET("/list/28")
  Future<HttpResponse<MovieListModel>> getBestPictures(@Query("api_key") String? apiKey);

  //get specific movie and its details
  // @GET('/movie/{movie_id}')
  // Future<HttpResponse<MovieDetailsModel>> getMovieDetails(@Path('movie_id') int movieId, @Query('api_key') String apiKey);
}
