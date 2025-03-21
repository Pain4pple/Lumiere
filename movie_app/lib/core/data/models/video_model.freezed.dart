// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoModel {

@JsonKey(name: 'iso_639_1') String get iso6391;@JsonKey(name: 'iso_3166_1') String get iso31661; String get name; String get key; String get site; int get size; String get type; bool get official;@JsonKey(name: 'published_at') String get publishedAt; String get id;
/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoModelCopyWith<VideoModel> get copyWith => _$VideoModelCopyWithImpl<VideoModel>(this as VideoModel, _$identity);

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoModel&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391)&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661)&&(identical(other.name, name) || other.name == name)&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.type, type) || other.type == type)&&(identical(other.official, official) || other.official == official)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso6391,iso31661,name,key,site,size,type,official,publishedAt,id);

@override
String toString() {
  return 'VideoModel(iso6391: $iso6391, iso31661: $iso31661, name: $name, key: $key, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt, id: $id)';
}


}

/// @nodoc
abstract mixin class $VideoModelCopyWith<$Res>  {
  factory $VideoModelCopyWith(VideoModel value, $Res Function(VideoModel) _then) = _$VideoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'iso_639_1') String iso6391,@JsonKey(name: 'iso_3166_1') String iso31661, String name, String key, String site, int size, String type, bool official,@JsonKey(name: 'published_at') String publishedAt, String id
});




}
/// @nodoc
class _$VideoModelCopyWithImpl<$Res>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._self, this._then);

  final VideoModel _self;
  final $Res Function(VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iso6391 = null,Object? iso31661 = null,Object? name = null,Object? key = null,Object? site = null,Object? size = null,Object? type = null,Object? official = null,Object? publishedAt = null,Object? id = null,}) {
  return _then(_self.copyWith(
iso6391: null == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String,iso31661: null == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,official: null == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideoModel implements VideoModel {
   _VideoModel({@JsonKey(name: 'iso_639_1') required this.iso6391, @JsonKey(name: 'iso_3166_1') required this.iso31661, required this.name, required this.key, required this.site, required this.size, required this.type, required this.official, @JsonKey(name: 'published_at') required this.publishedAt, required this.id});
  factory _VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

@override@JsonKey(name: 'iso_639_1') final  String iso6391;
@override@JsonKey(name: 'iso_3166_1') final  String iso31661;
@override final  String name;
@override final  String key;
@override final  String site;
@override final  int size;
@override final  String type;
@override final  bool official;
@override@JsonKey(name: 'published_at') final  String publishedAt;
@override final  String id;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoModelCopyWith<_VideoModel> get copyWith => __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoModel&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391)&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661)&&(identical(other.name, name) || other.name == name)&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.type, type) || other.type == type)&&(identical(other.official, official) || other.official == official)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso6391,iso31661,name,key,site,size,type,official,publishedAt,id);

@override
String toString() {
  return 'VideoModel(iso6391: $iso6391, iso31661: $iso31661, name: $name, key: $key, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(_VideoModel value, $Res Function(_VideoModel) _then) = __$VideoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'iso_639_1') String iso6391,@JsonKey(name: 'iso_3166_1') String iso31661, String name, String key, String site, int size, String type, bool official,@JsonKey(name: 'published_at') String publishedAt, String id
});




}
/// @nodoc
class __$VideoModelCopyWithImpl<$Res>
    implements _$VideoModelCopyWith<$Res> {
  __$VideoModelCopyWithImpl(this._self, this._then);

  final _VideoModel _self;
  final $Res Function(_VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iso6391 = null,Object? iso31661 = null,Object? name = null,Object? key = null,Object? site = null,Object? size = null,Object? type = null,Object? official = null,Object? publishedAt = null,Object? id = null,}) {
  return _then(_VideoModel(
iso6391: null == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String,iso31661: null == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,official: null == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
