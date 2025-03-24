import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/features/video/domain/models/movie_with_trailer.dart';

abstract class VideoState extends Equatable {
  final List<MovieWithTrailer>? moviesWithTrailers;
  final DioException? error;

  const VideoState({this.moviesWithTrailers, this.error});

  @override
  List<Object> get props => [moviesWithTrailers!, error!];
}

//init state
class VideoInitial extends VideoState {}

//loading
class VideoLoading extends VideoState {
  const VideoLoading();
}

//done loading
class VideoDone extends VideoState {
  const VideoDone(List<MovieWithTrailer> moviesWithTrailers) : super(moviesWithTrailers: moviesWithTrailers);
}

//error
class VideoError extends VideoState {
  const VideoError(DioException error) : super(error: error);
}
