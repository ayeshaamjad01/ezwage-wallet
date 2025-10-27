// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_debit_hold_fund_reversal_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectDebitHoldFundReversalResponseDto {

 String get referenceTxId; String get transactionLogId;
/// Create a copy of DirectDebitHoldFundReversalResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectDebitHoldFundReversalResponseDtoCopyWith<DirectDebitHoldFundReversalResponseDto> get copyWith => _$DirectDebitHoldFundReversalResponseDtoCopyWithImpl<DirectDebitHoldFundReversalResponseDto>(this as DirectDebitHoldFundReversalResponseDto, _$identity);

  /// Serializes this DirectDebitHoldFundReversalResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectDebitHoldFundReversalResponseDto&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId)&&(identical(other.transactionLogId, transactionLogId) || other.transactionLogId == transactionLogId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceTxId,transactionLogId);

@override
String toString() {
  return 'DirectDebitHoldFundReversalResponseDto(referenceTxId: $referenceTxId, transactionLogId: $transactionLogId)';
}


}

/// @nodoc
abstract mixin class $DirectDebitHoldFundReversalResponseDtoCopyWith<$Res>  {
  factory $DirectDebitHoldFundReversalResponseDtoCopyWith(DirectDebitHoldFundReversalResponseDto value, $Res Function(DirectDebitHoldFundReversalResponseDto) _then) = _$DirectDebitHoldFundReversalResponseDtoCopyWithImpl;
@useResult
$Res call({
 String referenceTxId, String transactionLogId
});




}
/// @nodoc
class _$DirectDebitHoldFundReversalResponseDtoCopyWithImpl<$Res>
    implements $DirectDebitHoldFundReversalResponseDtoCopyWith<$Res> {
  _$DirectDebitHoldFundReversalResponseDtoCopyWithImpl(this._self, this._then);

  final DirectDebitHoldFundReversalResponseDto _self;
  final $Res Function(DirectDebitHoldFundReversalResponseDto) _then;

/// Create a copy of DirectDebitHoldFundReversalResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referenceTxId = null,Object? transactionLogId = null,}) {
  return _then(_self.copyWith(
referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,transactionLogId: null == transactionLogId ? _self.transactionLogId : transactionLogId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectDebitHoldFundReversalResponseDto].
extension DirectDebitHoldFundReversalResponseDtoPatterns on DirectDebitHoldFundReversalResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectDebitHoldFundReversalResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectDebitHoldFundReversalResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectDebitHoldFundReversalResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String referenceTxId,  String transactionLogId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalResponseDto() when $default != null:
return $default(_that.referenceTxId,_that.transactionLogId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String referenceTxId,  String transactionLogId)  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalResponseDto():
return $default(_that.referenceTxId,_that.transactionLogId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String referenceTxId,  String transactionLogId)?  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalResponseDto() when $default != null:
return $default(_that.referenceTxId,_that.transactionLogId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectDebitHoldFundReversalResponseDto implements DirectDebitHoldFundReversalResponseDto {
  const _DirectDebitHoldFundReversalResponseDto({required this.referenceTxId, required this.transactionLogId});
  factory _DirectDebitHoldFundReversalResponseDto.fromJson(Map<String, dynamic> json) => _$DirectDebitHoldFundReversalResponseDtoFromJson(json);

@override final  String referenceTxId;
@override final  String transactionLogId;

/// Create a copy of DirectDebitHoldFundReversalResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectDebitHoldFundReversalResponseDtoCopyWith<_DirectDebitHoldFundReversalResponseDto> get copyWith => __$DirectDebitHoldFundReversalResponseDtoCopyWithImpl<_DirectDebitHoldFundReversalResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectDebitHoldFundReversalResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectDebitHoldFundReversalResponseDto&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId)&&(identical(other.transactionLogId, transactionLogId) || other.transactionLogId == transactionLogId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceTxId,transactionLogId);

@override
String toString() {
  return 'DirectDebitHoldFundReversalResponseDto(referenceTxId: $referenceTxId, transactionLogId: $transactionLogId)';
}


}

/// @nodoc
abstract mixin class _$DirectDebitHoldFundReversalResponseDtoCopyWith<$Res> implements $DirectDebitHoldFundReversalResponseDtoCopyWith<$Res> {
  factory _$DirectDebitHoldFundReversalResponseDtoCopyWith(_DirectDebitHoldFundReversalResponseDto value, $Res Function(_DirectDebitHoldFundReversalResponseDto) _then) = __$DirectDebitHoldFundReversalResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String referenceTxId, String transactionLogId
});




}
/// @nodoc
class __$DirectDebitHoldFundReversalResponseDtoCopyWithImpl<$Res>
    implements _$DirectDebitHoldFundReversalResponseDtoCopyWith<$Res> {
  __$DirectDebitHoldFundReversalResponseDtoCopyWithImpl(this._self, this._then);

  final _DirectDebitHoldFundReversalResponseDto _self;
  final $Res Function(_DirectDebitHoldFundReversalResponseDto) _then;

/// Create a copy of DirectDebitHoldFundReversalResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referenceTxId = null,Object? transactionLogId = null,}) {
  return _then(_DirectDebitHoldFundReversalResponseDto(
referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,transactionLogId: null == transactionLogId ? _self.transactionLogId : transactionLogId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
