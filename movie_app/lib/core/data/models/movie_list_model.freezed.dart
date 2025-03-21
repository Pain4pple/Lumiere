// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieListModel {

@JsonKey(name: 'dates') Dates? get dates; int get page; List<MovieListItemModel> get results; List<MovieListItemModel> get items;@JsonKey(name: 'total_pages') int get totalPages;@JsonKey(name: 'total_results') int get totalResults;
/// Create a copy of MovieListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieListModelCopyWith<MovieListModel> get copyWith => _$MovieListModelCopyWithImpl<MovieListModel>(this as MovieListModel, _$identity);

  /// Serializes this MovieListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieListModel&&(identical(other.dates, dates) || other.dates == dates)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dates,page,const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(items),totalPages,totalResults);

@override
String toString() {
  return 'MovieListModel(dates: $dates, page: $page, results: $results, items: $items, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $MovieListModelCopyWith<$Res>  {
  factory $MovieListModelCopyWith(MovieListModel value, $Res Function(MovieListModel) _then) = _$MovieListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dates') Dates? dates, int page, List<MovieListItemModel> results, List<MovieListItemModel> items,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});


$DatesCopyWith<$Res>? get dates;

}
/// @nodoc
class _$MovieListModelCopyWithImpl<$Res>
    implements $MovieListModelCopyWith<$Res> {
  _$MovieListModelCopyWithImpl(this._self, this._then);

  final MovieListModel _self;
  final $Res Function(MovieListModel) _then;

/// Create a copy of MovieListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dates = freezed,Object? page = null,Object? results = null,Object? items = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
dates: freezed == dates ? _self.dates : dates // ignore: cast_nullable_to_non_nullable
as Dates?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<MovieListItemModel>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MovieListItemModel>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of MovieListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DatesCopyWith<$Res>? get dates {
    if (_self.dates == null) {
    return null;
  }

  return $DatesCopyWith<$Res>(_self.dates!, (value) {
    return _then(_self.copyWith(dates: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _MovieListModel implements MovieListModel {
   _MovieListModel({@JsonKey(name: 'dates') this.dates, this.page = 1, final  List<MovieListItemModel> results = const [], final  List<MovieListItemModel> items = const [], @JsonKey(name: 'total_pages') this.totalPages = 0, @JsonKey(name: 'total_results') this.totalResults = 0}): _results = results,_items = items;
  factory _MovieListModel.fromJson(Map<String, dynamic> json) => _$MovieListModelFromJson(json);

@override@JsonKey(name: 'dates') final  Dates? dates;
@override@JsonKey() final  int page;
 final  List<MovieListItemModel> _results;
@override@JsonKey() List<MovieListItemModel> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  List<MovieListItemModel> _items;
@override@JsonKey() List<MovieListItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'total_pages') final  int totalPages;
@override@JsonKey(name: 'total_results') final  int totalResults;

/// Create a copy of MovieListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieListModelCopyWith<_MovieListModel> get copyWith => __$MovieListModelCopyWithImpl<_MovieListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieListModel&&(identical(other.dates, dates) || other.dates == dates)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dates,page,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_items),totalPages,totalResults);

@override
String toString() {
  return 'MovieListModel(dates: $dates, page: $page, results: $results, items: $items, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$MovieListModelCopyWith<$Res> implements $MovieListModelCopyWith<$Res> {
  factory _$MovieListModelCopyWith(_MovieListModel value, $Res Function(_MovieListModel) _then) = __$MovieListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dates') Dates? dates, int page, List<MovieListItemModel> results, List<MovieListItemModel> items,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});


@override $DatesCopyWith<$Res>? get dates;

}
/// @nodoc
class __$MovieListModelCopyWithImpl<$Res>
    implements _$MovieListModelCopyWith<$Res> {
  __$MovieListModelCopyWithImpl(this._self, this._then);

  final _MovieListModel _self;
  final $Res Function(_MovieListModel) _then;

/// Create a copy of MovieListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dates = freezed,Object? page = null,Object? results = null,Object? items = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_MovieListModel(
dates: freezed == dates ? _self.dates : dates // ignore: cast_nullable_to_non_nullable
as Dates?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MovieListItemModel>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MovieListItemModel>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of MovieListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DatesCopyWith<$Res>? get dates {
    if (_self.dates == null) {
    return null;
  }

  return $DatesCopyWith<$Res>(_self.dates!, (value) {
    return _then(_self.copyWith(dates: value));
  });
}
}


/// @nodoc
mixin _$Dates {

 String get maximum; String get minimum;
/// Create a copy of Dates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatesCopyWith<Dates> get copyWith => _$DatesCopyWithImpl<Dates>(this as Dates, _$identity);

  /// Serializes this Dates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dates&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.minimum, minimum) || other.minimum == minimum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maximum,minimum);

@override
String toString() {
  return 'Dates(maximum: $maximum, minimum: $minimum)';
}


}

/// @nodoc
abstract mixin class $DatesCopyWith<$Res>  {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) _then) = _$DatesCopyWithImpl;
@useResult
$Res call({
 String maximum, String minimum
});




}
/// @nodoc
class _$DatesCopyWithImpl<$Res>
    implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._self, this._then);

  final Dates _self;
  final $Res Function(Dates) _then;

/// Create a copy of Dates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maximum = null,Object? minimum = null,}) {
  return _then(_self.copyWith(
maximum: null == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as String,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Dates implements Dates {
   _Dates({required this.maximum, required this.minimum});
  factory _Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);

@override final  String maximum;
@override final  String minimum;

/// Create a copy of Dates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatesCopyWith<_Dates> get copyWith => __$DatesCopyWithImpl<_Dates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dates&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.minimum, minimum) || other.minimum == minimum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maximum,minimum);

@override
String toString() {
  return 'Dates(maximum: $maximum, minimum: $minimum)';
}


}

/// @nodoc
abstract mixin class _$DatesCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$DatesCopyWith(_Dates value, $Res Function(_Dates) _then) = __$DatesCopyWithImpl;
@override @useResult
$Res call({
 String maximum, String minimum
});




}
/// @nodoc
class __$DatesCopyWithImpl<$Res>
    implements _$DatesCopyWith<$Res> {
  __$DatesCopyWithImpl(this._self, this._then);

  final _Dates _self;
  final $Res Function(_Dates) _then;

/// Create a copy of Dates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maximum = null,Object? minimum = null,}) {
  return _then(_Dates(
maximum: null == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as String,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MovieListItemModel {

 bool get adult;@JsonKey(name: 'backdrop_path') String get backdropPath;@JsonKey(name: 'genre_ids') List<int> get genreIds; int get id;@JsonKey(name: 'original_language') String get originalLanguage;@JsonKey(name: 'original_title') String get originalTitle; String get overview; double get popularity;@JsonKey(name: 'poster_path') String get posterPath;@JsonKey(name: 'release_date') String get releaseDate; String get title; bool get video;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount;
/// Create a copy of MovieListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieListItemModelCopyWith<MovieListItemModel> get copyWith => _$MovieListItemModelCopyWithImpl<MovieListItemModel>(this as MovieListItemModel, _$identity);

  /// Serializes this MovieListItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieListItemModel&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'MovieListItemModel(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $MovieListItemModelCopyWith<$Res>  {
  factory $MovieListItemModelCopyWith(MovieListItemModel value, $Res Function(MovieListItemModel) _then) = _$MovieListItemModelCopyWithImpl;
@useResult
$Res call({
 bool adult,@JsonKey(name: 'backdrop_path') String backdropPath,@JsonKey(name: 'genre_ids') List<int> genreIds, int id,@JsonKey(name: 'original_language') String originalLanguage,@JsonKey(name: 'original_title') String originalTitle, String overview, double popularity,@JsonKey(name: 'poster_path') String posterPath,@JsonKey(name: 'release_date') String releaseDate, String title, bool video,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount
});




}
/// @nodoc
class _$MovieListItemModelCopyWithImpl<$Res>
    implements $MovieListItemModelCopyWith<$Res> {
  _$MovieListItemModelCopyWithImpl(this._self, this._then);

  final MovieListItemModel _self;
  final $Res Function(MovieListItemModel) _then;

/// Create a copy of MovieListItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MovieListItemModel implements MovieListItemModel {
   _MovieListItemModel({this.adult = true, @JsonKey(name: 'backdrop_path') this.backdropPath = "", @JsonKey(name: 'genre_ids') final  List<int> genreIds = const [], this.id = 0, @JsonKey(name: 'original_language') this.originalLanguage = "", @JsonKey(name: 'original_title') this.originalTitle = "", this.overview = 'No overview found', this.popularity = 0, @JsonKey(name: 'poster_path') this.posterPath = '', @JsonKey(name: 'release_date') this.releaseDate = "", this.title = "", this.video = true, @JsonKey(name: 'vote_average') this.voteAverage = 0, @JsonKey(name: 'vote_count') this.voteCount = 0}): _genreIds = genreIds;
  factory _MovieListItemModel.fromJson(Map<String, dynamic> json) => _$MovieListItemModelFromJson(json);

@override@JsonKey() final  bool adult;
@override@JsonKey(name: 'backdrop_path') final  String backdropPath;
 final  List<int> _genreIds;
@override@JsonKey(name: 'genre_ids') List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override@JsonKey() final  int id;
@override@JsonKey(name: 'original_language') final  String originalLanguage;
@override@JsonKey(name: 'original_title') final  String originalTitle;
@override@JsonKey() final  String overview;
@override@JsonKey() final  double popularity;
@override@JsonKey(name: 'poster_path') final  String posterPath;
@override@JsonKey(name: 'release_date') final  String releaseDate;
@override@JsonKey() final  String title;
@override@JsonKey() final  bool video;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;

/// Create a copy of MovieListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieListItemModelCopyWith<_MovieListItemModel> get copyWith => __$MovieListItemModelCopyWithImpl<_MovieListItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieListItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieListItemModel&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'MovieListItemModel(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$MovieListItemModelCopyWith<$Res> implements $MovieListItemModelCopyWith<$Res> {
  factory _$MovieListItemModelCopyWith(_MovieListItemModel value, $Res Function(_MovieListItemModel) _then) = __$MovieListItemModelCopyWithImpl;
@override @useResult
$Res call({
 bool adult,@JsonKey(name: 'backdrop_path') String backdropPath,@JsonKey(name: 'genre_ids') List<int> genreIds, int id,@JsonKey(name: 'original_language') String originalLanguage,@JsonKey(name: 'original_title') String originalTitle, String overview, double popularity,@JsonKey(name: 'poster_path') String posterPath,@JsonKey(name: 'release_date') String releaseDate, String title, bool video,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount
});




}
/// @nodoc
class __$MovieListItemModelCopyWithImpl<$Res>
    implements _$MovieListItemModelCopyWith<$Res> {
  __$MovieListItemModelCopyWithImpl(this._self, this._then);

  final _MovieListItemModel _self;
  final $Res Function(_MovieListItemModel) _then;

/// Create a copy of MovieListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_MovieListItemModel(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
