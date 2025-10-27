// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_customer_balance_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCustomerBalanceResponseDto {

 String get accountBalance; Map get extInfo;
/// Create a copy of GetCustomerBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCustomerBalanceResponseDtoCopyWith<GetCustomerBalanceResponseDto> get copyWith => _$GetCustomerBalanceResponseDtoCopyWithImpl<GetCustomerBalanceResponseDto>(this as GetCustomerBalanceResponseDto, _$identity);

  /// Serializes this GetCustomerBalanceResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCustomerBalanceResponseDto&&(identical(other.accountBalance, accountBalance) || other.accountBalance == accountBalance)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountBalance,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'GetCustomerBalanceResponseDto(accountBalance: $accountBalance, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $GetCustomerBalanceResponseDtoCopyWith<$Res>  {
  factory $GetCustomerBalanceResponseDtoCopyWith(GetCustomerBalanceResponseDto value, $Res Function(GetCustomerBalanceResponseDto) _then) = _$GetCustomerBalanceResponseDtoCopyWithImpl;
@useResult
$Res call({
 String accountBalance, Map extInfo
});




}
/// @nodoc
class _$GetCustomerBalanceResponseDtoCopyWithImpl<$Res>
    implements $GetCustomerBalanceResponseDtoCopyWith<$Res> {
  _$GetCustomerBalanceResponseDtoCopyWithImpl(this._self, this._then);

  final GetCustomerBalanceResponseDto _self;
  final $Res Function(GetCustomerBalanceResponseDto) _then;

/// Create a copy of GetCustomerBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountBalance = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
accountBalance: null == accountBalance ? _self.accountBalance : accountBalance // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCustomerBalanceResponseDto].
extension GetCustomerBalanceResponseDtoPatterns on GetCustomerBalanceResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCustomerBalanceResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCustomerBalanceResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCustomerBalanceResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetCustomerBalanceResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCustomerBalanceResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetCustomerBalanceResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountBalance,  Map extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCustomerBalanceResponseDto() when $default != null:
return $default(_that.accountBalance,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountBalance,  Map extInfo)  $default,) {final _that = this;
switch (_that) {
case _GetCustomerBalanceResponseDto():
return $default(_that.accountBalance,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountBalance,  Map extInfo)?  $default,) {final _that = this;
switch (_that) {
case _GetCustomerBalanceResponseDto() when $default != null:
return $default(_that.accountBalance,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCustomerBalanceResponseDto implements GetCustomerBalanceResponseDto {
  const _GetCustomerBalanceResponseDto({required this.accountBalance, final  Map extInfo = const {}}): _extInfo = extInfo;
  factory _GetCustomerBalanceResponseDto.fromJson(Map<String, dynamic> json) => _$GetCustomerBalanceResponseDtoFromJson(json);

@override final  String accountBalance;
 final  Map _extInfo;
@override@JsonKey() Map get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of GetCustomerBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCustomerBalanceResponseDtoCopyWith<_GetCustomerBalanceResponseDto> get copyWith => __$GetCustomerBalanceResponseDtoCopyWithImpl<_GetCustomerBalanceResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCustomerBalanceResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCustomerBalanceResponseDto&&(identical(other.accountBalance, accountBalance) || other.accountBalance == accountBalance)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountBalance,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'GetCustomerBalanceResponseDto(accountBalance: $accountBalance, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$GetCustomerBalanceResponseDtoCopyWith<$Res> implements $GetCustomerBalanceResponseDtoCopyWith<$Res> {
  factory _$GetCustomerBalanceResponseDtoCopyWith(_GetCustomerBalanceResponseDto value, $Res Function(_GetCustomerBalanceResponseDto) _then) = __$GetCustomerBalanceResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String accountBalance, Map extInfo
});




}
/// @nodoc
class __$GetCustomerBalanceResponseDtoCopyWithImpl<$Res>
    implements _$GetCustomerBalanceResponseDtoCopyWith<$Res> {
  __$GetCustomerBalanceResponseDtoCopyWithImpl(this._self, this._then);

  final _GetCustomerBalanceResponseDto _self;
  final $Res Function(_GetCustomerBalanceResponseDto) _then;

/// Create a copy of GetCustomerBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountBalance = null,Object? extInfo = null,}) {
  return _then(_GetCustomerBalanceResponseDto(
accountBalance: null == accountBalance ? _self.accountBalance : accountBalance // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}


}

// dart format on
