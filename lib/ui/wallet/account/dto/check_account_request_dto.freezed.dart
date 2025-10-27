// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_account_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckAccountRequestDto {

 String get cnicIssuanceDate; String? get walletType; String get cnicNo; String get mobileNo; Map get extInfo;
/// Create a copy of CheckAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckAccountRequestDtoCopyWith<CheckAccountRequestDto> get copyWith => _$CheckAccountRequestDtoCopyWithImpl<CheckAccountRequestDto>(this as CheckAccountRequestDto, _$identity);

  /// Serializes this CheckAccountRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAccountRequestDto&&(identical(other.cnicIssuanceDate, cnicIssuanceDate) || other.cnicIssuanceDate == cnicIssuanceDate)&&(identical(other.walletType, walletType) || other.walletType == walletType)&&(identical(other.cnicNo, cnicNo) || other.cnicNo == cnicNo)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnicIssuanceDate,walletType,cnicNo,mobileNo,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'CheckAccountRequestDto(cnicIssuanceDate: $cnicIssuanceDate, walletType: $walletType, cnicNo: $cnicNo, mobileNo: $mobileNo, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $CheckAccountRequestDtoCopyWith<$Res>  {
  factory $CheckAccountRequestDtoCopyWith(CheckAccountRequestDto value, $Res Function(CheckAccountRequestDto) _then) = _$CheckAccountRequestDtoCopyWithImpl;
@useResult
$Res call({
 String cnicIssuanceDate, String? walletType, String cnicNo, String mobileNo, Map extInfo
});




}
/// @nodoc
class _$CheckAccountRequestDtoCopyWithImpl<$Res>
    implements $CheckAccountRequestDtoCopyWith<$Res> {
  _$CheckAccountRequestDtoCopyWithImpl(this._self, this._then);

  final CheckAccountRequestDto _self;
  final $Res Function(CheckAccountRequestDto) _then;

/// Create a copy of CheckAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cnicIssuanceDate = null,Object? walletType = freezed,Object? cnicNo = null,Object? mobileNo = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
cnicIssuanceDate: null == cnicIssuanceDate ? _self.cnicIssuanceDate : cnicIssuanceDate // ignore: cast_nullable_to_non_nullable
as String,walletType: freezed == walletType ? _self.walletType : walletType // ignore: cast_nullable_to_non_nullable
as String?,cnicNo: null == cnicNo ? _self.cnicNo : cnicNo // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckAccountRequestDto].
extension CheckAccountRequestDtoPatterns on CheckAccountRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckAccountRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckAccountRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckAccountRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CheckAccountRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckAccountRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CheckAccountRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cnicIssuanceDate,  String? walletType,  String cnicNo,  String mobileNo,  Map extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckAccountRequestDto() when $default != null:
return $default(_that.cnicIssuanceDate,_that.walletType,_that.cnicNo,_that.mobileNo,_that.extInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cnicIssuanceDate,  String? walletType,  String cnicNo,  String mobileNo,  Map extInfo)  $default,) {final _that = this;
switch (_that) {
case _CheckAccountRequestDto():
return $default(_that.cnicIssuanceDate,_that.walletType,_that.cnicNo,_that.mobileNo,_that.extInfo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cnicIssuanceDate,  String? walletType,  String cnicNo,  String mobileNo,  Map extInfo)?  $default,) {final _that = this;
switch (_that) {
case _CheckAccountRequestDto() when $default != null:
return $default(_that.cnicIssuanceDate,_that.walletType,_that.cnicNo,_that.mobileNo,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckAccountRequestDto implements CheckAccountRequestDto {
  const _CheckAccountRequestDto({required this.cnicIssuanceDate, this.walletType, required this.cnicNo, required this.mobileNo, final  Map extInfo = const {}}): _extInfo = extInfo;
  factory _CheckAccountRequestDto.fromJson(Map<String, dynamic> json) => _$CheckAccountRequestDtoFromJson(json);

@override final  String cnicIssuanceDate;
@override final  String? walletType;
@override final  String cnicNo;
@override final  String mobileNo;
 final  Map _extInfo;
@override@JsonKey() Map get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of CheckAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckAccountRequestDtoCopyWith<_CheckAccountRequestDto> get copyWith => __$CheckAccountRequestDtoCopyWithImpl<_CheckAccountRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckAccountRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAccountRequestDto&&(identical(other.cnicIssuanceDate, cnicIssuanceDate) || other.cnicIssuanceDate == cnicIssuanceDate)&&(identical(other.walletType, walletType) || other.walletType == walletType)&&(identical(other.cnicNo, cnicNo) || other.cnicNo == cnicNo)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnicIssuanceDate,walletType,cnicNo,mobileNo,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'CheckAccountRequestDto(cnicIssuanceDate: $cnicIssuanceDate, walletType: $walletType, cnicNo: $cnicNo, mobileNo: $mobileNo, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$CheckAccountRequestDtoCopyWith<$Res> implements $CheckAccountRequestDtoCopyWith<$Res> {
  factory _$CheckAccountRequestDtoCopyWith(_CheckAccountRequestDto value, $Res Function(_CheckAccountRequestDto) _then) = __$CheckAccountRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String cnicIssuanceDate, String? walletType, String cnicNo, String mobileNo, Map extInfo
});




}
/// @nodoc
class __$CheckAccountRequestDtoCopyWithImpl<$Res>
    implements _$CheckAccountRequestDtoCopyWith<$Res> {
  __$CheckAccountRequestDtoCopyWithImpl(this._self, this._then);

  final _CheckAccountRequestDto _self;
  final $Res Function(_CheckAccountRequestDto) _then;

/// Create a copy of CheckAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cnicIssuanceDate = null,Object? walletType = freezed,Object? cnicNo = null,Object? mobileNo = null,Object? extInfo = null,}) {
  return _then(_CheckAccountRequestDto(
cnicIssuanceDate: null == cnicIssuanceDate ? _self.cnicIssuanceDate : cnicIssuanceDate // ignore: cast_nullable_to_non_nullable
as String,walletType: freezed == walletType ? _self.walletType : walletType // ignore: cast_nullable_to_non_nullable
as String?,cnicNo: null == cnicNo ? _self.cnicNo : cnicNo // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}


}

// dart format on
