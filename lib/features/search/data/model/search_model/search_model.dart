import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'pagination.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  factory SearchModel({
    List<Datum>? data,
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    Pagination? pagination,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}
