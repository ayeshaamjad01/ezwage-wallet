// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_to_wallet_payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletToWalletPaymentResponseDto {

 String get transactionId; String get transactionDateTime; String get rrn;
/// Create a copy of WalletToWalletPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletToWalletPaymentResponseDtoCopyWith<WalletToWalletPaymentResponseDto> get copyWith => _$WalletToWalletPaymentResponseDtoCopyWithImpl<WalletToWalletPaymentResponseDto>(this as WalletToWalletPaymentResponseDto, _$identity);

  /// Serializes this WalletToWalletPaymentResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletToWalletPaymentResponseDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.rrn, rrn) || other.rrn == rrn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,transactionDateTime,rrn);

@override
String toString() {
  return 'WalletToWalletPaymentResponseDto(transactionId: $transactionId, transactionDateTime: $transactionDateTime, rrn: $rrn)';
}


}

/// @nodoc
abstract mixin class $WalletToWalletPaymentResponseDtoCopyWith<$Res>  {
  factory $WalletToWalletPaymentResponseDtoCopyWith(WalletToWalletPaymentResponseDto value, $Res Function(WalletToWalletPaymentResponseDto) _then) = _$WalletToWalletPaymentResponseDtoCopyWithImpl;
@useResult
$Res call({
 String transactionId, String transactionDateTime, String rrn
});




}
/// @nodoc
class _$WalletToWalletPaymentResponseDtoCopyWithImpl<$Res>
    implements $WalletToWalletPaymentResponseDtoCopyWith<$Res> {
  _$WalletToWalletPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final WalletToWalletPaymentResponseDto _self;
  final $Res Function(WalletToWalletPaymentResponseDto) _then;

/// Create a copy of WalletToWalletPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? transactionDateTime = null,Object? rrn = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,transactionDateTime: null == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String,rrn: null == rrn ? _self.rrn : rrn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletToWalletPaymentResponseDto].
extension WalletToWalletPaymentResponseDtoPatterns on WalletToWalletPaymentResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletToWalletPaymentResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletToWalletPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletToWalletPaymentResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletPaymentResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletToWalletPaymentResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String transactionDateTime,  String rrn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletToWalletPaymentResponseDto() when $default != null:
return $default(_that.transactionId,_that.transactionDateTime,_that.rrn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String transactionDateTime,  String rrn)  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletPaymentResponseDto():
return $default(_that.transactionId,_that.transactionDateTime,_that.rrn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String transactionDateTime,  String rrn)?  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletPaymentResponseDto() when $default != null:
return $default(_that.transactionId,_that.transactionDateTime,_that.rrn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletToWalletPaymentResponseDto implements WalletToWalletPaymentResponseDto {
  const _WalletToWalletPaymentResponseDto({required this.transactionId, required this.transactionDateTime, required this.rrn});
  factory _WalletToWalletPaymentResponseDto.fromJson(Map<String, dynamic> json) => _$WalletToWalletPaymentResponseDtoFromJson(json);

@override final  String transactionId;
@override final  String transactionDateTime;
@override final  String rrn;

/// Create a copy of WalletToWalletPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletToWalletPaymentResponseDtoCopyWith<_WalletToWalletPaymentResponseDto> get copyWith => __$WalletToWalletPaymentResponseDtoCopyWithImpl<_WalletToWalletPaymentResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletToWalletPaymentResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletToWalletPaymentResponseDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.rrn, rrn) || other.rrn == rrn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,transactionDateTime,rrn);

@override
String toString() {
  return 'WalletToWalletPaymentResponseDto(transactionId: $transactionId, transactionDateTime: $transactionDateTime, rrn: $rrn)';
}


}

/// @nodoc
abstract mixin class _$WalletToWalletPaymentResponseDtoCopyWith<$Res> implements $WalletToWalletPaymentResponseDtoCopyWith<$Res> {
  factory _$WalletToWalletPaymentResponseDtoCopyWith(_WalletToWalletPaymentResponseDto value, $Res Function(_WalletToWalletPaymentResponseDto) _then) = __$WalletToWalletPaymentResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String transactionDateTime, String rrn
});




}
/// @nodoc
class __$WalletToWalletPaymentResponseDtoCopyWithImpl<$Res>
    implements _$WalletToWalletPaymentResponseDtoCopyWith<$Res> {
  __$WalletToWalletPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final _WalletToWalletPaymentResponseDto _self;
  final $Res Function(_WalletToWalletPaymentResponseDto) _then;

/// Create a copy of WalletToWalletPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? transactionDateTime = null,Object? rrn = null,}) {
  return _then(_WalletToWalletPaymentResponseDto(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,transactionDateTime: null == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String,rrn: null == rrn ? _self.rrn : rrn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
