import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/resources/data_state.dart';
import 'package:movie_app/features/video/domain/repository/video_repository.dart';
import 'package:movie_app/features/video/presentation/blocs/video_events.dart';
import 'package:movie_app/features/video/presentation/blocs/video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoRepository videoRepository;
  VideoBloc(this.videoRepository) : super(VideoInitial()) {
    on<FetchNowPlayingTrailers>((event, emit) async {
      emit(VideoLoading());

      final movieIdsResult = await videoRepository.getNowPlayingMoviesId();

      if (movieIdsResult is DataSuccess) {
        final movieIds = movieIdsResult.data!;

        final trailersResults = await Future.wait(movieIds.map((id) => videoRepository.getVideoKey(id)));
        final List<String> trailers =
            trailersResults.whereType<DataSuccess<String?>>().map((result) => result.data).where((key) => key != null).cast<String>().toList();

        if (trailers.isNotEmpty) {
          emit(VideoDone(trailers));
        } else {
          emit(VideoError(movieIdsResult.error!));
        }
      } else {
        emit(VideoError(movieIdsResult.error!));
      }
    });
  }
}
