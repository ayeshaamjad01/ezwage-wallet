// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pin_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePinRequestDto {

 String get mobileNo; String get oldPin; String get newPin;
/// Create a copy of ChangePinRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePinRequestDtoCopyWith<ChangePinRequestDto> get copyWith => _$ChangePinRequestDtoCopyWithImpl<ChangePinRequestDto>(this as ChangePinRequestDto, _$identity);

  /// Serializes this ChangePinRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePinRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.oldPin, oldPin) || other.oldPin == oldPin)&&(identical(other.newPin, newPin) || other.newPin == newPin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,oldPin,newPin);

@override
String toString() {
  return 'ChangePinRequestDto(mobileNo: $mobileNo, oldPin: $oldPin, newPin: $newPin)';
}


}

/// @nodoc
abstract mixin class $ChangePinRequestDtoCopyWith<$Res>  {
  factory $ChangePinRequestDtoCopyWith(ChangePinRequestDto value, $Res Function(ChangePinRequestDto) _then) = _$ChangePinRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobileNo, String oldPin, String newPin
});




}
/// @nodoc
class _$ChangePinRequestDtoCopyWithImpl<$Res>
    implements $ChangePinRequestDtoCopyWith<$Res> {
  _$ChangePinRequestDtoCopyWithImpl(this._self, this._then);

  final ChangePinRequestDto _self;
  final $Res Function(ChangePinRequestDto) _then;

/// Create a copy of ChangePinRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNo = null,Object? oldPin = null,Object? newPin = null,}) {
  return _then(_self.copyWith(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,oldPin: null == oldPin ? _self.oldPin : oldPin // ignore: cast_nullable_to_non_nullable
as String,newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePinRequestDto].
extension ChangePinRequestDtoPatterns on ChangePinRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePinRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePinRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePinRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ChangePinRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePinRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePinRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileNo,  String oldPin,  String newPin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePinRequestDto() when $default != null:
return $default(_that.mobileNo,_that.oldPin,_that.newPin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileNo,  String oldPin,  String newPin)  $default,) {final _that = this;
switch (_that) {
case _ChangePinRequestDto():
return $default(_that.mobileNo,_that.oldPin,_that.newPin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileNo,  String oldPin,  String newPin)?  $default,) {final _that = this;
switch (_that) {
case _ChangePinRequestDto() when $default != null:
return $default(_that.mobileNo,_that.oldPin,_that.newPin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePinRequestDto implements ChangePinRequestDto {
  const _ChangePinRequestDto({required this.mobileNo, required this.oldPin, required this.newPin});
  factory _ChangePinRequestDto.fromJson(Map<String, dynamic> json) => _$ChangePinRequestDtoFromJson(json);

@override final  String mobileNo;
@override final  String oldPin;
@override final  String newPin;

/// Create a copy of ChangePinRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePinRequestDtoCopyWith<_ChangePinRequestDto> get copyWith => __$ChangePinRequestDtoCopyWithImpl<_ChangePinRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePinRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePinRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.oldPin, oldPin) || other.oldPin == oldPin)&&(identical(other.newPin, newPin) || other.newPin == newPin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,oldPin,newPin);

@override
String toString() {
  return 'ChangePinRequestDto(mobileNo: $mobileNo, oldPin: $oldPin, newPin: $newPin)';
}


}

/// @nodoc
abstract mixin class _$ChangePinRequestDtoCopyWith<$Res> implements $ChangePinRequestDtoCopyWith<$Res> {
  factory _$ChangePinRequestDtoCopyWith(_ChangePinRequestDto value, $Res Function(_ChangePinRequestDto) _then) = __$ChangePinRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobileNo, String oldPin, String newPin
});




}
/// @nodoc
class __$ChangePinRequestDtoCopyWithImpl<$Res>
    implements _$ChangePinRequestDtoCopyWith<$Res> {
  __$ChangePinRequestDtoCopyWithImpl(this._self, this._then);

  final _ChangePinRequestDto _self;
  final $Res Function(_ChangePinRequestDto) _then;

/// Create a copy of ChangePinRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNo = null,Object? oldPin = null,Object? newPin = null,}) {
  return _then(_ChangePinRequestDto(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,oldPin: null == oldPin ? _self.oldPin : oldPin // ignore: cast_nullable_to_non_nullable
as String,newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
