import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

abstract class VideoState extends Equatable {
  final List<String>? videoKeys;
  final DioException? error;

  const VideoState({this.videoKeys, this.error});

  @override
  List<Object> get props => [videoKeys!, error!];
}

//init state
class VideoInitial extends VideoState {}

//loading
class VideoLoading extends VideoState {
  const VideoLoading();
}

//done loading
class VideoDone extends VideoState {
  const VideoDone(List<String> videoKeys) : super(videoKeys: videoKeys);
}

//error
class VideoError extends VideoState {
  const VideoError(DioException error) : super(error: error);
}
