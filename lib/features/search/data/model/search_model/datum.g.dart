// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      rate: (json['rate'] as num?)?.toDouble(),
      ratesNo: (json['ratesNo'] as num?)?.toInt(),
      name: json['name'] as String?,
      consultantAcademic: json['consultant_academic'] as String?,
      consultCost: (json['consult_cost'] as num?)?.toInt(),
      lawDegree: json['law_degree'] == null
          ? null
          : LawDegree.fromJson(json['law_degree'] as Map<String, dynamic>),
      consultingTypes: (json['consulting_types'] as List<dynamic>?)
          ?.map((e) => ConsultingType.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      callAvailable: (json['call_available'] as num?)?.toInt(),
      visitAvailable: (json['visit_available'] as num?)?.toInt(),
      prosecutionAvailable: json['prosecution_available'] as String?,
      visitCost: (json['visit_cost'] as num?)?.toInt(),
      visitCommission: (json['visit_commission'] as num?)?.toInt(),
      visitsNo: (json['visitsNo'] as num?)?.toInt(),
      address: json['address'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      balance: json['balance'] as String?,
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      bookingDayes: json['booking_dayes'],
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'ratesNo': instance.ratesNo,
      'name': instance.name,
      'consultant_academic': instance.consultantAcademic,
      'consult_cost': instance.consultCost,
      'law_degree': instance.lawDegree,
      'consulting_types': instance.consultingTypes,
      'image': instance.image,
      'city': instance.city,
      'call_available': instance.callAvailable,
      'visit_available': instance.visitAvailable,
      'prosecution_available': instance.prosecutionAvailable,
      'visit_cost': instance.visitCost,
      'visit_commission': instance.visitCommission,
      'visitsNo': instance.visitsNo,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'balance': instance.balance,
      'is_featured': instance.isFeatured,
      'booking_dayes': instance.bookingDayes,
    };
