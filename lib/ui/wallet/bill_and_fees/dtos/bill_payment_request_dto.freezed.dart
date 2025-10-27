// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_payment_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillPaymentRequestDto {

 String? get template;// optional
 String get senderAccount; int get billerId; String get amount; String? get verificationToken; String? get index;// for BVS finger index
 String? get otp;// for OTP verification
 String? get consumerNumber; String? get sessionId;// for BVS NADRA TRA Session ID
 String get version; String? get transactionId;// returned by inquiry sometimes
 String get feeAmount; String get billMonth; String get customerId; String get taxAmount; String get consumerName;
/// Create a copy of BillPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillPaymentRequestDtoCopyWith<BillPaymentRequestDto> get copyWith => _$BillPaymentRequestDtoCopyWithImpl<BillPaymentRequestDto>(this as BillPaymentRequestDto, _$identity);

  /// Serializes this BillPaymentRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillPaymentRequestDto&&(identical(other.template, template) || other.template == template)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.billerId, billerId) || other.billerId == billerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.version, version) || other.version == version)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.feeAmount, feeAmount) || other.feeAmount == feeAmount)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,template,senderAccount,billerId,amount,verificationToken,index,otp,consumerNumber,sessionId,version,transactionId,feeAmount,billMonth,customerId,taxAmount,consumerName);

@override
String toString() {
  return 'BillPaymentRequestDto(template: $template, senderAccount: $senderAccount, billerId: $billerId, amount: $amount, verificationToken: $verificationToken, index: $index, otp: $otp, consumerNumber: $consumerNumber, sessionId: $sessionId, version: $version, transactionId: $transactionId, feeAmount: $feeAmount, billMonth: $billMonth, customerId: $customerId, taxAmount: $taxAmount, consumerName: $consumerName)';
}


}

/// @nodoc
abstract mixin class $BillPaymentRequestDtoCopyWith<$Res>  {
  factory $BillPaymentRequestDtoCopyWith(BillPaymentRequestDto value, $Res Function(BillPaymentRequestDto) _then) = _$BillPaymentRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? template, String senderAccount, int billerId, String amount, String? verificationToken, String? index, String? otp, String? consumerNumber, String? sessionId, String version, String? transactionId, String feeAmount, String billMonth, String customerId, String taxAmount, String consumerName
});




}
/// @nodoc
class _$BillPaymentRequestDtoCopyWithImpl<$Res>
    implements $BillPaymentRequestDtoCopyWith<$Res> {
  _$BillPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final BillPaymentRequestDto _self;
  final $Res Function(BillPaymentRequestDto) _then;

/// Create a copy of BillPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? template = freezed,Object? senderAccount = null,Object? billerId = null,Object? amount = null,Object? verificationToken = freezed,Object? index = freezed,Object? otp = freezed,Object? consumerNumber = freezed,Object? sessionId = freezed,Object? version = null,Object? transactionId = freezed,Object? feeAmount = null,Object? billMonth = null,Object? customerId = null,Object? taxAmount = null,Object? consumerName = null,}) {
  return _then(_self.copyWith(
template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,billerId: null == billerId ? _self.billerId : billerId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,feeAmount: null == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as String,billMonth: null == billMonth ? _self.billMonth : billMonth // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,consumerName: null == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BillPaymentRequestDto].
extension BillPaymentRequestDtoPatterns on BillPaymentRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillPaymentRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillPaymentRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _BillPaymentRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillPaymentRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? template,  String senderAccount,  int billerId,  String amount,  String? verificationToken,  String? index,  String? otp,  String? consumerNumber,  String? sessionId,  String version,  String? transactionId,  String feeAmount,  String billMonth,  String customerId,  String taxAmount,  String consumerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillPaymentRequestDto() when $default != null:
return $default(_that.template,_that.senderAccount,_that.billerId,_that.amount,_that.verificationToken,_that.index,_that.otp,_that.consumerNumber,_that.sessionId,_that.version,_that.transactionId,_that.feeAmount,_that.billMonth,_that.customerId,_that.taxAmount,_that.consumerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? template,  String senderAccount,  int billerId,  String amount,  String? verificationToken,  String? index,  String? otp,  String? consumerNumber,  String? sessionId,  String version,  String? transactionId,  String feeAmount,  String billMonth,  String customerId,  String taxAmount,  String consumerName)  $default,) {final _that = this;
switch (_that) {
case _BillPaymentRequestDto():
return $default(_that.template,_that.senderAccount,_that.billerId,_that.amount,_that.verificationToken,_that.index,_that.otp,_that.consumerNumber,_that.sessionId,_that.version,_that.transactionId,_that.feeAmount,_that.billMonth,_that.customerId,_that.taxAmount,_that.consumerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? template,  String senderAccount,  int billerId,  String amount,  String? verificationToken,  String? index,  String? otp,  String? consumerNumber,  String? sessionId,  String version,  String? transactionId,  String feeAmount,  String billMonth,  String customerId,  String taxAmount,  String consumerName)?  $default,) {final _that = this;
switch (_that) {
case _BillPaymentRequestDto() when $default != null:
return $default(_that.template,_that.senderAccount,_that.billerId,_that.amount,_that.verificationToken,_that.index,_that.otp,_that.consumerNumber,_that.sessionId,_that.version,_that.transactionId,_that.feeAmount,_that.billMonth,_that.customerId,_that.taxAmount,_that.consumerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillPaymentRequestDto implements BillPaymentRequestDto {
  const _BillPaymentRequestDto({this.template, required this.senderAccount, required this.billerId, required this.amount, this.verificationToken, this.index, this.otp, this.consumerNumber, this.sessionId, this.version = "v1", this.transactionId, required this.feeAmount, required this.billMonth, required this.customerId, required this.taxAmount, required this.consumerName});
  factory _BillPaymentRequestDto.fromJson(Map<String, dynamic> json) => _$BillPaymentRequestDtoFromJson(json);

@override final  String? template;
// optional
@override final  String senderAccount;
@override final  int billerId;
@override final  String amount;
@override final  String? verificationToken;
@override final  String? index;
// for BVS finger index
@override final  String? otp;
// for OTP verification
@override final  String? consumerNumber;
@override final  String? sessionId;
// for BVS NADRA TRA Session ID
@override@JsonKey() final  String version;
@override final  String? transactionId;
// returned by inquiry sometimes
@override final  String feeAmount;
@override final  String billMonth;
@override final  String customerId;
@override final  String taxAmount;
@override final  String consumerName;

/// Create a copy of BillPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillPaymentRequestDtoCopyWith<_BillPaymentRequestDto> get copyWith => __$BillPaymentRequestDtoCopyWithImpl<_BillPaymentRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillPaymentRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillPaymentRequestDto&&(identical(other.template, template) || other.template == template)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.billerId, billerId) || other.billerId == billerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.version, version) || other.version == version)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.feeAmount, feeAmount) || other.feeAmount == feeAmount)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,template,senderAccount,billerId,amount,verificationToken,index,otp,consumerNumber,sessionId,version,transactionId,feeAmount,billMonth,customerId,taxAmount,consumerName);

@override
String toString() {
  return 'BillPaymentRequestDto(template: $template, senderAccount: $senderAccount, billerId: $billerId, amount: $amount, verificationToken: $verificationToken, index: $index, otp: $otp, consumerNumber: $consumerNumber, sessionId: $sessionId, version: $version, transactionId: $transactionId, feeAmount: $feeAmount, billMonth: $billMonth, customerId: $customerId, taxAmount: $taxAmount, consumerName: $consumerName)';
}


}

/// @nodoc
abstract mixin class _$BillPaymentRequestDtoCopyWith<$Res> implements $BillPaymentRequestDtoCopyWith<$Res> {
  factory _$BillPaymentRequestDtoCopyWith(_BillPaymentRequestDto value, $Res Function(_BillPaymentRequestDto) _then) = __$BillPaymentRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? template, String senderAccount, int billerId, String amount, String? verificationToken, String? index, String? otp, String? consumerNumber, String? sessionId, String version, String? transactionId, String feeAmount, String billMonth, String customerId, String taxAmount, String consumerName
});




}
/// @nodoc
class __$BillPaymentRequestDtoCopyWithImpl<$Res>
    implements _$BillPaymentRequestDtoCopyWith<$Res> {
  __$BillPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final _BillPaymentRequestDto _self;
  final $Res Function(_BillPaymentRequestDto) _then;

/// Create a copy of BillPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? template = freezed,Object? senderAccount = null,Object? billerId = null,Object? amount = null,Object? verificationToken = freezed,Object? index = freezed,Object? otp = freezed,Object? consumerNumber = freezed,Object? sessionId = freezed,Object? version = null,Object? transactionId = freezed,Object? feeAmount = null,Object? billMonth = null,Object? customerId = null,Object? taxAmount = null,Object? consumerName = null,}) {
  return _then(_BillPaymentRequestDto(
template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,billerId: null == billerId ? _self.billerId : billerId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,feeAmount: null == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as String,billMonth: null == billMonth ? _self.billMonth : billMonth // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,consumerName: null == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
