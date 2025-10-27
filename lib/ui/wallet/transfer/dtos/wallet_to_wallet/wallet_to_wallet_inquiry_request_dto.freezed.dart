// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_to_wallet_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletToWalletInquiryRequestDto {

 String get senderAccount; String get customerId; String get receiverAccount; String get amount; String get version; Map<String, dynamic> get extInfo;
/// Create a copy of WalletToWalletInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletToWalletInquiryRequestDtoCopyWith<WalletToWalletInquiryRequestDto> get copyWith => _$WalletToWalletInquiryRequestDtoCopyWithImpl<WalletToWalletInquiryRequestDto>(this as WalletToWalletInquiryRequestDto, _$identity);

  /// Serializes this WalletToWalletInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletToWalletInquiryRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,version,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'WalletToWalletInquiryRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $WalletToWalletInquiryRequestDtoCopyWith<$Res>  {
  factory $WalletToWalletInquiryRequestDtoCopyWith(WalletToWalletInquiryRequestDto value, $Res Function(WalletToWalletInquiryRequestDto) _then) = _$WalletToWalletInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$WalletToWalletInquiryRequestDtoCopyWithImpl<$Res>
    implements $WalletToWalletInquiryRequestDtoCopyWith<$Res> {
  _$WalletToWalletInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final WalletToWalletInquiryRequestDto _self;
  final $Res Function(WalletToWalletInquiryRequestDto) _then;

/// Create a copy of WalletToWalletInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletToWalletInquiryRequestDto].
extension WalletToWalletInquiryRequestDtoPatterns on WalletToWalletInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletToWalletInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletToWalletInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletToWalletInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String version,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String version,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryRequestDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String version,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.version,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletToWalletInquiryRequestDto implements WalletToWalletInquiryRequestDto {
  const _WalletToWalletInquiryRequestDto({required this.senderAccount, required this.customerId, required this.receiverAccount, required this.amount, this.version = "v1", final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _WalletToWalletInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$WalletToWalletInquiryRequestDtoFromJson(json);

@override final  String senderAccount;
@override final  String customerId;
@override final  String receiverAccount;
@override final  String amount;
@override@JsonKey() final  String version;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of WalletToWalletInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletToWalletInquiryRequestDtoCopyWith<_WalletToWalletInquiryRequestDto> get copyWith => __$WalletToWalletInquiryRequestDtoCopyWithImpl<_WalletToWalletInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletToWalletInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletToWalletInquiryRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,version,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'WalletToWalletInquiryRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$WalletToWalletInquiryRequestDtoCopyWith<$Res> implements $WalletToWalletInquiryRequestDtoCopyWith<$Res> {
  factory _$WalletToWalletInquiryRequestDtoCopyWith(_WalletToWalletInquiryRequestDto value, $Res Function(_WalletToWalletInquiryRequestDto) _then) = __$WalletToWalletInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$WalletToWalletInquiryRequestDtoCopyWithImpl<$Res>
    implements _$WalletToWalletInquiryRequestDtoCopyWith<$Res> {
  __$WalletToWalletInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _WalletToWalletInquiryRequestDto _self;
  final $Res Function(_WalletToWalletInquiryRequestDto) _then;

/// Create a copy of WalletToWalletInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_WalletToWalletInquiryRequestDto(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
