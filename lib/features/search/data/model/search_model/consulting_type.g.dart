// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consulting_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultingTypeImpl _$$ConsultingTypeImplFromJson(Map<String, dynamic> json) =>
    _$ConsultingTypeImpl(
      title: json['title'] as String?,
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ConsultingTypeImplToJson(
        _$ConsultingTypeImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'image': instance.image,
    };
