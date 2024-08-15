// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';
import 'consulting_type.dart';
import 'law_degree.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    int? id,
    double? rate,
    int? ratesNo,
    String? name,
    @JsonKey(name: 'consultant_academic') String? consultantAcademic,
    @JsonKey(name: 'consult_cost') int? consultCost,
    @JsonKey(name: 'law_degree') LawDegree? lawDegree,
    @JsonKey(name: 'consulting_types') List<ConsultingType>? consultingTypes,
    String? image,
    City? city,
    @JsonKey(name: 'call_available') int? callAvailable,
    @JsonKey(name: 'visit_available') int? visitAvailable,
    @JsonKey(name: 'prosecution_available') String? prosecutionAvailable,
    @JsonKey(name: 'visit_cost') int? visitCost,
    @JsonKey(name: 'visit_commission') int? visitCommission,
    int? visitsNo,
    String? address,
    String? lat,
    String? lng,
    String? balance,
    @JsonKey(name: 'is_featured') int? isFeatured,
    @JsonKey(name: 'booking_dayes') dynamic bookingDayes,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
