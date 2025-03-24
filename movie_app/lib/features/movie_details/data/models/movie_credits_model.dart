/*
  movie credits object as a
  raw response from TMdB
*/
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credits_model.freezed.dart';
part 'movie_credits_model.g.dart';

@freezed
abstract class MovieCreditsModel with _$MovieCreditsModel {
  factory MovieCreditsModel({required int id, @JsonKey(name: 'cast') List<CastModel>? casts, @JsonKey(name: 'crew') List<CrewModel>? crews}) =
      _MovieCreditsModel;

  factory MovieCreditsModel.fromJson(Map<String, dynamic> json) => _$MovieCreditsModelFromJson(json);
}

@freezed
abstract class CastModel with _$CastModel {
  factory CastModel({
    required int id,
    @Default(true) @JsonKey(name: 'adult') bool adult,
    @Default(0) @JsonKey(name: 'gender') int gender,
    @Default(0) @JsonKey(name: 'cast_id') int castId,
    @Default('') @JsonKey(name: 'credit_id') String creditId,
    @Default(0) @JsonKey(name: 'order') int order,
    @Default('') @JsonKey(name: 'known_for_department') String knownForDepartment,
    @Default('') @JsonKey(name: 'name') String? name,
    @Default('') @JsonKey(name: 'character') String? character,
    @Default('') @JsonKey(name: 'original_name') String? originalName,
    @Default(0.0) @JsonKey(name: 'popularity') double popularity,
    @Default('') @JsonKey(name: 'profile_path') String profilePath,
  }) = _CastModel;
  factory CastModel.fromJson(Map<String, dynamic> json) => _$CastModelFromJson(json);
}

@freezed
abstract class CrewModel with _$CrewModel {
  factory CrewModel({
    required int id,
    @Default(true) @JsonKey(name: 'adult') bool adult,
    @Default(0) @JsonKey(name: 'gender') int gender,
    @Default('') @JsonKey(name: 'credit_id') String creditId,
    @Default('') @JsonKey(name: 'known_for_department') String knownForDepartment,
    @Default('') @JsonKey(name: 'department') String department,
    @Default('') @JsonKey(name: 'job') String job,
    @Default('') @JsonKey(name: 'name') String? name,
    @Default('') @JsonKey(name: 'character') String? character,
    @Default('') @JsonKey(name: 'original_name') String? originalName,
    @Default(0.0) @JsonKey(name: 'popularity') double popularity,
    @Default('') @JsonKey(name: 'profile_path') String profilePath,
  }) = _CrewModel;
  factory CrewModel.fromJson(Map<String, dynamic> json) => _$CrewModelFromJson(json);
}
