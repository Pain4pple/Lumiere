// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) =>
    _MovieDetailsModel(
      id: (json['id'] as num).toInt(),
      adult: json['adult'] as bool? ?? true,
      video: json['video'] as bool? ?? false,
      backdropPath: json['backdrop_path'] as String? ?? '',
      homepage: json['homepage'] as String? ?? '',
      imdbId: json['imdb_id'] as String? ?? '',
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      budget: (json['budget'] as num?)?.toInt() ?? 0,
      popularity: (json['popularity'] as num?)?.toInt() ?? 0,
      revenue: (json['revenue'] as num?)?.toInt() ?? 0,
      runtime: (json['runtime'] as num?)?.toInt() ?? 0,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
      posterPath: json['poster_path'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
      status: json['status'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      title: json['title'] as String? ?? '',
      genres:
          (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      productionCompanies:
          (json['productionCompanies'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ProductionCompanyModel.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$MovieDetailsModelToJson(_MovieDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'video': instance.video,
      'backdrop_path': instance.backdropPath,
      'homepage': instance.homepage,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'budget': instance.budget,
      'popularity': instance.popularity,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'genres': instance.genres,
      'productionCompanies': instance.productionCompanies,
    };

_ProductionCompanyModel _$ProductionCompanyModelFromJson(
  Map<String, dynamic> json,
) => _ProductionCompanyModel(
  id: (json['id'] as num).toInt(),
  logoPath: json['poster_path'] as String?,
  name: json['name'] as String,
  originCountry: json['origin_country'] as String?,
);

Map<String, dynamic> _$ProductionCompanyModelToJson(
  _ProductionCompanyModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'poster_path': instance.logoPath,
  'name': instance.name,
  'origin_country': instance.originCountry,
};
