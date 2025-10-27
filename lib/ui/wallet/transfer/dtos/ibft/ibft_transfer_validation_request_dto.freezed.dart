// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibft_transfer_validation_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IbftTransferValidationRequestDto {

 String get userId; String get otp; String get answer; dynamic get version;
/// Create a copy of IbftTransferValidationRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftTransferValidationRequestDtoCopyWith<IbftTransferValidationRequestDto> get copyWith => _$IbftTransferValidationRequestDtoCopyWithImpl<IbftTransferValidationRequestDto>(this as IbftTransferValidationRequestDto, _$identity);

  /// Serializes this IbftTransferValidationRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftTransferValidationRequestDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other.version, version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,otp,answer,const DeepCollectionEquality().hash(version));

@override
String toString() {
  return 'IbftTransferValidationRequestDto(userId: $userId, otp: $otp, answer: $answer, version: $version)';
}


}

/// @nodoc
abstract mixin class $IbftTransferValidationRequestDtoCopyWith<$Res>  {
  factory $IbftTransferValidationRequestDtoCopyWith(IbftTransferValidationRequestDto value, $Res Function(IbftTransferValidationRequestDto) _then) = _$IbftTransferValidationRequestDtoCopyWithImpl;
@useResult
$Res call({
 String userId, String otp, String answer, dynamic version
});




}
/// @nodoc
class _$IbftTransferValidationRequestDtoCopyWithImpl<$Res>
    implements $IbftTransferValidationRequestDtoCopyWith<$Res> {
  _$IbftTransferValidationRequestDtoCopyWithImpl(this._self, this._then);

  final IbftTransferValidationRequestDto _self;
  final $Res Function(IbftTransferValidationRequestDto) _then;

/// Create a copy of IbftTransferValidationRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? otp = null,Object? answer = null,Object? version = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [IbftTransferValidationRequestDto].
extension IbftTransferValidationRequestDtoPatterns on IbftTransferValidationRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftTransferValidationRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftTransferValidationRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftTransferValidationRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _IbftTransferValidationRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftTransferValidationRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _IbftTransferValidationRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String otp,  String answer,  dynamic version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftTransferValidationRequestDto() when $default != null:
return $default(_that.userId,_that.otp,_that.answer,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String otp,  String answer,  dynamic version)  $default,) {final _that = this;
switch (_that) {
case _IbftTransferValidationRequestDto():
return $default(_that.userId,_that.otp,_that.answer,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String otp,  String answer,  dynamic version)?  $default,) {final _that = this;
switch (_that) {
case _IbftTransferValidationRequestDto() when $default != null:
return $default(_that.userId,_that.otp,_that.answer,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftTransferValidationRequestDto implements IbftTransferValidationRequestDto {
  const _IbftTransferValidationRequestDto({required this.userId, required this.otp, required this.answer, this.version = "v1"});
  factory _IbftTransferValidationRequestDto.fromJson(Map<String, dynamic> json) => _$IbftTransferValidationRequestDtoFromJson(json);

@override final  String userId;
@override final  String otp;
@override final  String answer;
@override@JsonKey() final  dynamic version;

/// Create a copy of IbftTransferValidationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftTransferValidationRequestDtoCopyWith<_IbftTransferValidationRequestDto> get copyWith => __$IbftTransferValidationRequestDtoCopyWithImpl<_IbftTransferValidationRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftTransferValidationRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftTransferValidationRequestDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other.version, version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,otp,answer,const DeepCollectionEquality().hash(version));

@override
String toString() {
  return 'IbftTransferValidationRequestDto(userId: $userId, otp: $otp, answer: $answer, version: $version)';
}


}

/// @nodoc
abstract mixin class _$IbftTransferValidationRequestDtoCopyWith<$Res> implements $IbftTransferValidationRequestDtoCopyWith<$Res> {
  factory _$IbftTransferValidationRequestDtoCopyWith(_IbftTransferValidationRequestDto value, $Res Function(_IbftTransferValidationRequestDto) _then) = __$IbftTransferValidationRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String userId, String otp, String answer, dynamic version
});




}
/// @nodoc
class __$IbftTransferValidationRequestDtoCopyWithImpl<$Res>
    implements _$IbftTransferValidationRequestDtoCopyWith<$Res> {
  __$IbftTransferValidationRequestDtoCopyWithImpl(this._self, this._then);

  final _IbftTransferValidationRequestDto _self;
  final $Res Function(_IbftTransferValidationRequestDto) _then;

/// Create a copy of IbftTransferValidationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? otp = null,Object? answer = null,Object? version = freezed,}) {
  return _then(_IbftTransferValidationRequestDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
