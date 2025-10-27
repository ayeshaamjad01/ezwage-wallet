// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_payment_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopupPaymentRequestDto {

 String get senderAccount;// e.g. 03464365914
 String get customerId;// Customer ID
 String get consumerName;// Name returned in Inquiry
 String get amount;// In Paisas
 int get telcoId;// From Telco list
 String get version;// v1
 String get feeAmount;// Fee in Paisas
// Optional fields for different auth methods
 String? get template;// WSQ encoded fingerprint (BVS)
 String? get index;// Finger Number (BVS)
 String? get otp;// OTP sent to customer
 String? get sessionId;// NADRA session ID (BVS)
 String? get consumerNumber;// Customer’s mobile number or ref
 String? get verificationToken;
/// Create a copy of TopupPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupPaymentRequestDtoCopyWith<TopupPaymentRequestDto> get copyWith => _$TopupPaymentRequestDtoCopyWithImpl<TopupPaymentRequestDto>(this as TopupPaymentRequestDto, _$identity);

  /// Serializes this TopupPaymentRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupPaymentRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.version, version) || other.version == version)&&(identical(other.feeAmount, feeAmount) || other.feeAmount == feeAmount)&&(identical(other.template, template) || other.template == template)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,consumerName,amount,telcoId,version,feeAmount,template,index,otp,sessionId,consumerNumber,verificationToken);

@override
String toString() {
  return 'TopupPaymentRequestDto(senderAccount: $senderAccount, customerId: $customerId, consumerName: $consumerName, amount: $amount, telcoId: $telcoId, version: $version, feeAmount: $feeAmount, template: $template, index: $index, otp: $otp, sessionId: $sessionId, consumerNumber: $consumerNumber, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class $TopupPaymentRequestDtoCopyWith<$Res>  {
  factory $TopupPaymentRequestDtoCopyWith(TopupPaymentRequestDto value, $Res Function(TopupPaymentRequestDto) _then) = _$TopupPaymentRequestDtoCopyWithImpl;
@useResult
$Res call({
 String senderAccount, String customerId, String consumerName, String amount, int telcoId, String version, String feeAmount, String? template, String? index, String? otp, String? sessionId, String? consumerNumber, String? verificationToken
});




}
/// @nodoc
class _$TopupPaymentRequestDtoCopyWithImpl<$Res>
    implements $TopupPaymentRequestDtoCopyWith<$Res> {
  _$TopupPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final TopupPaymentRequestDto _self;
  final $Res Function(TopupPaymentRequestDto) _then;

/// Create a copy of TopupPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderAccount = null,Object? customerId = null,Object? consumerName = null,Object? amount = null,Object? telcoId = null,Object? version = null,Object? feeAmount = null,Object? template = freezed,Object? index = freezed,Object? otp = freezed,Object? sessionId = freezed,Object? consumerNumber = freezed,Object? verificationToken = freezed,}) {
  return _then(_self.copyWith(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerName: null == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,telcoId: null == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as int,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,feeAmount: null == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as String,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TopupPaymentRequestDto].
extension TopupPaymentRequestDtoPatterns on TopupPaymentRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupPaymentRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupPaymentRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _TopupPaymentRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupPaymentRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopupPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String consumerName,  String amount,  int telcoId,  String version,  String feeAmount,  String? template,  String? index,  String? otp,  String? sessionId,  String? consumerNumber,  String? verificationToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopupPaymentRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.consumerName,_that.amount,_that.telcoId,_that.version,_that.feeAmount,_that.template,_that.index,_that.otp,_that.sessionId,_that.consumerNumber,_that.verificationToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String consumerName,  String amount,  int telcoId,  String version,  String feeAmount,  String? template,  String? index,  String? otp,  String? sessionId,  String? consumerNumber,  String? verificationToken)  $default,) {final _that = this;
switch (_that) {
case _TopupPaymentRequestDto():
return $default(_that.senderAccount,_that.customerId,_that.consumerName,_that.amount,_that.telcoId,_that.version,_that.feeAmount,_that.template,_that.index,_that.otp,_that.sessionId,_that.consumerNumber,_that.verificationToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderAccount,  String customerId,  String consumerName,  String amount,  int telcoId,  String version,  String feeAmount,  String? template,  String? index,  String? otp,  String? sessionId,  String? consumerNumber,  String? verificationToken)?  $default,) {final _that = this;
switch (_that) {
case _TopupPaymentRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.consumerName,_that.amount,_that.telcoId,_that.version,_that.feeAmount,_that.template,_that.index,_that.otp,_that.sessionId,_that.consumerNumber,_that.verificationToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupPaymentRequestDto implements TopupPaymentRequestDto {
  const _TopupPaymentRequestDto({required this.senderAccount, required this.customerId, required this.consumerName, required this.amount, required this.telcoId, this.version = "v1", required this.feeAmount, this.template, this.index, this.otp, this.sessionId, this.consumerNumber, this.verificationToken});
  factory _TopupPaymentRequestDto.fromJson(Map<String, dynamic> json) => _$TopupPaymentRequestDtoFromJson(json);

@override final  String senderAccount;
// e.g. 03464365914
@override final  String customerId;
// Customer ID
@override final  String consumerName;
// Name returned in Inquiry
@override final  String amount;
// In Paisas
@override final  int telcoId;
// From Telco list
@override@JsonKey() final  String version;
// v1
@override final  String feeAmount;
// Fee in Paisas
// Optional fields for different auth methods
@override final  String? template;
// WSQ encoded fingerprint (BVS)
@override final  String? index;
// Finger Number (BVS)
@override final  String? otp;
// OTP sent to customer
@override final  String? sessionId;
// NADRA session ID (BVS)
@override final  String? consumerNumber;
// Customer’s mobile number or ref
@override final  String? verificationToken;

/// Create a copy of TopupPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupPaymentRequestDtoCopyWith<_TopupPaymentRequestDto> get copyWith => __$TopupPaymentRequestDtoCopyWithImpl<_TopupPaymentRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupPaymentRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupPaymentRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.version, version) || other.version == version)&&(identical(other.feeAmount, feeAmount) || other.feeAmount == feeAmount)&&(identical(other.template, template) || other.template == template)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,consumerName,amount,telcoId,version,feeAmount,template,index,otp,sessionId,consumerNumber,verificationToken);

@override
String toString() {
  return 'TopupPaymentRequestDto(senderAccount: $senderAccount, customerId: $customerId, consumerName: $consumerName, amount: $amount, telcoId: $telcoId, version: $version, feeAmount: $feeAmount, template: $template, index: $index, otp: $otp, sessionId: $sessionId, consumerNumber: $consumerNumber, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class _$TopupPaymentRequestDtoCopyWith<$Res> implements $TopupPaymentRequestDtoCopyWith<$Res> {
  factory _$TopupPaymentRequestDtoCopyWith(_TopupPaymentRequestDto value, $Res Function(_TopupPaymentRequestDto) _then) = __$TopupPaymentRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String senderAccount, String customerId, String consumerName, String amount, int telcoId, String version, String feeAmount, String? template, String? index, String? otp, String? sessionId, String? consumerNumber, String? verificationToken
});




}
/// @nodoc
class __$TopupPaymentRequestDtoCopyWithImpl<$Res>
    implements _$TopupPaymentRequestDtoCopyWith<$Res> {
  __$TopupPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final _TopupPaymentRequestDto _self;
  final $Res Function(_TopupPaymentRequestDto) _then;

/// Create a copy of TopupPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderAccount = null,Object? customerId = null,Object? consumerName = null,Object? amount = null,Object? telcoId = null,Object? version = null,Object? feeAmount = null,Object? template = freezed,Object? index = freezed,Object? otp = freezed,Object? sessionId = freezed,Object? consumerNumber = freezed,Object? verificationToken = freezed,}) {
  return _then(_TopupPaymentRequestDto(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerName: null == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,telcoId: null == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as int,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,feeAmount: null == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as String,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
