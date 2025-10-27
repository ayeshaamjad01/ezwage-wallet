// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_debit_hold_fund_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectDebitHoldFundResponseDto {

 String get actualBalance; String get availableBalance; String get referenceTxId;
/// Create a copy of DirectDebitHoldFundResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectDebitHoldFundResponseDtoCopyWith<DirectDebitHoldFundResponseDto> get copyWith => _$DirectDebitHoldFundResponseDtoCopyWithImpl<DirectDebitHoldFundResponseDto>(this as DirectDebitHoldFundResponseDto, _$identity);

  /// Serializes this DirectDebitHoldFundResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectDebitHoldFundResponseDto&&(identical(other.actualBalance, actualBalance) || other.actualBalance == actualBalance)&&(identical(other.availableBalance, availableBalance) || other.availableBalance == availableBalance)&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualBalance,availableBalance,referenceTxId);

@override
String toString() {
  return 'DirectDebitHoldFundResponseDto(actualBalance: $actualBalance, availableBalance: $availableBalance, referenceTxId: $referenceTxId)';
}


}

/// @nodoc
abstract mixin class $DirectDebitHoldFundResponseDtoCopyWith<$Res>  {
  factory $DirectDebitHoldFundResponseDtoCopyWith(DirectDebitHoldFundResponseDto value, $Res Function(DirectDebitHoldFundResponseDto) _then) = _$DirectDebitHoldFundResponseDtoCopyWithImpl;
@useResult
$Res call({
 String actualBalance, String availableBalance, String referenceTxId
});




}
/// @nodoc
class _$DirectDebitHoldFundResponseDtoCopyWithImpl<$Res>
    implements $DirectDebitHoldFundResponseDtoCopyWith<$Res> {
  _$DirectDebitHoldFundResponseDtoCopyWithImpl(this._self, this._then);

  final DirectDebitHoldFundResponseDto _self;
  final $Res Function(DirectDebitHoldFundResponseDto) _then;

/// Create a copy of DirectDebitHoldFundResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? actualBalance = null,Object? availableBalance = null,Object? referenceTxId = null,}) {
  return _then(_self.copyWith(
actualBalance: null == actualBalance ? _self.actualBalance : actualBalance // ignore: cast_nullable_to_non_nullable
as String,availableBalance: null == availableBalance ? _self.availableBalance : availableBalance // ignore: cast_nullable_to_non_nullable
as String,referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectDebitHoldFundResponseDto].
extension DirectDebitHoldFundResponseDtoPatterns on DirectDebitHoldFundResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectDebitHoldFundResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectDebitHoldFundResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectDebitHoldFundResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String actualBalance,  String availableBalance,  String referenceTxId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundResponseDto() when $default != null:
return $default(_that.actualBalance,_that.availableBalance,_that.referenceTxId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String actualBalance,  String availableBalance,  String referenceTxId)  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundResponseDto():
return $default(_that.actualBalance,_that.availableBalance,_that.referenceTxId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String actualBalance,  String availableBalance,  String referenceTxId)?  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundResponseDto() when $default != null:
return $default(_that.actualBalance,_that.availableBalance,_that.referenceTxId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectDebitHoldFundResponseDto implements DirectDebitHoldFundResponseDto {
  const _DirectDebitHoldFundResponseDto({required this.actualBalance, required this.availableBalance, required this.referenceTxId});
  factory _DirectDebitHoldFundResponseDto.fromJson(Map<String, dynamic> json) => _$DirectDebitHoldFundResponseDtoFromJson(json);

@override final  String actualBalance;
@override final  String availableBalance;
@override final  String referenceTxId;

/// Create a copy of DirectDebitHoldFundResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectDebitHoldFundResponseDtoCopyWith<_DirectDebitHoldFundResponseDto> get copyWith => __$DirectDebitHoldFundResponseDtoCopyWithImpl<_DirectDebitHoldFundResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectDebitHoldFundResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectDebitHoldFundResponseDto&&(identical(other.actualBalance, actualBalance) || other.actualBalance == actualBalance)&&(identical(other.availableBalance, availableBalance) || other.availableBalance == availableBalance)&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualBalance,availableBalance,referenceTxId);

@override
String toString() {
  return 'DirectDebitHoldFundResponseDto(actualBalance: $actualBalance, availableBalance: $availableBalance, referenceTxId: $referenceTxId)';
}


}

/// @nodoc
abstract mixin class _$DirectDebitHoldFundResponseDtoCopyWith<$Res> implements $DirectDebitHoldFundResponseDtoCopyWith<$Res> {
  factory _$DirectDebitHoldFundResponseDtoCopyWith(_DirectDebitHoldFundResponseDto value, $Res Function(_DirectDebitHoldFundResponseDto) _then) = __$DirectDebitHoldFundResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String actualBalance, String availableBalance, String referenceTxId
});




}
/// @nodoc
class __$DirectDebitHoldFundResponseDtoCopyWithImpl<$Res>
    implements _$DirectDebitHoldFundResponseDtoCopyWith<$Res> {
  __$DirectDebitHoldFundResponseDtoCopyWithImpl(this._self, this._then);

  final _DirectDebitHoldFundResponseDto _self;
  final $Res Function(_DirectDebitHoldFundResponseDto) _then;

/// Create a copy of DirectDebitHoldFundResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? actualBalance = null,Object? availableBalance = null,Object? referenceTxId = null,}) {
  return _then(_DirectDebitHoldFundResponseDto(
actualBalance: null == actualBalance ? _self.actualBalance : actualBalance // ignore: cast_nullable_to_non_nullable
as String,availableBalance: null == availableBalance ? _self.availableBalance : availableBalance // ignore: cast_nullable_to_non_nullable
as String,referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
