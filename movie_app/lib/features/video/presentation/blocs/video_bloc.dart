import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/movie_list/domain/repositories/movie_list_repository.dart';
import 'package:movie_app/features/video/domain/models/movie_with_trailer.dart';
import 'package:movie_app/features/video/domain/repository/video_repository.dart';
import 'package:movie_app/features/video/presentation/blocs/video_events.dart';
import 'package:movie_app/features/video/presentation/blocs/video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoRepository videoRepository;
  final MovieRepository movieRepository;
  VideoBloc(this.videoRepository, this.movieRepository) : super(VideoInitial()) {
    on<FetchNowPlayingTrailers>((event, emit) async {
      emit(VideoLoading());

      final moviesResult = await movieRepository.getUpcomingMovies();

      if (moviesResult is DataSuccess) {
        final movies = moviesResult.data!;

        final trailersResults = await Future.wait(
          movies.map((movie) async {
            final videoResult = await videoRepository.getVideoKey(movie.id);
            return MovieWithTrailer(
              id: movie.id,
              overview: movie.overview,
              title: movie.title,
              posterPath: movie.posterPath,
              videoKey: (videoResult is DataSuccess) ? videoResult.data : null,
            );
          }),
        );
        final filteredMovies = trailersResults.where((m) => m.videoKey != null).toList();

        if (filteredMovies.isNotEmpty) {
          emit(VideoDone(filteredMovies.take(7).toList()));
        } else {
          emit(VideoError(moviesResult.error!));
        }
      } else {
        emit(VideoError(moviesResult.error!));
      }
    });
  }
}
