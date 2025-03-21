import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/core/domain/models/genre.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
abstract class GenreModel with _$GenreModel {
  factory GenreModel({required int id, required String name}) = _GenreModel;
  factory GenreModel.fromJson(Map<String, dynamic> json) => _$GenreModelFromJson(json);
}

extension GenreModelMapper on GenreModel {
  Genre toEntity() {
    return Genre(id: id, name: name);
  }
}
