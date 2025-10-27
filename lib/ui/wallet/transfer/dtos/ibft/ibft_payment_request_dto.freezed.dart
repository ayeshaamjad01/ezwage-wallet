// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibft_payment_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IbftPaymentRequestDto {

 String get senderAccount; String get customerId; String get receiverAccount; String get amount; String get bankId; String get purposeId; String get verificationToken; String get version; String? get template; String? get beneficiaryBank; String? get beneficiaryTitle; String? get beneficiaryIban; String? get index; String? get otp; String? get sessionId; String? get beneficiaryBranch;
/// Create a copy of IbftPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftPaymentRequestDtoCopyWith<IbftPaymentRequestDto> get copyWith => _$IbftPaymentRequestDtoCopyWithImpl<IbftPaymentRequestDto>(this as IbftPaymentRequestDto, _$identity);

  /// Serializes this IbftPaymentRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftPaymentRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.purposeId, purposeId) || other.purposeId == purposeId)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.version, version) || other.version == version)&&(identical(other.template, template) || other.template == template)&&(identical(other.beneficiaryBank, beneficiaryBank) || other.beneficiaryBank == beneficiaryBank)&&(identical(other.beneficiaryTitle, beneficiaryTitle) || other.beneficiaryTitle == beneficiaryTitle)&&(identical(other.beneficiaryIban, beneficiaryIban) || other.beneficiaryIban == beneficiaryIban)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.beneficiaryBranch, beneficiaryBranch) || other.beneficiaryBranch == beneficiaryBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,bankId,purposeId,verificationToken,version,template,beneficiaryBank,beneficiaryTitle,beneficiaryIban,index,otp,sessionId,beneficiaryBranch);

@override
String toString() {
  return 'IbftPaymentRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, bankId: $bankId, purposeId: $purposeId, verificationToken: $verificationToken, version: $version, template: $template, beneficiaryBank: $beneficiaryBank, beneficiaryTitle: $beneficiaryTitle, beneficiaryIban: $beneficiaryIban, index: $index, otp: $otp, sessionId: $sessionId, beneficiaryBranch: $beneficiaryBranch)';
}


}

/// @nodoc
abstract mixin class $IbftPaymentRequestDtoCopyWith<$Res>  {
  factory $IbftPaymentRequestDtoCopyWith(IbftPaymentRequestDto value, $Res Function(IbftPaymentRequestDto) _then) = _$IbftPaymentRequestDtoCopyWithImpl;
@useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String bankId, String purposeId, String verificationToken, String version, String? template, String? beneficiaryBank, String? beneficiaryTitle, String? beneficiaryIban, String? index, String? otp, String? sessionId, String? beneficiaryBranch
});




}
/// @nodoc
class _$IbftPaymentRequestDtoCopyWithImpl<$Res>
    implements $IbftPaymentRequestDtoCopyWith<$Res> {
  _$IbftPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final IbftPaymentRequestDto _self;
  final $Res Function(IbftPaymentRequestDto) _then;

/// Create a copy of IbftPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? bankId = null,Object? purposeId = null,Object? verificationToken = null,Object? version = null,Object? template = freezed,Object? beneficiaryBank = freezed,Object? beneficiaryTitle = freezed,Object? beneficiaryIban = freezed,Object? index = freezed,Object? otp = freezed,Object? sessionId = freezed,Object? beneficiaryBranch = freezed,}) {
  return _then(_self.copyWith(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,purposeId: null == purposeId ? _self.purposeId : purposeId // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBank: freezed == beneficiaryBank ? _self.beneficiaryBank : beneficiaryBank // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryTitle: freezed == beneficiaryTitle ? _self.beneficiaryTitle : beneficiaryTitle // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIban: freezed == beneficiaryIban ? _self.beneficiaryIban : beneficiaryIban // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranch: freezed == beneficiaryBranch ? _self.beneficiaryBranch : beneficiaryBranch // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IbftPaymentRequestDto].
extension IbftPaymentRequestDtoPatterns on IbftPaymentRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftPaymentRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftPaymentRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _IbftPaymentRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftPaymentRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _IbftPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String bankId,  String purposeId,  String verificationToken,  String version,  String? template,  String? beneficiaryBank,  String? beneficiaryTitle,  String? beneficiaryIban,  String? index,  String? otp,  String? sessionId,  String? beneficiaryBranch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftPaymentRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.bankId,_that.purposeId,_that.verificationToken,_that.version,_that.template,_that.beneficiaryBank,_that.beneficiaryTitle,_that.beneficiaryIban,_that.index,_that.otp,_that.sessionId,_that.beneficiaryBranch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String bankId,  String purposeId,  String verificationToken,  String version,  String? template,  String? beneficiaryBank,  String? beneficiaryTitle,  String? beneficiaryIban,  String? index,  String? otp,  String? sessionId,  String? beneficiaryBranch)  $default,) {final _that = this;
switch (_that) {
case _IbftPaymentRequestDto():
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.bankId,_that.purposeId,_that.verificationToken,_that.version,_that.template,_that.beneficiaryBank,_that.beneficiaryTitle,_that.beneficiaryIban,_that.index,_that.otp,_that.sessionId,_that.beneficiaryBranch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderAccount,  String customerId,  String receiverAccount,  String amount,  String bankId,  String purposeId,  String verificationToken,  String version,  String? template,  String? beneficiaryBank,  String? beneficiaryTitle,  String? beneficiaryIban,  String? index,  String? otp,  String? sessionId,  String? beneficiaryBranch)?  $default,) {final _that = this;
switch (_that) {
case _IbftPaymentRequestDto() when $default != null:
return $default(_that.senderAccount,_that.customerId,_that.receiverAccount,_that.amount,_that.bankId,_that.purposeId,_that.verificationToken,_that.version,_that.template,_that.beneficiaryBank,_that.beneficiaryTitle,_that.beneficiaryIban,_that.index,_that.otp,_that.sessionId,_that.beneficiaryBranch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftPaymentRequestDto implements IbftPaymentRequestDto {
  const _IbftPaymentRequestDto({required this.senderAccount, required this.customerId, required this.receiverAccount, required this.amount, required this.bankId, required this.purposeId, required this.verificationToken, this.version = "v1", this.template, this.beneficiaryBank, this.beneficiaryTitle, this.beneficiaryIban, this.index, this.otp, this.sessionId, this.beneficiaryBranch});
  factory _IbftPaymentRequestDto.fromJson(Map<String, dynamic> json) => _$IbftPaymentRequestDtoFromJson(json);

@override final  String senderAccount;
@override final  String customerId;
@override final  String receiverAccount;
@override final  String amount;
@override final  String bankId;
@override final  String purposeId;
@override final  String verificationToken;
@override@JsonKey() final  String version;
@override final  String? template;
@override final  String? beneficiaryBank;
@override final  String? beneficiaryTitle;
@override final  String? beneficiaryIban;
@override final  String? index;
@override final  String? otp;
@override final  String? sessionId;
@override final  String? beneficiaryBranch;

/// Create a copy of IbftPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftPaymentRequestDtoCopyWith<_IbftPaymentRequestDto> get copyWith => __$IbftPaymentRequestDtoCopyWithImpl<_IbftPaymentRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftPaymentRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftPaymentRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.purposeId, purposeId) || other.purposeId == purposeId)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.version, version) || other.version == version)&&(identical(other.template, template) || other.template == template)&&(identical(other.beneficiaryBank, beneficiaryBank) || other.beneficiaryBank == beneficiaryBank)&&(identical(other.beneficiaryTitle, beneficiaryTitle) || other.beneficiaryTitle == beneficiaryTitle)&&(identical(other.beneficiaryIban, beneficiaryIban) || other.beneficiaryIban == beneficiaryIban)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.beneficiaryBranch, beneficiaryBranch) || other.beneficiaryBranch == beneficiaryBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,customerId,receiverAccount,amount,bankId,purposeId,verificationToken,version,template,beneficiaryBank,beneficiaryTitle,beneficiaryIban,index,otp,sessionId,beneficiaryBranch);

@override
String toString() {
  return 'IbftPaymentRequestDto(senderAccount: $senderAccount, customerId: $customerId, receiverAccount: $receiverAccount, amount: $amount, bankId: $bankId, purposeId: $purposeId, verificationToken: $verificationToken, version: $version, template: $template, beneficiaryBank: $beneficiaryBank, beneficiaryTitle: $beneficiaryTitle, beneficiaryIban: $beneficiaryIban, index: $index, otp: $otp, sessionId: $sessionId, beneficiaryBranch: $beneficiaryBranch)';
}


}

/// @nodoc
abstract mixin class _$IbftPaymentRequestDtoCopyWith<$Res> implements $IbftPaymentRequestDtoCopyWith<$Res> {
  factory _$IbftPaymentRequestDtoCopyWith(_IbftPaymentRequestDto value, $Res Function(_IbftPaymentRequestDto) _then) = __$IbftPaymentRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String senderAccount, String customerId, String receiverAccount, String amount, String bankId, String purposeId, String verificationToken, String version, String? template, String? beneficiaryBank, String? beneficiaryTitle, String? beneficiaryIban, String? index, String? otp, String? sessionId, String? beneficiaryBranch
});




}
/// @nodoc
class __$IbftPaymentRequestDtoCopyWithImpl<$Res>
    implements _$IbftPaymentRequestDtoCopyWith<$Res> {
  __$IbftPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final _IbftPaymentRequestDto _self;
  final $Res Function(_IbftPaymentRequestDto) _then;

/// Create a copy of IbftPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderAccount = null,Object? customerId = null,Object? receiverAccount = null,Object? amount = null,Object? bankId = null,Object? purposeId = null,Object? verificationToken = null,Object? version = null,Object? template = freezed,Object? beneficiaryBank = freezed,Object? beneficiaryTitle = freezed,Object? beneficiaryIban = freezed,Object? index = freezed,Object? otp = freezed,Object? sessionId = freezed,Object? beneficiaryBranch = freezed,}) {
  return _then(_IbftPaymentRequestDto(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,purposeId: null == purposeId ? _self.purposeId : purposeId // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBank: freezed == beneficiaryBank ? _self.beneficiaryBank : beneficiaryBank // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryTitle: freezed == beneficiaryTitle ? _self.beneficiaryTitle : beneficiaryTitle // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIban: freezed == beneficiaryIban ? _self.beneficiaryIban : beneficiaryIban // ignore: cast_nullable_to_non_nullable
as String?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranch: freezed == beneficiaryBranch ? _self.beneficiaryBranch : beneficiaryBranch // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
