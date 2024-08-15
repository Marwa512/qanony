// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consulting_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultingType _$ConsultingTypeFromJson(Map<String, dynamic> json) {
  return _ConsultingType.fromJson(json);
}

/// @nodoc
mixin _$ConsultingType {
  String? get title => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultingTypeCopyWith<ConsultingType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultingTypeCopyWith<$Res> {
  factory $ConsultingTypeCopyWith(
          ConsultingType value, $Res Function(ConsultingType) then) =
      _$ConsultingTypeCopyWithImpl<$Res, ConsultingType>;
  @useResult
  $Res call({String? title, int? id, String? image});
}

/// @nodoc
class _$ConsultingTypeCopyWithImpl<$Res, $Val extends ConsultingType>
    implements $ConsultingTypeCopyWith<$Res> {
  _$ConsultingTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultingTypeImplCopyWith<$Res>
    implements $ConsultingTypeCopyWith<$Res> {
  factory _$$ConsultingTypeImplCopyWith(_$ConsultingTypeImpl value,
          $Res Function(_$ConsultingTypeImpl) then) =
      __$$ConsultingTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, int? id, String? image});
}

/// @nodoc
class __$$ConsultingTypeImplCopyWithImpl<$Res>
    extends _$ConsultingTypeCopyWithImpl<$Res, _$ConsultingTypeImpl>
    implements _$$ConsultingTypeImplCopyWith<$Res> {
  __$$ConsultingTypeImplCopyWithImpl(
      _$ConsultingTypeImpl _value, $Res Function(_$ConsultingTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ConsultingTypeImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultingTypeImpl implements _ConsultingType {
  _$ConsultingTypeImpl({this.title, this.id, this.image});

  factory _$ConsultingTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultingTypeImplFromJson(json);

  @override
  final String? title;
  @override
  final int? id;
  @override
  final String? image;

  @override
  String toString() {
    return 'ConsultingType(title: $title, id: $id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultingTypeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultingTypeImplCopyWith<_$ConsultingTypeImpl> get copyWith =>
      __$$ConsultingTypeImplCopyWithImpl<_$ConsultingTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultingTypeImplToJson(
      this,
    );
  }
}

abstract class _ConsultingType implements ConsultingType {
  factory _ConsultingType(
      {final String? title,
      final int? id,
      final String? image}) = _$ConsultingTypeImpl;

  factory _ConsultingType.fromJson(Map<String, dynamic> json) =
      _$ConsultingTypeImpl.fromJson;

  @override
  String? get title;
  @override
  int? get id;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ConsultingTypeImplCopyWith<_$ConsultingTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
