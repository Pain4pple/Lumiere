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
mixin _$VideoListModel {

 int get id; List<VideoModel> get results;
/// Create a copy of VideoListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoListModelCopyWith<VideoListModel> get copyWith => _$VideoListModelCopyWithImpl<VideoListModel>(this as VideoListModel, _$identity);

  /// Serializes this VideoListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoListModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'VideoListModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class $VideoListModelCopyWith<$Res>  {
  factory $VideoListModelCopyWith(VideoListModel value, $Res Function(VideoListModel) _then) = _$VideoListModelCopyWithImpl;
@useResult
$Res call({
 int id, List<VideoModel> results
});




}
/// @nodoc
class _$VideoListModelCopyWithImpl<$Res>
    implements $VideoListModelCopyWith<$Res> {
  _$VideoListModelCopyWithImpl(this._self, this._then);

  final VideoListModel _self;
  final $Res Function(VideoListModel) _then;

/// Create a copy of VideoListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? results = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<VideoModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideoListModel implements VideoListModel {
   _VideoListModel({required this.id, final  List<VideoModel> results = const []}): _results = results;
  factory _VideoListModel.fromJson(Map<String, dynamic> json) => _$VideoListModelFromJson(json);

@override final  int id;
 final  List<VideoModel> _results;
@override@JsonKey() List<VideoModel> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of VideoListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoListModelCopyWith<_VideoListModel> get copyWith => __$VideoListModelCopyWithImpl<_VideoListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoListModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'VideoListModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class _$VideoListModelCopyWith<$Res> implements $VideoListModelCopyWith<$Res> {
  factory _$VideoListModelCopyWith(_VideoListModel value, $Res Function(_VideoListModel) _then) = __$VideoListModelCopyWithImpl;
@override @useResult
$Res call({
 int id, List<VideoModel> results
});




}
/// @nodoc
class __$VideoListModelCopyWithImpl<$Res>
    implements _$VideoListModelCopyWith<$Res> {
  __$VideoListModelCopyWithImpl(this._self, this._then);

  final _VideoListModel _self;
  final $Res Function(_VideoListModel) _then;

/// Create a copy of VideoListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? results = null,}) {
  return _then(_VideoListModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<VideoModel>,
  ));
}


}


/// @nodoc
mixin _$VideoModel {

 String get key; String get site; String get type; String get id;
/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoModelCopyWith<VideoModel> get copyWith => _$VideoModelCopyWithImpl<VideoModel>(this as VideoModel, _$identity);

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoModel&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,site,type,id);

@override
String toString() {
  return 'VideoModel(key: $key, site: $site, type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class $VideoModelCopyWith<$Res>  {
  factory $VideoModelCopyWith(VideoModel value, $Res Function(VideoModel) _then) = _$VideoModelCopyWithImpl;
@useResult
$Res call({
 String key, String site, String type, String id
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
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? site = null,Object? type = null,Object? id = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VideoModel implements VideoModel {
   _VideoModel({this.key = "", this.site = "", this.type = "", this.id = ""});
  factory _VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

@override@JsonKey() final  String key;
@override@JsonKey() final  String site;
@override@JsonKey() final  String type;
@override@JsonKey() final  String id;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoModel&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,site,type,id);

@override
String toString() {
  return 'VideoModel(key: $key, site: $site, type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(_VideoModel value, $Res Function(_VideoModel) _then) = __$VideoModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String site, String type, String id
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
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? site = null,Object? type = null,Object? id = null,}) {
  return _then(_VideoModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
