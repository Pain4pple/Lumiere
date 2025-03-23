import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/core/data/services/tmdb_api_service.dart';
import 'package:movie_app/features/movie_details/data/repositories/movie_details_repository_impl.dart';
import 'package:movie_app/features/movie_details/domain/repositories/movie_details_repository.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_bloc.dart';
import 'package:movie_app/features/movie_list/data/repositories/movie_list_repository_impl.dart';
import 'package:movie_app/features/movie_list/domain/repositories/movie_list_repository.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_bloc.dart';

final GetIt sl = GetIt.instance;

void initializeDependencies() {
  // Dio instance
  sl.registerLazySingleton<Dio>(() => Dio(BaseOptions(connectTimeout: Duration(seconds: 10))));

  // API Service
  sl.registerLazySingleton<TmdbApiService>(() => TmdbApiService(sl<Dio>()));

  // Movie List Repository & Bloc
  sl.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(sl<TmdbApiService>()));
  sl.registerFactory(() => MovieListsBloc(sl<MovieRepository>()));

  // Movie Details Repository & Bloc
  sl.registerLazySingleton<MovieDetailsRepository>(() => MovieDetailsRepositoryImpl(sl<TmdbApiService>()));
  sl.registerFactory(() => MovieDetailsBloc(sl<MovieDetailsRepository>()));
}
