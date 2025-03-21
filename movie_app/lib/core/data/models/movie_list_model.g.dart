// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieListModel _$MovieListModelFromJson(
  Map<String, dynamic> json,
) => _MovieListModel(
  dates:
      json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
  page: (json['page'] as num?)?.toInt() ?? 1,
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieListItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => MovieListItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
  totalResults: (json['total_results'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$MovieListModelToJson(_MovieListModel instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'items': instance.items,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_Dates _$DatesFromJson(Map<String, dynamic> json) => _Dates(
  maximum: json['maximum'] as String,
  minimum: json['minimum'] as String,
);

Map<String, dynamic> _$DatesToJson(_Dates instance) => <String, dynamic>{
  'maximum': instance.maximum,
  'minimum': instance.minimum,
};

_MovieListItemModel _$MovieListItemModelFromJson(Map<String, dynamic> json) =>
    _MovieListItemModel(
      adult: json['adult'] as bool? ?? true,
      backdropPath: json['backdrop_path'] as String? ?? "",
      genreIds:
          (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      id: (json['id'] as num?)?.toInt() ?? 0,
      originalLanguage: json['original_language'] as String? ?? "",
      originalTitle: json['original_title'] as String? ?? "",
      overview: json['overview'] as String? ?? 'No overview found',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      posterPath: json['poster_path'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? "",
      title: json['title'] as String? ?? "",
      video: json['video'] as bool? ?? true,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
      voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MovieListItemModelToJson(_MovieListItemModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
