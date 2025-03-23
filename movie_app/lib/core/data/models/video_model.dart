// ignore_for_file: invalid_annotation_target
/*
  video object as a
  raw response from TMdB
*/
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
abstract class VideoListModel with _$VideoListModel {
  factory VideoListModel({required int id, @Default([]) List<VideoModel> results}) = _VideoListModel;

  factory VideoListModel.fromJson(Map<String, dynamic> json) => _$VideoListModelFromJson(json);
}

@freezed
abstract class VideoModel with _$VideoModel {
  factory VideoModel({@Default("") String key, @Default("") String site, @Default("") String type, @Default("") String id}) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);
}
