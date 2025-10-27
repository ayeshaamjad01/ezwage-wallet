// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_mini_statement_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerMiniStatementRequestDto {

 String get mobileNo; String get version; String get customerId; Map<String, dynamic> get extInfo;
/// Create a copy of CustomerMiniStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerMiniStatementRequestDtoCopyWith<CustomerMiniStatementRequestDto> get copyWith => _$CustomerMiniStatementRequestDtoCopyWithImpl<CustomerMiniStatementRequestDto>(this as CustomerMiniStatementRequestDto, _$identity);

  /// Serializes this CustomerMiniStatementRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerMiniStatementRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.version, version) || other.version == version)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,version,customerId,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'CustomerMiniStatementRequestDto(mobileNo: $mobileNo, version: $version, customerId: $customerId, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $CustomerMiniStatementRequestDtoCopyWith<$Res>  {
  factory $CustomerMiniStatementRequestDtoCopyWith(CustomerMiniStatementRequestDto value, $Res Function(CustomerMiniStatementRequestDto) _then) = _$CustomerMiniStatementRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobileNo, String version, String customerId, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$CustomerMiniStatementRequestDtoCopyWithImpl<$Res>
    implements $CustomerMiniStatementRequestDtoCopyWith<$Res> {
  _$CustomerMiniStatementRequestDtoCopyWithImpl(this._self, this._then);

  final CustomerMiniStatementRequestDto _self;
  final $Res Function(CustomerMiniStatementRequestDto) _then;

/// Create a copy of CustomerMiniStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNo = null,Object? version = null,Object? customerId = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerMiniStatementRequestDto].
extension CustomerMiniStatementRequestDtoPatterns on CustomerMiniStatementRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerMiniStatementRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerMiniStatementRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerMiniStatementRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CustomerMiniStatementRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerMiniStatementRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerMiniStatementRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileNo,  String version,  String customerId,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerMiniStatementRequestDto() when $default != null:
return $default(_that.mobileNo,_that.version,_that.customerId,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileNo,  String version,  String customerId,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _CustomerMiniStatementRequestDto():
return $default(_that.mobileNo,_that.version,_that.customerId,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileNo,  String version,  String customerId,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _CustomerMiniStatementRequestDto() when $default != null:
return $default(_that.mobileNo,_that.version,_that.customerId,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerMiniStatementRequestDto implements CustomerMiniStatementRequestDto {
  const _CustomerMiniStatementRequestDto({required this.mobileNo, this.version = "v1", required this.customerId, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _CustomerMiniStatementRequestDto.fromJson(Map<String, dynamic> json) => _$CustomerMiniStatementRequestDtoFromJson(json);

@override final  String mobileNo;
@override@JsonKey() final  String version;
@override final  String customerId;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of CustomerMiniStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerMiniStatementRequestDtoCopyWith<_CustomerMiniStatementRequestDto> get copyWith => __$CustomerMiniStatementRequestDtoCopyWithImpl<_CustomerMiniStatementRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerMiniStatementRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerMiniStatementRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.version, version) || other.version == version)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,version,customerId,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'CustomerMiniStatementRequestDto(mobileNo: $mobileNo, version: $version, customerId: $customerId, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$CustomerMiniStatementRequestDtoCopyWith<$Res> implements $CustomerMiniStatementRequestDtoCopyWith<$Res> {
  factory _$CustomerMiniStatementRequestDtoCopyWith(_CustomerMiniStatementRequestDto value, $Res Function(_CustomerMiniStatementRequestDto) _then) = __$CustomerMiniStatementRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobileNo, String version, String customerId, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$CustomerMiniStatementRequestDtoCopyWithImpl<$Res>
    implements _$CustomerMiniStatementRequestDtoCopyWith<$Res> {
  __$CustomerMiniStatementRequestDtoCopyWithImpl(this._self, this._then);

  final _CustomerMiniStatementRequestDto _self;
  final $Res Function(_CustomerMiniStatementRequestDto) _then;

/// Create a copy of CustomerMiniStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNo = null,Object? version = null,Object? customerId = null,Object? extInfo = null,}) {
  return _then(_CustomerMiniStatementRequestDto(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
