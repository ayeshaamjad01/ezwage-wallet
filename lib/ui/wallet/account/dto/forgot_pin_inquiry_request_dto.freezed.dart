// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pin_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPinInquiryRequestDto {

 String get mobile;
/// Create a copy of ForgotPinInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPinInquiryRequestDtoCopyWith<ForgotPinInquiryRequestDto> get copyWith => _$ForgotPinInquiryRequestDtoCopyWithImpl<ForgotPinInquiryRequestDto>(this as ForgotPinInquiryRequestDto, _$identity);

  /// Serializes this ForgotPinInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPinInquiryRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile);

@override
String toString() {
  return 'ForgotPinInquiryRequestDto(mobile: $mobile)';
}


}

/// @nodoc
abstract mixin class $ForgotPinInquiryRequestDtoCopyWith<$Res>  {
  factory $ForgotPinInquiryRequestDtoCopyWith(ForgotPinInquiryRequestDto value, $Res Function(ForgotPinInquiryRequestDto) _then) = _$ForgotPinInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobile
});




}
/// @nodoc
class _$ForgotPinInquiryRequestDtoCopyWithImpl<$Res>
    implements $ForgotPinInquiryRequestDtoCopyWith<$Res> {
  _$ForgotPinInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final ForgotPinInquiryRequestDto _self;
  final $Res Function(ForgotPinInquiryRequestDto) _then;

/// Create a copy of ForgotPinInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobile = null,}) {
  return _then(_self.copyWith(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPinInquiryRequestDto].
extension ForgotPinInquiryRequestDtoPatterns on ForgotPinInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPinInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPinInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPinInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPinInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPinInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPinInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPinInquiryRequestDto() when $default != null:
return $default(_that.mobile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobile)  $default,) {final _that = this;
switch (_that) {
case _ForgotPinInquiryRequestDto():
return $default(_that.mobile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobile)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPinInquiryRequestDto() when $default != null:
return $default(_that.mobile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgotPinInquiryRequestDto implements ForgotPinInquiryRequestDto {
  const _ForgotPinInquiryRequestDto({required this.mobile});
  factory _ForgotPinInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$ForgotPinInquiryRequestDtoFromJson(json);

@override final  String mobile;

/// Create a copy of ForgotPinInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPinInquiryRequestDtoCopyWith<_ForgotPinInquiryRequestDto> get copyWith => __$ForgotPinInquiryRequestDtoCopyWithImpl<_ForgotPinInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotPinInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPinInquiryRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile);

@override
String toString() {
  return 'ForgotPinInquiryRequestDto(mobile: $mobile)';
}


}

/// @nodoc
abstract mixin class _$ForgotPinInquiryRequestDtoCopyWith<$Res> implements $ForgotPinInquiryRequestDtoCopyWith<$Res> {
  factory _$ForgotPinInquiryRequestDtoCopyWith(_ForgotPinInquiryRequestDto value, $Res Function(_ForgotPinInquiryRequestDto) _then) = __$ForgotPinInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobile
});




}
/// @nodoc
class __$ForgotPinInquiryRequestDtoCopyWithImpl<$Res>
    implements _$ForgotPinInquiryRequestDtoCopyWith<$Res> {
  __$ForgotPinInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _ForgotPinInquiryRequestDto _self;
  final $Res Function(_ForgotPinInquiryRequestDto) _then;

/// Create a copy of ForgotPinInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobile = null,}) {
  return _then(_ForgotPinInquiryRequestDto(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
