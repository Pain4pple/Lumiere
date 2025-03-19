// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  id: (json['id'] as num).toInt(),
  adult: json['adult'] as bool? ?? true,
  video: json['video'] as bool? ?? true,
  backdropPath: json['backdropPath'] as String,
  belongsToCollection: json['belongsToCollection'] as String,
  budget: json['budget'] as String,
  homepage: json['homepage'] as String,
  imdbId: json['imdbId'] as String,
  originalLanguage: json['originalLanguage'] as String,
  originalTitle: json['originalTitle'] as String,
  overview: json['overview'] as String,
  popularity: (json['popularity'] as num?)?.toInt() ?? 0,
  revenue: (json['revenue'] as num?)?.toInt() ?? 0,
  runtime: (json['runtime'] as num?)?.toInt() ?? 0,
  voteAverage: (json['voteAverage'] as num?)?.toInt() ?? 0,
  voteCount: (json['voteCount'] as num?)?.toInt() ?? 0,
  posterPath: json['posterPath'] as String,
  releaseDate: json['releaseDate'] as String,
  status: json['status'] as String,
  tagline: json['tagline'] as String,
  title: json['title'] as String,
  genres:
      (json['genres'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'video': instance.video,
      'backdropPath': instance.backdropPath,
      'belongsToCollection': instance.belongsToCollection,
      'budget': instance.budget,
      'homepage': instance.homepage,
      'imdbId': instance.imdbId,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'genres': instance.genres,
    };
