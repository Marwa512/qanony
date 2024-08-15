// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'law_degree.freezed.dart';
part 'law_degree.g.dart';

@freezed
class LawDegree with _$LawDegree {
  factory LawDegree({
    int? id,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _LawDegree;

  factory LawDegree.fromJson(Map<String, dynamic> json) =>
      _$LawDegreeFromJson(json);
}
