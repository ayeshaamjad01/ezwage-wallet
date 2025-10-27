// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pin_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPinResponseDto {

 String get verificationCode; String get mobile; String get otp; String get newPin; String get version;
/// Create a copy of ForgotPinResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPinResponseDtoCopyWith<ForgotPinResponseDto> get copyWith => _$ForgotPinResponseDtoCopyWithImpl<ForgotPinResponseDto>(this as ForgotPinResponseDto, _$identity);

  /// Serializes this ForgotPinResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPinResponseDto&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.newPin, newPin) || other.newPin == newPin)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationCode,mobile,otp,newPin,version);

@override
String toString() {
  return 'ForgotPinResponseDto(verificationCode: $verificationCode, mobile: $mobile, otp: $otp, newPin: $newPin, version: $version)';
}


}

/// @nodoc
abstract mixin class $ForgotPinResponseDtoCopyWith<$Res>  {
  factory $ForgotPinResponseDtoCopyWith(ForgotPinResponseDto value, $Res Function(ForgotPinResponseDto) _then) = _$ForgotPinResponseDtoCopyWithImpl;
@useResult
$Res call({
 String verificationCode, String mobile, String otp, String newPin, String version
});




}
/// @nodoc
class _$ForgotPinResponseDtoCopyWithImpl<$Res>
    implements $ForgotPinResponseDtoCopyWith<$Res> {
  _$ForgotPinResponseDtoCopyWithImpl(this._self, this._then);

  final ForgotPinResponseDto _self;
  final $Res Function(ForgotPinResponseDto) _then;

/// Create a copy of ForgotPinResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationCode = null,Object? mobile = null,Object? otp = null,Object? newPin = null,Object? version = null,}) {
  return _then(_self.copyWith(
verificationCode: null == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPinResponseDto].
extension ForgotPinResponseDtoPatterns on ForgotPinResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPinResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPinResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPinResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPinResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPinResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPinResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String verificationCode,  String mobile,  String otp,  String newPin,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPinResponseDto() when $default != null:
return $default(_that.verificationCode,_that.mobile,_that.otp,_that.newPin,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String verificationCode,  String mobile,  String otp,  String newPin,  String version)  $default,) {final _that = this;
switch (_that) {
case _ForgotPinResponseDto():
return $default(_that.verificationCode,_that.mobile,_that.otp,_that.newPin,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String verificationCode,  String mobile,  String otp,  String newPin,  String version)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPinResponseDto() when $default != null:
return $default(_that.verificationCode,_that.mobile,_that.otp,_that.newPin,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgotPinResponseDto implements ForgotPinResponseDto {
  const _ForgotPinResponseDto({required this.verificationCode, required this.mobile, required this.otp, required this.newPin, this.version = "v1"});
  factory _ForgotPinResponseDto.fromJson(Map<String, dynamic> json) => _$ForgotPinResponseDtoFromJson(json);

@override final  String verificationCode;
@override final  String mobile;
@override final  String otp;
@override final  String newPin;
@override@JsonKey() final  String version;

/// Create a copy of ForgotPinResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPinResponseDtoCopyWith<_ForgotPinResponseDto> get copyWith => __$ForgotPinResponseDtoCopyWithImpl<_ForgotPinResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotPinResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPinResponseDto&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.newPin, newPin) || other.newPin == newPin)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationCode,mobile,otp,newPin,version);

@override
String toString() {
  return 'ForgotPinResponseDto(verificationCode: $verificationCode, mobile: $mobile, otp: $otp, newPin: $newPin, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ForgotPinResponseDtoCopyWith<$Res> implements $ForgotPinResponseDtoCopyWith<$Res> {
  factory _$ForgotPinResponseDtoCopyWith(_ForgotPinResponseDto value, $Res Function(_ForgotPinResponseDto) _then) = __$ForgotPinResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String verificationCode, String mobile, String otp, String newPin, String version
});




}
/// @nodoc
class __$ForgotPinResponseDtoCopyWithImpl<$Res>
    implements _$ForgotPinResponseDtoCopyWith<$Res> {
  __$ForgotPinResponseDtoCopyWithImpl(this._self, this._then);

  final _ForgotPinResponseDto _self;
  final $Res Function(_ForgotPinResponseDto) _then;

/// Create a copy of ForgotPinResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationCode = null,Object? mobile = null,Object? otp = null,Object? newPin = null,Object? version = null,}) {
  return _then(_ForgotPinResponseDto(
verificationCode: null == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as String,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
