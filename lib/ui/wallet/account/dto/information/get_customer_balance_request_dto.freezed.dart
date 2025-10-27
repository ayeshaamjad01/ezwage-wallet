// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_customer_balance_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCustomerBalanceRequestDto {

 String get mobileNo; String get customerId; String get version; Map<String, dynamic> get extInfo;
/// Create a copy of GetCustomerBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCustomerBalanceRequestDtoCopyWith<GetCustomerBalanceRequestDto> get copyWith => _$GetCustomerBalanceRequestDtoCopyWithImpl<GetCustomerBalanceRequestDto>(this as GetCustomerBalanceRequestDto, _$identity);

  /// Serializes this GetCustomerBalanceRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCustomerBalanceRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,customerId,version,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'GetCustomerBalanceRequestDto(mobileNo: $mobileNo, customerId: $customerId, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $GetCustomerBalanceRequestDtoCopyWith<$Res>  {
  factory $GetCustomerBalanceRequestDtoCopyWith(GetCustomerBalanceRequestDto value, $Res Function(GetCustomerBalanceRequestDto) _then) = _$GetCustomerBalanceRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobileNo, String customerId, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$GetCustomerBalanceRequestDtoCopyWithImpl<$Res>
    implements $GetCustomerBalanceRequestDtoCopyWith<$Res> {
  _$GetCustomerBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final GetCustomerBalanceRequestDto _self;
  final $Res Function(GetCustomerBalanceRequestDto) _then;

/// Create a copy of GetCustomerBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNo = null,Object? customerId = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCustomerBalanceRequestDto].
extension GetCustomerBalanceRequestDtoPatterns on GetCustomerBalanceRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCustomerBalanceRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCustomerBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCustomerBalanceRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _GetCustomerBalanceRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCustomerBalanceRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetCustomerBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileNo,  String customerId,  String version,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCustomerBalanceRequestDto() when $default != null:
return $default(_that.mobileNo,_that.customerId,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileNo,  String customerId,  String version,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _GetCustomerBalanceRequestDto():
return $default(_that.mobileNo,_that.customerId,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileNo,  String customerId,  String version,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _GetCustomerBalanceRequestDto() when $default != null:
return $default(_that.mobileNo,_that.customerId,_that.version,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCustomerBalanceRequestDto implements GetCustomerBalanceRequestDto {
  const _GetCustomerBalanceRequestDto({required this.mobileNo, required this.customerId, this.version = "v1", final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _GetCustomerBalanceRequestDto.fromJson(Map<String, dynamic> json) => _$GetCustomerBalanceRequestDtoFromJson(json);

@override final  String mobileNo;
@override final  String customerId;
@override@JsonKey() final  String version;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of GetCustomerBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCustomerBalanceRequestDtoCopyWith<_GetCustomerBalanceRequestDto> get copyWith => __$GetCustomerBalanceRequestDtoCopyWithImpl<_GetCustomerBalanceRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCustomerBalanceRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCustomerBalanceRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,customerId,version,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'GetCustomerBalanceRequestDto(mobileNo: $mobileNo, customerId: $customerId, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$GetCustomerBalanceRequestDtoCopyWith<$Res> implements $GetCustomerBalanceRequestDtoCopyWith<$Res> {
  factory _$GetCustomerBalanceRequestDtoCopyWith(_GetCustomerBalanceRequestDto value, $Res Function(_GetCustomerBalanceRequestDto) _then) = __$GetCustomerBalanceRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobileNo, String customerId, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$GetCustomerBalanceRequestDtoCopyWithImpl<$Res>
    implements _$GetCustomerBalanceRequestDtoCopyWith<$Res> {
  __$GetCustomerBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final _GetCustomerBalanceRequestDto _self;
  final $Res Function(_GetCustomerBalanceRequestDto) _then;

/// Create a copy of GetCustomerBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNo = null,Object? customerId = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_GetCustomerBalanceRequestDto(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
