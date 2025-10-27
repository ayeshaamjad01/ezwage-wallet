// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_rejection_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletRejectionInquiryResponseDto {

 String get livePicture; String get cnicBack; String get cnicFront; String get verificationToken; String get verificationMethod;
/// Create a copy of WalletRejectionInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletRejectionInquiryResponseDtoCopyWith<WalletRejectionInquiryResponseDto> get copyWith => _$WalletRejectionInquiryResponseDtoCopyWithImpl<WalletRejectionInquiryResponseDto>(this as WalletRejectionInquiryResponseDto, _$identity);

  /// Serializes this WalletRejectionInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletRejectionInquiryResponseDto&&(identical(other.livePicture, livePicture) || other.livePicture == livePicture)&&(identical(other.cnicBack, cnicBack) || other.cnicBack == cnicBack)&&(identical(other.cnicFront, cnicFront) || other.cnicFront == cnicFront)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,livePicture,cnicBack,cnicFront,verificationToken,verificationMethod);

@override
String toString() {
  return 'WalletRejectionInquiryResponseDto(livePicture: $livePicture, cnicBack: $cnicBack, cnicFront: $cnicFront, verificationToken: $verificationToken, verificationMethod: $verificationMethod)';
}


}

/// @nodoc
abstract mixin class $WalletRejectionInquiryResponseDtoCopyWith<$Res>  {
  factory $WalletRejectionInquiryResponseDtoCopyWith(WalletRejectionInquiryResponseDto value, $Res Function(WalletRejectionInquiryResponseDto) _then) = _$WalletRejectionInquiryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String livePicture, String cnicBack, String cnicFront, String verificationToken, String verificationMethod
});




}
/// @nodoc
class _$WalletRejectionInquiryResponseDtoCopyWithImpl<$Res>
    implements $WalletRejectionInquiryResponseDtoCopyWith<$Res> {
  _$WalletRejectionInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final WalletRejectionInquiryResponseDto _self;
  final $Res Function(WalletRejectionInquiryResponseDto) _then;

/// Create a copy of WalletRejectionInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? livePicture = null,Object? cnicBack = null,Object? cnicFront = null,Object? verificationToken = null,Object? verificationMethod = null,}) {
  return _then(_self.copyWith(
livePicture: null == livePicture ? _self.livePicture : livePicture // ignore: cast_nullable_to_non_nullable
as String,cnicBack: null == cnicBack ? _self.cnicBack : cnicBack // ignore: cast_nullable_to_non_nullable
as String,cnicFront: null == cnicFront ? _self.cnicFront : cnicFront // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletRejectionInquiryResponseDto].
extension WalletRejectionInquiryResponseDtoPatterns on WalletRejectionInquiryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletRejectionInquiryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletRejectionInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletRejectionInquiryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _WalletRejectionInquiryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletRejectionInquiryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _WalletRejectionInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String livePicture,  String cnicBack,  String cnicFront,  String verificationToken,  String verificationMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletRejectionInquiryResponseDto() when $default != null:
return $default(_that.livePicture,_that.cnicBack,_that.cnicFront,_that.verificationToken,_that.verificationMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String livePicture,  String cnicBack,  String cnicFront,  String verificationToken,  String verificationMethod)  $default,) {final _that = this;
switch (_that) {
case _WalletRejectionInquiryResponseDto():
return $default(_that.livePicture,_that.cnicBack,_that.cnicFront,_that.verificationToken,_that.verificationMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String livePicture,  String cnicBack,  String cnicFront,  String verificationToken,  String verificationMethod)?  $default,) {final _that = this;
switch (_that) {
case _WalletRejectionInquiryResponseDto() when $default != null:
return $default(_that.livePicture,_that.cnicBack,_that.cnicFront,_that.verificationToken,_that.verificationMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletRejectionInquiryResponseDto implements WalletRejectionInquiryResponseDto {
  const _WalletRejectionInquiryResponseDto({required this.livePicture, required this.cnicBack, required this.cnicFront, required this.verificationToken, required this.verificationMethod});
  factory _WalletRejectionInquiryResponseDto.fromJson(Map<String, dynamic> json) => _$WalletRejectionInquiryResponseDtoFromJson(json);

@override final  String livePicture;
@override final  String cnicBack;
@override final  String cnicFront;
@override final  String verificationToken;
@override final  String verificationMethod;

/// Create a copy of WalletRejectionInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletRejectionInquiryResponseDtoCopyWith<_WalletRejectionInquiryResponseDto> get copyWith => __$WalletRejectionInquiryResponseDtoCopyWithImpl<_WalletRejectionInquiryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletRejectionInquiryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletRejectionInquiryResponseDto&&(identical(other.livePicture, livePicture) || other.livePicture == livePicture)&&(identical(other.cnicBack, cnicBack) || other.cnicBack == cnicBack)&&(identical(other.cnicFront, cnicFront) || other.cnicFront == cnicFront)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,livePicture,cnicBack,cnicFront,verificationToken,verificationMethod);

@override
String toString() {
  return 'WalletRejectionInquiryResponseDto(livePicture: $livePicture, cnicBack: $cnicBack, cnicFront: $cnicFront, verificationToken: $verificationToken, verificationMethod: $verificationMethod)';
}


}

/// @nodoc
abstract mixin class _$WalletRejectionInquiryResponseDtoCopyWith<$Res> implements $WalletRejectionInquiryResponseDtoCopyWith<$Res> {
  factory _$WalletRejectionInquiryResponseDtoCopyWith(_WalletRejectionInquiryResponseDto value, $Res Function(_WalletRejectionInquiryResponseDto) _then) = __$WalletRejectionInquiryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String livePicture, String cnicBack, String cnicFront, String verificationToken, String verificationMethod
});




}
/// @nodoc
class __$WalletRejectionInquiryResponseDtoCopyWithImpl<$Res>
    implements _$WalletRejectionInquiryResponseDtoCopyWith<$Res> {
  __$WalletRejectionInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final _WalletRejectionInquiryResponseDto _self;
  final $Res Function(_WalletRejectionInquiryResponseDto) _then;

/// Create a copy of WalletRejectionInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? livePicture = null,Object? cnicBack = null,Object? cnicFront = null,Object? verificationToken = null,Object? verificationMethod = null,}) {
  return _then(_WalletRejectionInquiryResponseDto(
livePicture: null == livePicture ? _self.livePicture : livePicture // ignore: cast_nullable_to_non_nullable
as String,cnicBack: null == cnicBack ? _self.cnicBack : cnicBack // ignore: cast_nullable_to_non_nullable
as String,cnicFront: null == cnicFront ? _self.cnicFront : cnicFront // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
