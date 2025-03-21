import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/core/data/services/tmdb_api_service.dart';
import 'package:movie_app/features/movie_list/data/repositories/movie_list_repository_impl.dart';
import 'package:movie_app/features/movie_list/domain/repositories/movie_list_repository.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_bloc.dart';

final GetIt sl = GetIt.instance;

void initializeDependencies() {
  // Dio instance
  sl.registerLazySingleton<Dio>(() => Dio(BaseOptions(connectTimeout: Duration(seconds: 10))));

  // API Service
  sl.registerLazySingleton<TmdbApiService>(() => TmdbApiService(sl<Dio>()));

  // Repository
  sl.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(sl<TmdbApiService>()));

  // Bloc
  sl.registerFactory(() => MovieListsBloc(sl<MovieRepository>()));
}
