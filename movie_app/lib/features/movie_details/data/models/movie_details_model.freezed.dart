// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetailsModel {

 int get id; bool get adult; bool get video;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'homepage') String? get homepage;@JsonKey(name: 'imdb_id') String? get imdbId;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_title') String? get originalTitle; String? get overview; int get budget; int get popularity; int get revenue; int get runtime;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'release_date') String? get releaseDate; String? get status; String? get tagline; String? get title; List<GenreModel>? get genres; List<ProductionCompanyModel>? get productionCompanies;
/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith => _$MovieDetailsModelCopyWithImpl<MovieDetailsModel>(this as MovieDetailsModel, _$identity);

  /// Serializes this MovieDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.video, video) || other.video == video)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.genres, genres)&&const DeepCollectionEquality().equals(other.productionCompanies, productionCompanies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,adult,video,backdropPath,homepage,imdbId,originalLanguage,originalTitle,overview,budget,popularity,revenue,runtime,voteAverage,voteCount,posterPath,releaseDate,status,tagline,title,const DeepCollectionEquality().hash(genres),const DeepCollectionEquality().hash(productionCompanies)]);

@override
String toString() {
  return 'MovieDetailsModel(id: $id, adult: $adult, video: $video, backdropPath: $backdropPath, homepage: $homepage, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, budget: $budget, popularity: $popularity, revenue: $revenue, runtime: $runtime, voteAverage: $voteAverage, voteCount: $voteCount, posterPath: $posterPath, releaseDate: $releaseDate, status: $status, tagline: $tagline, title: $title, genres: $genres, productionCompanies: $productionCompanies)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsModelCopyWith<$Res>  {
  factory $MovieDetailsModelCopyWith(MovieDetailsModel value, $Res Function(MovieDetailsModel) _then) = _$MovieDetailsModelCopyWithImpl;
@useResult
$Res call({
 int id, bool adult, bool video,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'homepage') String? homepage,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, String? overview, int budget, int popularity, int revenue, int runtime,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String? releaseDate, String? status, String? tagline, String? title, List<GenreModel>? genres, List<ProductionCompanyModel>? productionCompanies
});




}
/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._self, this._then);

  final MovieDetailsModel _self;
  final $Res Function(MovieDetailsModel) _then;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? adult = null,Object? video = null,Object? backdropPath = freezed,Object? homepage = freezed,Object? imdbId = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? budget = null,Object? popularity = null,Object? revenue = null,Object? runtime = null,Object? voteAverage = null,Object? voteCount = null,Object? posterPath = freezed,Object? releaseDate = freezed,Object? status = freezed,Object? tagline = freezed,Object? title = freezed,Object? genres = freezed,Object? productionCompanies = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>?,productionCompanies: freezed == productionCompanies ? _self.productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompanyModel>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MovieDetailsModel implements MovieDetailsModel {
   _MovieDetailsModel({required this.id, this.adult = true, this.video = false, @JsonKey(name: 'backdrop_path') this.backdropPath = '', @JsonKey(name: 'homepage') this.homepage = '', @JsonKey(name: 'imdb_id') this.imdbId = '', @JsonKey(name: 'original_language') this.originalLanguage = '', @JsonKey(name: 'original_title') this.originalTitle = '', this.overview = '', this.budget = 0, this.popularity = 0, this.revenue = 0, this.runtime = 0, @JsonKey(name: 'vote_average') this.voteAverage = 0.0, @JsonKey(name: 'vote_count') this.voteCount = 0, @JsonKey(name: 'poster_path') this.posterPath = '', @JsonKey(name: 'release_date') this.releaseDate = '', this.status = '', this.tagline = '', this.title = '', final  List<GenreModel>? genres, final  List<ProductionCompanyModel>? productionCompanies}): _genres = genres,_productionCompanies = productionCompanies;
  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) => _$MovieDetailsModelFromJson(json);

@override final  int id;
@override@JsonKey() final  bool adult;
@override@JsonKey() final  bool video;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'homepage') final  String? homepage;
@override@JsonKey(name: 'imdb_id') final  String? imdbId;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override@JsonKey() final  String? overview;
@override@JsonKey() final  int budget;
@override@JsonKey() final  int popularity;
@override@JsonKey() final  int revenue;
@override@JsonKey() final  int runtime;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
@override@JsonKey() final  String? status;
@override@JsonKey() final  String? tagline;
@override@JsonKey() final  String? title;
 final  List<GenreModel>? _genres;
@override List<GenreModel>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductionCompanyModel>? _productionCompanies;
@override List<ProductionCompanyModel>? get productionCompanies {
  final value = _productionCompanies;
  if (value == null) return null;
  if (_productionCompanies is EqualUnmodifiableListView) return _productionCompanies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsModelCopyWith<_MovieDetailsModel> get copyWith => __$MovieDetailsModelCopyWithImpl<_MovieDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.video, video) || other.video == video)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._productionCompanies, _productionCompanies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,adult,video,backdropPath,homepage,imdbId,originalLanguage,originalTitle,overview,budget,popularity,revenue,runtime,voteAverage,voteCount,posterPath,releaseDate,status,tagline,title,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_productionCompanies)]);

@override
String toString() {
  return 'MovieDetailsModel(id: $id, adult: $adult, video: $video, backdropPath: $backdropPath, homepage: $homepage, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, budget: $budget, popularity: $popularity, revenue: $revenue, runtime: $runtime, voteAverage: $voteAverage, voteCount: $voteCount, posterPath: $posterPath, releaseDate: $releaseDate, status: $status, tagline: $tagline, title: $title, genres: $genres, productionCompanies: $productionCompanies)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsModelCopyWith<$Res> implements $MovieDetailsModelCopyWith<$Res> {
  factory _$MovieDetailsModelCopyWith(_MovieDetailsModel value, $Res Function(_MovieDetailsModel) _then) = __$MovieDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, bool adult, bool video,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'homepage') String? homepage,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, String? overview, int budget, int popularity, int revenue, int runtime,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String? releaseDate, String? status, String? tagline, String? title, List<GenreModel>? genres, List<ProductionCompanyModel>? productionCompanies
});




}
/// @nodoc
class __$MovieDetailsModelCopyWithImpl<$Res>
    implements _$MovieDetailsModelCopyWith<$Res> {
  __$MovieDetailsModelCopyWithImpl(this._self, this._then);

  final _MovieDetailsModel _self;
  final $Res Function(_MovieDetailsModel) _then;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? adult = null,Object? video = null,Object? backdropPath = freezed,Object? homepage = freezed,Object? imdbId = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? budget = null,Object? popularity = null,Object? revenue = null,Object? runtime = null,Object? voteAverage = null,Object? voteCount = null,Object? posterPath = freezed,Object? releaseDate = freezed,Object? status = freezed,Object? tagline = freezed,Object? title = freezed,Object? genres = freezed,Object? productionCompanies = freezed,}) {
  return _then(_MovieDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>?,productionCompanies: freezed == productionCompanies ? _self._productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompanyModel>?,
  ));
}


}


/// @nodoc
mixin _$ProductionCompanyModel {

 int get id;@JsonKey(name: 'poster_path') String? get logoPath; String get name;@JsonKey(name: 'origin_country') String? get originCountry;
/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionCompanyModelCopyWith<ProductionCompanyModel> get copyWith => _$ProductionCompanyModelCopyWithImpl<ProductionCompanyModel>(this as ProductionCompanyModel, _$identity);

  /// Serializes this ProductionCompanyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionCompanyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductionCompanyModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $ProductionCompanyModelCopyWith<$Res>  {
  factory $ProductionCompanyModelCopyWith(ProductionCompanyModel value, $Res Function(ProductionCompanyModel) _then) = _$ProductionCompanyModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'poster_path') String? logoPath, String name,@JsonKey(name: 'origin_country') String? originCountry
});




}
/// @nodoc
class _$ProductionCompanyModelCopyWithImpl<$Res>
    implements $ProductionCompanyModelCopyWith<$Res> {
  _$ProductionCompanyModelCopyWithImpl(this._self, this._then);

  final ProductionCompanyModel _self;
  final $Res Function(ProductionCompanyModel) _then;

/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,Object? originCountry = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductionCompanyModel implements ProductionCompanyModel {
   _ProductionCompanyModel({required this.id, @JsonKey(name: 'poster_path') this.logoPath, required this.name, @JsonKey(name: 'origin_country') this.originCountry});
  factory _ProductionCompanyModel.fromJson(Map<String, dynamic> json) => _$ProductionCompanyModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'poster_path') final  String? logoPath;
@override final  String name;
@override@JsonKey(name: 'origin_country') final  String? originCountry;

/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionCompanyModelCopyWith<_ProductionCompanyModel> get copyWith => __$ProductionCompanyModelCopyWithImpl<_ProductionCompanyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductionCompanyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionCompanyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductionCompanyModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$ProductionCompanyModelCopyWith<$Res> implements $ProductionCompanyModelCopyWith<$Res> {
  factory _$ProductionCompanyModelCopyWith(_ProductionCompanyModel value, $Res Function(_ProductionCompanyModel) _then) = __$ProductionCompanyModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'poster_path') String? logoPath, String name,@JsonKey(name: 'origin_country') String? originCountry
});




}
/// @nodoc
class __$ProductionCompanyModelCopyWithImpl<$Res>
    implements _$ProductionCompanyModelCopyWith<$Res> {
  __$ProductionCompanyModelCopyWithImpl(this._self, this._then);

  final _ProductionCompanyModel _self;
  final $Res Function(_ProductionCompanyModel) _then;

/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,Object? originCountry = freezed,}) {
  return _then(_ProductionCompanyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
