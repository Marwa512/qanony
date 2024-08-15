// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'law_degree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LawDegreeImpl _$$LawDegreeImplFromJson(Map<String, dynamic> json) =>
    _$LawDegreeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LawDegreeImplToJson(_$LawDegreeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
