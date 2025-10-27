// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_to_wallet_payment_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletToWalletPaymentRequestDto {

 String get senderAccount; String get customerId; String get receiverAccount; String get amount; String get verificationToken; String? get index; String? get otp; String? get template; String? get sessionId; String get version; Map<String, dynamic> get extInfo;
/// Create a copy of WalletToWalletPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletToWalletPaymentRequestDtoCopyWith<WalletToWalletPaymentRequestDto> get copyWith => _$WalletToWalletPaymentRequestDtoCopyWithImpl<WalletToWalletPaymentRequestDto>(this as WalletToWalletPaymentRequestDto, _$identity);

  /// Serializes this WalletToWalletPaymentRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletToWalletPaymentRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.template, template) || other.template == template)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,verificationToken,index,otp,template,sessionId,version,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'WalletToWalletPaymentRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, verificationToken: $verificationToken, index: $index, otp: $otp, template: $template, sessionId: $sessionId, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $WalletToWalletPaymentRequestDtoCopyWith<$Res>  {
  factory $WalletToWalletPaymentRequestDtoCopyWith(WalletToWalletPaymentRequestDto value, $Res Function(WalletToWalletPaymentRequestDto) _then) = _$WalletToWalletPaymentRequestDtoCopyWithImpl;
@useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String verificationToken, String? index, String? otp, String? template, String? sessionId, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$WalletToWalletPaymentRequestDtoCopyWithImpl<$Res>
    implements $WalletToWalletPaymentRequestDtoCopyWith<$Res> {
  _$WalletToWalletPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final WalletToWalletPaymentRequestDto _self;
  final $Res Function(WalletToWalletPaymentRequestDto) _then;

/// Create a copy of WalletToWalletPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? verificationToken = null,Object? index = freezed,Object? otp = freezed,Object? template = freezed,Object? sessionId = freezed,Object? version = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletToWalletPaymentRequestDto].
extension WalletToWalletPaymentRequestDtoPatterns on WalletToWalletPaymentRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletToWalletPaymentRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletToWalletPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletToWalletPaymentRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletPaymentRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletToWalletPaymentRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String verificationToken,  String? index,  String? otp,  String? template,  String? sessionId,  String version,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletToWalletPaymentRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.verificationToken,_that.index,_that.otp,_that.template,_that.sessionId,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String verificationToken,  String? index,  String? otp,  String? template,  String? sessionId,  String version,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletPaymentRequestDto():
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.verificationToken,_that.index,_that.otp,_that.template,_that.sessionId,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String verificationToken,  String? index,  String? otp,  String? template,  String? sessionId,  String version,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletPaymentRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.verificationToken,_that.index,_that.otp,_that.template,_that.sessionId,_that.version,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletToWalletPaymentRequestDto implements WalletToWalletPaymentRequestDto {
  const _WalletToWalletPaymentRequestDto({required this.senderAccount, required this.customerId, required this.receiverAccount, required this.amount, required this.verificationToken, this.index, this.otp, this.template, this.sessionId, this.version = "v1", final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _WalletToWalletPaymentRequestDto.fromJson(Map<String, dynamic> json) => _$WalletToWalletPaymentRequestDtoFromJson(json);

@override final  String senderAccount;
@override final  String customerId;
@override final  String receiverAccount;
@override final  String amount;
@override final  String verificationToken;
@override final  String? index;
@override final  String? otp;
@override final  String? template;
@override final  String? sessionId;
@override@JsonKey() final  String version;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of WalletToWalletPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletToWalletPaymentRequestDtoCopyWith<_WalletToWalletPaymentRequestDto> get copyWith => __$WalletToWalletPaymentRequestDtoCopyWithImpl<_WalletToWalletPaymentRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletToWalletPaymentRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletToWalletPaymentRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.template, template) || other.template == template)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,verificationToken,index,otp,template,sessionId,version,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'WalletToWalletPaymentRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, verificationToken: $verificationToken, index: $index, otp: $otp, template: $template, sessionId: $sessionId, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$WalletToWalletPaymentRequestDtoCopyWith<$Res> implements $WalletToWalletPaymentRequestDtoCopyWith<$Res> {
  factory _$WalletToWalletPaymentRequestDtoCopyWith(_WalletToWalletPaymentRequestDto value, $Res Function(_WalletToWalletPaymentRequestDto) _then) = __$WalletToWalletPaymentRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String verificationToken, String? index, String? otp, String? template, String? sessionId, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$WalletToWalletPaymentRequestDtoCopyWithImpl<$Res>
    implements _$WalletToWalletPaymentRequestDtoCopyWith<$Res> {
  __$WalletToWalletPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final _WalletToWalletPaymentRequestDto _self;
  final $Res Function(_WalletToWalletPaymentRequestDto) _then;

/// Create a copy of WalletToWalletPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? verificationToken = null,Object? index = freezed,Object? otp = freezed,Object? template = freezed,Object? sessionId = freezed,Object? version = null,Object? extInfo = null,}) {
  return _then(_WalletToWalletPaymentRequestDto(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
