// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secret_kyc_question_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecretKycQuestionRequestDto {

 String get mobile; String get version;
/// Create a copy of SecretKycQuestionRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecretKycQuestionRequestDtoCopyWith<SecretKycQuestionRequestDto> get copyWith => _$SecretKycQuestionRequestDtoCopyWithImpl<SecretKycQuestionRequestDto>(this as SecretKycQuestionRequestDto, _$identity);

  /// Serializes this SecretKycQuestionRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecretKycQuestionRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,version);

@override
String toString() {
  return 'SecretKycQuestionRequestDto(mobile: $mobile, version: $version)';
}


}

/// @nodoc
abstract mixin class $SecretKycQuestionRequestDtoCopyWith<$Res>  {
  factory $SecretKycQuestionRequestDtoCopyWith(SecretKycQuestionRequestDto value, $Res Function(SecretKycQuestionRequestDto) _then) = _$SecretKycQuestionRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobile, String version
});




}
/// @nodoc
class _$SecretKycQuestionRequestDtoCopyWithImpl<$Res>
    implements $SecretKycQuestionRequestDtoCopyWith<$Res> {
  _$SecretKycQuestionRequestDtoCopyWithImpl(this._self, this._then);

  final SecretKycQuestionRequestDto _self;
  final $Res Function(SecretKycQuestionRequestDto) _then;

/// Create a copy of SecretKycQuestionRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobile = null,Object? version = null,}) {
  return _then(_self.copyWith(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SecretKycQuestionRequestDto].
extension SecretKycQuestionRequestDtoPatterns on SecretKycQuestionRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecretKycQuestionRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecretKycQuestionRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecretKycQuestionRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SecretKycQuestionRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecretKycQuestionRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SecretKycQuestionRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobile,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecretKycQuestionRequestDto() when $default != null:
return $default(_that.mobile,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobile,  String version)  $default,) {final _that = this;
switch (_that) {
case _SecretKycQuestionRequestDto():
return $default(_that.mobile,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobile,  String version)?  $default,) {final _that = this;
switch (_that) {
case _SecretKycQuestionRequestDto() when $default != null:
return $default(_that.mobile,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecretKycQuestionRequestDto implements SecretKycQuestionRequestDto {
  const _SecretKycQuestionRequestDto({required this.mobile, this.version = "v1"});
  factory _SecretKycQuestionRequestDto.fromJson(Map<String, dynamic> json) => _$SecretKycQuestionRequestDtoFromJson(json);

@override final  String mobile;
@override@JsonKey() final  String version;

/// Create a copy of SecretKycQuestionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecretKycQuestionRequestDtoCopyWith<_SecretKycQuestionRequestDto> get copyWith => __$SecretKycQuestionRequestDtoCopyWithImpl<_SecretKycQuestionRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecretKycQuestionRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecretKycQuestionRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,version);

@override
String toString() {
  return 'SecretKycQuestionRequestDto(mobile: $mobile, version: $version)';
}


}

/// @nodoc
abstract mixin class _$SecretKycQuestionRequestDtoCopyWith<$Res> implements $SecretKycQuestionRequestDtoCopyWith<$Res> {
  factory _$SecretKycQuestionRequestDtoCopyWith(_SecretKycQuestionRequestDto value, $Res Function(_SecretKycQuestionRequestDto) _then) = __$SecretKycQuestionRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobile, String version
});




}
/// @nodoc
class __$SecretKycQuestionRequestDtoCopyWithImpl<$Res>
    implements _$SecretKycQuestionRequestDtoCopyWith<$Res> {
  __$SecretKycQuestionRequestDtoCopyWithImpl(this._self, this._then);

  final _SecretKycQuestionRequestDto _self;
  final $Res Function(_SecretKycQuestionRequestDto) _then;

/// Create a copy of SecretKycQuestionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobile = null,Object? version = null,}) {
  return _then(_SecretKycQuestionRequestDto(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
