// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  int? get ratesNo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'consultant_academic')
  String? get consultantAcademic => throw _privateConstructorUsedError;
  @JsonKey(name: 'consult_cost')
  int? get consultCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'law_degree')
  LawDegree? get lawDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'consulting_types')
  List<ConsultingType>? get consultingTypes =>
      throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'call_available')
  int? get callAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_available')
  int? get visitAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'prosecution_available')
  String? get prosecutionAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_cost')
  int? get visitCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_commission')
  int? get visitCommission => throw _privateConstructorUsedError;
  int? get visitsNo => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_featured')
  int? get isFeatured => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_dayes')
  dynamic get bookingDayes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'booking_dayes') dynamic bookingDayes});

  $LawDegreeCopyWith<$Res>? get lawDegree;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? ratesNo = freezed,
    Object? name = freezed,
    Object? consultantAcademic = freezed,
    Object? consultCost = freezed,
    Object? lawDegree = freezed,
    Object? consultingTypes = freezed,
    Object? image = freezed,
    Object? city = freezed,
    Object? callAvailable = freezed,
    Object? visitAvailable = freezed,
    Object? prosecutionAvailable = freezed,
    Object? visitCost = freezed,
    Object? visitCommission = freezed,
    Object? visitsNo = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? balance = freezed,
    Object? isFeatured = freezed,
    Object? bookingDayes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      ratesNo: freezed == ratesNo
          ? _value.ratesNo
          : ratesNo // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantAcademic: freezed == consultantAcademic
          ? _value.consultantAcademic
          : consultantAcademic // ignore: cast_nullable_to_non_nullable
              as String?,
      consultCost: freezed == consultCost
          ? _value.consultCost
          : consultCost // ignore: cast_nullable_to_non_nullable
              as int?,
      lawDegree: freezed == lawDegree
          ? _value.lawDegree
          : lawDegree // ignore: cast_nullable_to_non_nullable
              as LawDegree?,
      consultingTypes: freezed == consultingTypes
          ? _value.consultingTypes
          : consultingTypes // ignore: cast_nullable_to_non_nullable
              as List<ConsultingType>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      callAvailable: freezed == callAvailable
          ? _value.callAvailable
          : callAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      visitAvailable: freezed == visitAvailable
          ? _value.visitAvailable
          : visitAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      prosecutionAvailable: freezed == prosecutionAvailable
          ? _value.prosecutionAvailable
          : prosecutionAvailable // ignore: cast_nullable_to_non_nullable
              as String?,
      visitCost: freezed == visitCost
          ? _value.visitCost
          : visitCost // ignore: cast_nullable_to_non_nullable
              as int?,
      visitCommission: freezed == visitCommission
          ? _value.visitCommission
          : visitCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      visitsNo: freezed == visitsNo
          ? _value.visitsNo
          : visitsNo // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingDayes: freezed == bookingDayes
          ? _value.bookingDayes
          : bookingDayes // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LawDegreeCopyWith<$Res>? get lawDegree {
    if (_value.lawDegree == null) {
      return null;
    }

    return $LawDegreeCopyWith<$Res>(_value.lawDegree!, (value) {
      return _then(_value.copyWith(lawDegree: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'booking_dayes') dynamic bookingDayes});

  @override
  $LawDegreeCopyWith<$Res>? get lawDegree;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? ratesNo = freezed,
    Object? name = freezed,
    Object? consultantAcademic = freezed,
    Object? consultCost = freezed,
    Object? lawDegree = freezed,
    Object? consultingTypes = freezed,
    Object? image = freezed,
    Object? city = freezed,
    Object? callAvailable = freezed,
    Object? visitAvailable = freezed,
    Object? prosecutionAvailable = freezed,
    Object? visitCost = freezed,
    Object? visitCommission = freezed,
    Object? visitsNo = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? balance = freezed,
    Object? isFeatured = freezed,
    Object? bookingDayes = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      ratesNo: freezed == ratesNo
          ? _value.ratesNo
          : ratesNo // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantAcademic: freezed == consultantAcademic
          ? _value.consultantAcademic
          : consultantAcademic // ignore: cast_nullable_to_non_nullable
              as String?,
      consultCost: freezed == consultCost
          ? _value.consultCost
          : consultCost // ignore: cast_nullable_to_non_nullable
              as int?,
      lawDegree: freezed == lawDegree
          ? _value.lawDegree
          : lawDegree // ignore: cast_nullable_to_non_nullable
              as LawDegree?,
      consultingTypes: freezed == consultingTypes
          ? _value._consultingTypes
          : consultingTypes // ignore: cast_nullable_to_non_nullable
              as List<ConsultingType>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      callAvailable: freezed == callAvailable
          ? _value.callAvailable
          : callAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      visitAvailable: freezed == visitAvailable
          ? _value.visitAvailable
          : visitAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      prosecutionAvailable: freezed == prosecutionAvailable
          ? _value.prosecutionAvailable
          : prosecutionAvailable // ignore: cast_nullable_to_non_nullable
              as String?,
      visitCost: freezed == visitCost
          ? _value.visitCost
          : visitCost // ignore: cast_nullable_to_non_nullable
              as int?,
      visitCommission: freezed == visitCommission
          ? _value.visitCommission
          : visitCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      visitsNo: freezed == visitsNo
          ? _value.visitsNo
          : visitsNo // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingDayes: freezed == bookingDayes
          ? _value.bookingDayes
          : bookingDayes // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  _$DatumImpl(
      {this.id,
      this.rate,
      this.ratesNo,
      this.name,
      @JsonKey(name: 'consultant_academic') this.consultantAcademic,
      @JsonKey(name: 'consult_cost') this.consultCost,
      @JsonKey(name: 'law_degree') this.lawDegree,
      @JsonKey(name: 'consulting_types')
      final List<ConsultingType>? consultingTypes,
      this.image,
      this.city,
      @JsonKey(name: 'call_available') this.callAvailable,
      @JsonKey(name: 'visit_available') this.visitAvailable,
      @JsonKey(name: 'prosecution_available') this.prosecutionAvailable,
      @JsonKey(name: 'visit_cost') this.visitCost,
      @JsonKey(name: 'visit_commission') this.visitCommission,
      this.visitsNo,
      this.address,
      this.lat,
      this.lng,
      this.balance,
      @JsonKey(name: 'is_featured') this.isFeatured,
      @JsonKey(name: 'booking_dayes') this.bookingDayes})
      : _consultingTypes = consultingTypes;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final int? id;
  @override
  final double? rate;
  @override
  final int? ratesNo;
  @override
  final String? name;
  @override
  @JsonKey(name: 'consultant_academic')
  final String? consultantAcademic;
  @override
  @JsonKey(name: 'consult_cost')
  final int? consultCost;
  @override
  @JsonKey(name: 'law_degree')
  final LawDegree? lawDegree;
  final List<ConsultingType>? _consultingTypes;
  @override
  @JsonKey(name: 'consulting_types')
  List<ConsultingType>? get consultingTypes {
    final value = _consultingTypes;
    if (value == null) return null;
    if (_consultingTypes is EqualUnmodifiableListView) return _consultingTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? image;
  @override
  final City? city;
  @override
  @JsonKey(name: 'call_available')
  final int? callAvailable;
  @override
  @JsonKey(name: 'visit_available')
  final int? visitAvailable;
  @override
  @JsonKey(name: 'prosecution_available')
  final String? prosecutionAvailable;
  @override
  @JsonKey(name: 'visit_cost')
  final int? visitCost;
  @override
  @JsonKey(name: 'visit_commission')
  final int? visitCommission;
  @override
  final int? visitsNo;
  @override
  final String? address;
  @override
  final String? lat;
  @override
  final String? lng;
  @override
  final String? balance;
  @override
  @JsonKey(name: 'is_featured')
  final int? isFeatured;
  @override
  @JsonKey(name: 'booking_dayes')
  final dynamic bookingDayes;

  @override
  String toString() {
    return 'Datum(id: $id, rate: $rate, ratesNo: $ratesNo, name: $name, consultantAcademic: $consultantAcademic, consultCost: $consultCost, lawDegree: $lawDegree, consultingTypes: $consultingTypes, image: $image, city: $city, callAvailable: $callAvailable, visitAvailable: $visitAvailable, prosecutionAvailable: $prosecutionAvailable, visitCost: $visitCost, visitCommission: $visitCommission, visitsNo: $visitsNo, address: $address, lat: $lat, lng: $lng, balance: $balance, isFeatured: $isFeatured, bookingDayes: $bookingDayes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.ratesNo, ratesNo) || other.ratesNo == ratesNo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.consultantAcademic, consultantAcademic) ||
                other.consultantAcademic == consultantAcademic) &&
            (identical(other.consultCost, consultCost) ||
                other.consultCost == consultCost) &&
            (identical(other.lawDegree, lawDegree) ||
                other.lawDegree == lawDegree) &&
            const DeepCollectionEquality()
                .equals(other._consultingTypes, _consultingTypes) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.callAvailable, callAvailable) ||
                other.callAvailable == callAvailable) &&
            (identical(other.visitAvailable, visitAvailable) ||
                other.visitAvailable == visitAvailable) &&
            (identical(other.prosecutionAvailable, prosecutionAvailable) ||
                other.prosecutionAvailable == prosecutionAvailable) &&
            (identical(other.visitCost, visitCost) ||
                other.visitCost == visitCost) &&
            (identical(other.visitCommission, visitCommission) ||
                other.visitCommission == visitCommission) &&
            (identical(other.visitsNo, visitsNo) ||
                other.visitsNo == visitsNo) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            const DeepCollectionEquality()
                .equals(other.bookingDayes, bookingDayes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        rate,
        ratesNo,
        name,
        consultantAcademic,
        consultCost,
        lawDegree,
        const DeepCollectionEquality().hash(_consultingTypes),
        image,
        city,
        callAvailable,
        visitAvailable,
        prosecutionAvailable,
        visitCost,
        visitCommission,
        visitsNo,
        address,
        lat,
        lng,
        balance,
        isFeatured,
        const DeepCollectionEquality().hash(bookingDayes)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  factory _Datum(
      {final int? id,
      final double? rate,
      final int? ratesNo,
      final String? name,
      @JsonKey(name: 'consultant_academic') final String? consultantAcademic,
      @JsonKey(name: 'consult_cost') final int? consultCost,
      @JsonKey(name: 'law_degree') final LawDegree? lawDegree,
      @JsonKey(name: 'consulting_types')
      final List<ConsultingType>? consultingTypes,
      final String? image,
      final City? city,
      @JsonKey(name: 'call_available') final int? callAvailable,
      @JsonKey(name: 'visit_available') final int? visitAvailable,
      @JsonKey(name: 'prosecution_available')
      final String? prosecutionAvailable,
      @JsonKey(name: 'visit_cost') final int? visitCost,
      @JsonKey(name: 'visit_commission') final int? visitCommission,
      final int? visitsNo,
      final String? address,
      final String? lat,
      final String? lng,
      final String? balance,
      @JsonKey(name: 'is_featured') final int? isFeatured,
      @JsonKey(name: 'booking_dayes')
      final dynamic bookingDayes}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  int? get id;
  @override
  double? get rate;
  @override
  int? get ratesNo;
  @override
  String? get name;
  @override
  @JsonKey(name: 'consultant_academic')
  String? get consultantAcademic;
  @override
  @JsonKey(name: 'consult_cost')
  int? get consultCost;
  @override
  @JsonKey(name: 'law_degree')
  LawDegree? get lawDegree;
  @override
  @JsonKey(name: 'consulting_types')
  List<ConsultingType>? get consultingTypes;
  @override
  String? get image;
  @override
  City? get city;
  @override
  @JsonKey(name: 'call_available')
  int? get callAvailable;
  @override
  @JsonKey(name: 'visit_available')
  int? get visitAvailable;
  @override
  @JsonKey(name: 'prosecution_available')
  String? get prosecutionAvailable;
  @override
  @JsonKey(name: 'visit_cost')
  int? get visitCost;
  @override
  @JsonKey(name: 'visit_commission')
  int? get visitCommission;
  @override
  int? get visitsNo;
  @override
  String? get address;
  @override
  String? get lat;
  @override
  String? get lng;
  @override
  String? get balance;
  @override
  @JsonKey(name: 'is_featured')
  int? get isFeatured;
  @override
  @JsonKey(name: 'booking_dayes')
  dynamic get bookingDayes;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
