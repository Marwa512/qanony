import 'package:freezed_annotation/freezed_annotation.dart';

part 'consulting_type.freezed.dart';
part 'consulting_type.g.dart';

@freezed
class ConsultingType with _$ConsultingType {
  factory ConsultingType({
    String? title,
    int? id,
    String? image,
  }) = _ConsultingType;

  factory ConsultingType.fromJson(Map<String, dynamic> json) =>
      _$ConsultingTypeFromJson(json);
}
