// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_rejection_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletRejectionUpdateRequestDto {

 String get cnicNumber; String get mobileNumber; String get version; String get verificationToken; String get birthPlace; String get name; String get livePicture;
/// Create a copy of WalletRejectionUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletRejectionUpdateRequestDtoCopyWith<WalletRejectionUpdateRequestDto> get copyWith => _$WalletRejectionUpdateRequestDtoCopyWithImpl<WalletRejectionUpdateRequestDto>(this as WalletRejectionUpdateRequestDto, _$identity);

  /// Serializes this WalletRejectionUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletRejectionUpdateRequestDto&&(identical(other.cnicNumber, cnicNumber) || other.cnicNumber == cnicNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.version, version) || other.version == version)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.name, name) || other.name == name)&&(identical(other.livePicture, livePicture) || other.livePicture == livePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnicNumber,mobileNumber,version,verificationToken,birthPlace,name,livePicture);

@override
String toString() {
  return 'WalletRejectionUpdateRequestDto(cnicNumber: $cnicNumber, mobileNumber: $mobileNumber, version: $version, verificationToken: $verificationToken, birthPlace: $birthPlace, name: $name, livePicture: $livePicture)';
}


}

/// @nodoc
abstract mixin class $WalletRejectionUpdateRequestDtoCopyWith<$Res>  {
  factory $WalletRejectionUpdateRequestDtoCopyWith(WalletRejectionUpdateRequestDto value, $Res Function(WalletRejectionUpdateRequestDto) _then) = _$WalletRejectionUpdateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String cnicNumber, String mobileNumber, String version, String verificationToken, String birthPlace, String name, String livePicture
});




}
/// @nodoc
class _$WalletRejectionUpdateRequestDtoCopyWithImpl<$Res>
    implements $WalletRejectionUpdateRequestDtoCopyWith<$Res> {
  _$WalletRejectionUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final WalletRejectionUpdateRequestDto _self;
  final $Res Function(WalletRejectionUpdateRequestDto) _then;

/// Create a copy of WalletRejectionUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cnicNumber = null,Object? mobileNumber = null,Object? version = null,Object? verificationToken = null,Object? birthPlace = null,Object? name = null,Object? livePicture = null,}) {
  return _then(_self.copyWith(
cnicNumber: null == cnicNumber ? _self.cnicNumber : cnicNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,livePicture: null == livePicture ? _self.livePicture : livePicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletRejectionUpdateRequestDto].
extension WalletRejectionUpdateRequestDtoPatterns on WalletRejectionUpdateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletRejectionUpdateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletRejectionUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletRejectionUpdateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _WalletRejectionUpdateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletRejectionUpdateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _WalletRejectionUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cnicNumber,  String mobileNumber,  String version,  String verificationToken,  String birthPlace,  String name,  String livePicture)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletRejectionUpdateRequestDto() when $default != null:
return $default(_that.cnicNumber,_that.mobileNumber,_that.version,_that.verificationToken,_that.birthPlace,_that.name,_that.livePicture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cnicNumber,  String mobileNumber,  String version,  String verificationToken,  String birthPlace,  String name,  String livePicture)  $default,) {final _that = this;
switch (_that) {
case _WalletRejectionUpdateRequestDto():
return $default(_that.cnicNumber,_that.mobileNumber,_that.version,_that.verificationToken,_that.birthPlace,_that.name,_that.livePicture);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cnicNumber,  String mobileNumber,  String version,  String verificationToken,  String birthPlace,  String name,  String livePicture)?  $default,) {final _that = this;
switch (_that) {
case _WalletRejectionUpdateRequestDto() when $default != null:
return $default(_that.cnicNumber,_that.mobileNumber,_that.version,_that.verificationToken,_that.birthPlace,_that.name,_that.livePicture);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletRejectionUpdateRequestDto implements WalletRejectionUpdateRequestDto {
  const _WalletRejectionUpdateRequestDto({required this.cnicNumber, required this.mobileNumber, this.version = "v1", required this.verificationToken, required this.birthPlace, required this.name, required this.livePicture});
  factory _WalletRejectionUpdateRequestDto.fromJson(Map<String, dynamic> json) => _$WalletRejectionUpdateRequestDtoFromJson(json);

@override final  String cnicNumber;
@override final  String mobileNumber;
@override@JsonKey() final  String version;
@override final  String verificationToken;
@override final  String birthPlace;
@override final  String name;
@override final  String livePicture;

/// Create a copy of WalletRejectionUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletRejectionUpdateRequestDtoCopyWith<_WalletRejectionUpdateRequestDto> get copyWith => __$WalletRejectionUpdateRequestDtoCopyWithImpl<_WalletRejectionUpdateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletRejectionUpdateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletRejectionUpdateRequestDto&&(identical(other.cnicNumber, cnicNumber) || other.cnicNumber == cnicNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.version, version) || other.version == version)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.name, name) || other.name == name)&&(identical(other.livePicture, livePicture) || other.livePicture == livePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnicNumber,mobileNumber,version,verificationToken,birthPlace,name,livePicture);

@override
String toString() {
  return 'WalletRejectionUpdateRequestDto(cnicNumber: $cnicNumber, mobileNumber: $mobileNumber, version: $version, verificationToken: $verificationToken, birthPlace: $birthPlace, name: $name, livePicture: $livePicture)';
}


}

/// @nodoc
abstract mixin class _$WalletRejectionUpdateRequestDtoCopyWith<$Res> implements $WalletRejectionUpdateRequestDtoCopyWith<$Res> {
  factory _$WalletRejectionUpdateRequestDtoCopyWith(_WalletRejectionUpdateRequestDto value, $Res Function(_WalletRejectionUpdateRequestDto) _then) = __$WalletRejectionUpdateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String cnicNumber, String mobileNumber, String version, String verificationToken, String birthPlace, String name, String livePicture
});




}
/// @nodoc
class __$WalletRejectionUpdateRequestDtoCopyWithImpl<$Res>
    implements _$WalletRejectionUpdateRequestDtoCopyWith<$Res> {
  __$WalletRejectionUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final _WalletRejectionUpdateRequestDto _self;
  final $Res Function(_WalletRejectionUpdateRequestDto) _then;

/// Create a copy of WalletRejectionUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cnicNumber = null,Object? mobileNumber = null,Object? version = null,Object? verificationToken = null,Object? birthPlace = null,Object? name = null,Object? livePicture = null,}) {
  return _then(_WalletRejectionUpdateRequestDto(
cnicNumber: null == cnicNumber ? _self.cnicNumber : cnicNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,livePicture: null == livePicture ? _self.livePicture : livePicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
