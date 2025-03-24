import 'package:movie_app/features/movie_details/domain/models/movie_credits.dart';
import 'package:movie_app/features/movie_details/data/models/movie_credits_model.dart';

extension MovieCreditsMapper on MovieCreditsModel {
  MovieCredits toDomain() {
    return MovieCredits(id: id, cast: casts?.map((c) => c.toDomain()).toList() ?? [], crew: crews?.map((c) => c.toDomain()).toList() ?? []);
  }
}

extension CastMapper on CastModel {
  Cast toDomain() {
    return Cast(id: id, name: name ?? 'Unknown', character: character ?? '', profilePath: profilePath, order: order);
  }
}

extension CrewMapper on CrewModel {
  Crew toDomain() {
    return Crew(id: id, name: name ?? 'Unknown', job: job, department: department, profilePath: profilePath);
  }
}
