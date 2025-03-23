// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoListModel _$VideoListModelFromJson(Map<String, dynamic> json) =>
    _VideoListModel(
      id: (json['id'] as num).toInt(),
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$VideoListModelToJson(_VideoListModel instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};

_VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => _VideoModel(
  key: json['key'] as String? ?? "",
  site: json['site'] as String? ?? "",
  type: json['type'] as String? ?? "",
  id: json['id'] as String? ?? "",
);

Map<String, dynamic> _$VideoModelToJson(_VideoModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'site': instance.site,
      'type': instance.type,
      'id': instance.id,
    };
