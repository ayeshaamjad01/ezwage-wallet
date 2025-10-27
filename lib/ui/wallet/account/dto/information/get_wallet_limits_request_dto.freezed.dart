// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_wallet_limits_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetWalletLimitsRequestDto {

 String get mobile; String get useCase; String get version;
/// Create a copy of GetWalletLimitsRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWalletLimitsRequestDtoCopyWith<GetWalletLimitsRequestDto> get copyWith => _$GetWalletLimitsRequestDtoCopyWithImpl<GetWalletLimitsRequestDto>(this as GetWalletLimitsRequestDto, _$identity);

  /// Serializes this GetWalletLimitsRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWalletLimitsRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.useCase, useCase) || other.useCase == useCase)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,useCase,version);

@override
String toString() {
  return 'GetWalletLimitsRequestDto(mobile: $mobile, useCase: $useCase, version: $version)';
}


}

/// @nodoc
abstract mixin class $GetWalletLimitsRequestDtoCopyWith<$Res>  {
  factory $GetWalletLimitsRequestDtoCopyWith(GetWalletLimitsRequestDto value, $Res Function(GetWalletLimitsRequestDto) _then) = _$GetWalletLimitsRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobile, String useCase, String version
});




}
/// @nodoc
class _$GetWalletLimitsRequestDtoCopyWithImpl<$Res>
    implements $GetWalletLimitsRequestDtoCopyWith<$Res> {
  _$GetWalletLimitsRequestDtoCopyWithImpl(this._self, this._then);

  final GetWalletLimitsRequestDto _self;
  final $Res Function(GetWalletLimitsRequestDto) _then;

/// Create a copy of GetWalletLimitsRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobile = null,Object? useCase = null,Object? version = null,}) {
  return _then(_self.copyWith(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,useCase: null == useCase ? _self.useCase : useCase // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWalletLimitsRequestDto].
extension GetWalletLimitsRequestDtoPatterns on GetWalletLimitsRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWalletLimitsRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWalletLimitsRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWalletLimitsRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _GetWalletLimitsRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWalletLimitsRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetWalletLimitsRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobile,  String useCase,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetWalletLimitsRequestDto() when $default != null:
return $default(_that.mobile,_that.useCase,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobile,  String useCase,  String version)  $default,) {final _that = this;
switch (_that) {
case _GetWalletLimitsRequestDto():
return $default(_that.mobile,_that.useCase,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobile,  String useCase,  String version)?  $default,) {final _that = this;
switch (_that) {
case _GetWalletLimitsRequestDto() when $default != null:
return $default(_that.mobile,_that.useCase,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetWalletLimitsRequestDto implements GetWalletLimitsRequestDto {
  const _GetWalletLimitsRequestDto({required this.mobile, required this.useCase, this.version = "version"});
  factory _GetWalletLimitsRequestDto.fromJson(Map<String, dynamic> json) => _$GetWalletLimitsRequestDtoFromJson(json);

@override final  String mobile;
@override final  String useCase;
@override@JsonKey() final  String version;

/// Create a copy of GetWalletLimitsRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWalletLimitsRequestDtoCopyWith<_GetWalletLimitsRequestDto> get copyWith => __$GetWalletLimitsRequestDtoCopyWithImpl<_GetWalletLimitsRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetWalletLimitsRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWalletLimitsRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.useCase, useCase) || other.useCase == useCase)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,useCase,version);

@override
String toString() {
  return 'GetWalletLimitsRequestDto(mobile: $mobile, useCase: $useCase, version: $version)';
}


}

/// @nodoc
abstract mixin class _$GetWalletLimitsRequestDtoCopyWith<$Res> implements $GetWalletLimitsRequestDtoCopyWith<$Res> {
  factory _$GetWalletLimitsRequestDtoCopyWith(_GetWalletLimitsRequestDto value, $Res Function(_GetWalletLimitsRequestDto) _then) = __$GetWalletLimitsRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobile, String useCase, String version
});




}
/// @nodoc
class __$GetWalletLimitsRequestDtoCopyWithImpl<$Res>
    implements _$GetWalletLimitsRequestDtoCopyWith<$Res> {
  __$GetWalletLimitsRequestDtoCopyWithImpl(this._self, this._then);

  final _GetWalletLimitsRequestDto _self;
  final $Res Function(_GetWalletLimitsRequestDto) _then;

/// Create a copy of GetWalletLimitsRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobile = null,Object? useCase = null,Object? version = null,}) {
  return _then(_GetWalletLimitsRequestDto(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,useCase: null == useCase ? _self.useCase : useCase // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
