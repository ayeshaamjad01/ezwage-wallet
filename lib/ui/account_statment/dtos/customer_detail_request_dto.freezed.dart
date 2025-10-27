// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_detail_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerDetailRequestDto {

 String get mobileNo; String get version; Map<String, dynamic> get extInfo;
/// Create a copy of CustomerDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDetailRequestDtoCopyWith<CustomerDetailRequestDto> get copyWith => _$CustomerDetailRequestDtoCopyWithImpl<CustomerDetailRequestDto>(this as CustomerDetailRequestDto, _$identity);

  /// Serializes this CustomerDetailRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerDetailRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,version,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'CustomerDetailRequestDto(mobileNo: $mobileNo, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $CustomerDetailRequestDtoCopyWith<$Res>  {
  factory $CustomerDetailRequestDtoCopyWith(CustomerDetailRequestDto value, $Res Function(CustomerDetailRequestDto) _then) = _$CustomerDetailRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobileNo, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$CustomerDetailRequestDtoCopyWithImpl<$Res>
    implements $CustomerDetailRequestDtoCopyWith<$Res> {
  _$CustomerDetailRequestDtoCopyWithImpl(this._self, this._then);

  final CustomerDetailRequestDto _self;
  final $Res Function(CustomerDetailRequestDto) _then;

/// Create a copy of CustomerDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNo = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerDetailRequestDto].
extension CustomerDetailRequestDtoPatterns on CustomerDetailRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerDetailRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerDetailRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerDetailRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CustomerDetailRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerDetailRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerDetailRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileNo,  String version,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerDetailRequestDto() when $default != null:
return $default(_that.mobileNo,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileNo,  String version,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _CustomerDetailRequestDto():
return $default(_that.mobileNo,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileNo,  String version,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _CustomerDetailRequestDto() when $default != null:
return $default(_that.mobileNo,_that.version,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerDetailRequestDto implements CustomerDetailRequestDto {
  const _CustomerDetailRequestDto({required this.mobileNo, this.version = "v1", final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _CustomerDetailRequestDto.fromJson(Map<String, dynamic> json) => _$CustomerDetailRequestDtoFromJson(json);

@override final  String mobileNo;
@override@JsonKey() final  String version;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of CustomerDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDetailRequestDtoCopyWith<_CustomerDetailRequestDto> get copyWith => __$CustomerDetailRequestDtoCopyWithImpl<_CustomerDetailRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDetailRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerDetailRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,version,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'CustomerDetailRequestDto(mobileNo: $mobileNo, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$CustomerDetailRequestDtoCopyWith<$Res> implements $CustomerDetailRequestDtoCopyWith<$Res> {
  factory _$CustomerDetailRequestDtoCopyWith(_CustomerDetailRequestDto value, $Res Function(_CustomerDetailRequestDto) _then) = __$CustomerDetailRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobileNo, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$CustomerDetailRequestDtoCopyWithImpl<$Res>
    implements _$CustomerDetailRequestDtoCopyWith<$Res> {
  __$CustomerDetailRequestDtoCopyWithImpl(this._self, this._then);

  final _CustomerDetailRequestDto _self;
  final $Res Function(_CustomerDetailRequestDto) _then;

/// Create a copy of CustomerDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNo = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_CustomerDetailRequestDto(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
