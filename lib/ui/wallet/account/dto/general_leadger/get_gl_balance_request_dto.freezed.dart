// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_gl_balance_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetGlBalanceRequestDto {

 String get glAccount; String get fromDate; String get toDate;
/// Create a copy of GetGlBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGlBalanceRequestDtoCopyWith<GetGlBalanceRequestDto> get copyWith => _$GetGlBalanceRequestDtoCopyWithImpl<GetGlBalanceRequestDto>(this as GetGlBalanceRequestDto, _$identity);

  /// Serializes this GetGlBalanceRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGlBalanceRequestDto&&(identical(other.glAccount, glAccount) || other.glAccount == glAccount)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,glAccount,fromDate,toDate);

@override
String toString() {
  return 'GetGlBalanceRequestDto(glAccount: $glAccount, fromDate: $fromDate, toDate: $toDate)';
}


}

/// @nodoc
abstract mixin class $GetGlBalanceRequestDtoCopyWith<$Res>  {
  factory $GetGlBalanceRequestDtoCopyWith(GetGlBalanceRequestDto value, $Res Function(GetGlBalanceRequestDto) _then) = _$GetGlBalanceRequestDtoCopyWithImpl;
@useResult
$Res call({
 String glAccount, String fromDate, String toDate
});




}
/// @nodoc
class _$GetGlBalanceRequestDtoCopyWithImpl<$Res>
    implements $GetGlBalanceRequestDtoCopyWith<$Res> {
  _$GetGlBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final GetGlBalanceRequestDto _self;
  final $Res Function(GetGlBalanceRequestDto) _then;

/// Create a copy of GetGlBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? glAccount = null,Object? fromDate = null,Object? toDate = null,}) {
  return _then(_self.copyWith(
glAccount: null == glAccount ? _self.glAccount : glAccount // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGlBalanceRequestDto].
extension GetGlBalanceRequestDtoPatterns on GetGlBalanceRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGlBalanceRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGlBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGlBalanceRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _GetGlBalanceRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGlBalanceRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetGlBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String glAccount,  String fromDate,  String toDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGlBalanceRequestDto() when $default != null:
return $default(_that.glAccount,_that.fromDate,_that.toDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String glAccount,  String fromDate,  String toDate)  $default,) {final _that = this;
switch (_that) {
case _GetGlBalanceRequestDto():
return $default(_that.glAccount,_that.fromDate,_that.toDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String glAccount,  String fromDate,  String toDate)?  $default,) {final _that = this;
switch (_that) {
case _GetGlBalanceRequestDto() when $default != null:
return $default(_that.glAccount,_that.fromDate,_that.toDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetGlBalanceRequestDto implements GetGlBalanceRequestDto {
  const _GetGlBalanceRequestDto({required this.glAccount, required this.fromDate, required this.toDate});
  factory _GetGlBalanceRequestDto.fromJson(Map<String, dynamic> json) => _$GetGlBalanceRequestDtoFromJson(json);

@override final  String glAccount;
@override final  String fromDate;
@override final  String toDate;

/// Create a copy of GetGlBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGlBalanceRequestDtoCopyWith<_GetGlBalanceRequestDto> get copyWith => __$GetGlBalanceRequestDtoCopyWithImpl<_GetGlBalanceRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetGlBalanceRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGlBalanceRequestDto&&(identical(other.glAccount, glAccount) || other.glAccount == glAccount)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,glAccount,fromDate,toDate);

@override
String toString() {
  return 'GetGlBalanceRequestDto(glAccount: $glAccount, fromDate: $fromDate, toDate: $toDate)';
}


}

/// @nodoc
abstract mixin class _$GetGlBalanceRequestDtoCopyWith<$Res> implements $GetGlBalanceRequestDtoCopyWith<$Res> {
  factory _$GetGlBalanceRequestDtoCopyWith(_GetGlBalanceRequestDto value, $Res Function(_GetGlBalanceRequestDto) _then) = __$GetGlBalanceRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String glAccount, String fromDate, String toDate
});




}
/// @nodoc
class __$GetGlBalanceRequestDtoCopyWithImpl<$Res>
    implements _$GetGlBalanceRequestDtoCopyWith<$Res> {
  __$GetGlBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final _GetGlBalanceRequestDto _self;
  final $Res Function(_GetGlBalanceRequestDto) _then;

/// Create a copy of GetGlBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? glAccount = null,Object? fromDate = null,Object? toDate = null,}) {
  return _then(_GetGlBalanceRequestDto(
glAccount: null == glAccount ? _self.glAccount : glAccount // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
