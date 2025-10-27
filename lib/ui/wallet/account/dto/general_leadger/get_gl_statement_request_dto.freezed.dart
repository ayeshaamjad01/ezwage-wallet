// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_gl_statement_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetGlStatementRequestDto {

 String get senderAccount; String get customerId; String get receiverAccount; String get amount; String get version; Map get extInfo;
/// Create a copy of GetGlStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGlStatementRequestDtoCopyWith<GetGlStatementRequestDto> get copyWith => _$GetGlStatementRequestDtoCopyWithImpl<GetGlStatementRequestDto>(this as GetGlStatementRequestDto, _$identity);

  /// Serializes this GetGlStatementRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGlStatementRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,version,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'GetGlStatementRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $GetGlStatementRequestDtoCopyWith<$Res>  {
  factory $GetGlStatementRequestDtoCopyWith(GetGlStatementRequestDto value, $Res Function(GetGlStatementRequestDto) _then) = _$GetGlStatementRequestDtoCopyWithImpl;
@useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String version, Map extInfo
});




}
/// @nodoc
class _$GetGlStatementRequestDtoCopyWithImpl<$Res>
    implements $GetGlStatementRequestDtoCopyWith<$Res> {
  _$GetGlStatementRequestDtoCopyWithImpl(this._self, this._then);

  final GetGlStatementRequestDto _self;
  final $Res Function(GetGlStatementRequestDto) _then;

/// Create a copy of GetGlStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGlStatementRequestDto].
extension GetGlStatementRequestDtoPatterns on GetGlStatementRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGlStatementRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGlStatementRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGlStatementRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _GetGlStatementRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGlStatementRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetGlStatementRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String version,  Map extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGlStatementRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String version,  Map extInfo)  $default,) {final _that = this;
switch (_that) {
case _GetGlStatementRequestDto():
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String version,  Map extInfo)?  $default,) {final _that = this;
switch (_that) {
case _GetGlStatementRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.version,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetGlStatementRequestDto implements GetGlStatementRequestDto {
  const _GetGlStatementRequestDto({required this.senderAccount, required this.customerId, required this.receiverAccount, required this.amount, this.version = "v1", final  Map extInfo = const {}}): _extInfo = extInfo;
  factory _GetGlStatementRequestDto.fromJson(Map<String, dynamic> json) => _$GetGlStatementRequestDtoFromJson(json);

@override final  String senderAccount;
@override final  String customerId;
@override final  String receiverAccount;
@override final  String amount;
@override@JsonKey() final  String version;
 final  Map _extInfo;
@override@JsonKey() Map get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of GetGlStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGlStatementRequestDtoCopyWith<_GetGlStatementRequestDto> get copyWith => __$GetGlStatementRequestDtoCopyWithImpl<_GetGlStatementRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetGlStatementRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGlStatementRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,version,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'GetGlStatementRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$GetGlStatementRequestDtoCopyWith<$Res> implements $GetGlStatementRequestDtoCopyWith<$Res> {
  factory _$GetGlStatementRequestDtoCopyWith(_GetGlStatementRequestDto value, $Res Function(_GetGlStatementRequestDto) _then) = __$GetGlStatementRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String version, Map extInfo
});




}
/// @nodoc
class __$GetGlStatementRequestDtoCopyWithImpl<$Res>
    implements _$GetGlStatementRequestDtoCopyWith<$Res> {
  __$GetGlStatementRequestDtoCopyWithImpl(this._self, this._then);

  final _GetGlStatementRequestDto _self;
  final $Res Function(_GetGlStatementRequestDto) _then;

/// Create a copy of GetGlStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_GetGlStatementRequestDto(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}


}

// dart format on
