// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_credit_payment_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectCreditPaymentRequestDto {

 String get receiverAccount; String get terminalId; String get amount; String get terminalNameLoc; String get version; String get customerId; String get verificationToken; String? get index; String? get otp; String? get sessionId; String? get template; Map<String, dynamic> get extInfo;
/// Create a copy of DirectCreditPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectCreditPaymentRequestDtoCopyWith<DirectCreditPaymentRequestDto> get copyWith => _$DirectCreditPaymentRequestDtoCopyWithImpl<DirectCreditPaymentRequestDto>(this as DirectCreditPaymentRequestDto, _$identity);

  /// Serializes this DirectCreditPaymentRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectCreditPaymentRequestDto&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.version, version) || other.version == version)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.template, template) || other.template == template)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverAccount,terminalId,amount,terminalNameLoc,version,customerId,verificationToken,index,otp,sessionId,template,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'DirectCreditPaymentRequestDto(receiverAccount: $receiverAccount, terminalId: $terminalId, amount: $amount, terminalNameLoc: $terminalNameLoc, version: $version, customerId: $customerId, verificationToken: $verificationToken, index: $index, otp: $otp, sessionId: $sessionId, template: $template, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $DirectCreditPaymentRequestDtoCopyWith<$Res>  {
  factory $DirectCreditPaymentRequestDtoCopyWith(DirectCreditPaymentRequestDto value, $Res Function(DirectCreditPaymentRequestDto) _then) = _$DirectCreditPaymentRequestDtoCopyWithImpl;
@useResult
$Res call({
 String receiverAccount, String terminalId, String amount, String terminalNameLoc, String version, String customerId, String verificationToken, String? index, String? otp, String? sessionId, String? template, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$DirectCreditPaymentRequestDtoCopyWithImpl<$Res>
    implements $DirectCreditPaymentRequestDtoCopyWith<$Res> {
  _$DirectCreditPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final DirectCreditPaymentRequestDto _self;
  final $Res Function(DirectCreditPaymentRequestDto) _then;

/// Create a copy of DirectCreditPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiverAccount = null,Object? terminalId = null,Object? amount = null,Object? terminalNameLoc = null,Object? version = null,Object? customerId = null,Object? verificationToken = null,Object? index = freezed,Object? otp = freezed,Object? sessionId = freezed,Object? template = freezed,Object? extInfo = null,}) {
  return _then(_self.copyWith(
receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectCreditPaymentRequestDto].
extension DirectCreditPaymentRequestDtoPatterns on DirectCreditPaymentRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectCreditPaymentRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectCreditPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectCreditPaymentRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectCreditPaymentRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectCreditPaymentRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectCreditPaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiverAccount,  String terminalId,  String amount,  String terminalNameLoc,  String version,  String customerId,  String verificationToken,  String? index,  String? otp,  String? sessionId,  String? template,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectCreditPaymentRequestDto() when $default != null:
return $default(_that.receiverAccount,_that.terminalId,_that.amount,_that.terminalNameLoc,_that.version,_that.customerId,_that.verificationToken,_that.index,_that.otp,_that.sessionId,_that.template,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiverAccount,  String terminalId,  String amount,  String terminalNameLoc,  String version,  String customerId,  String verificationToken,  String? index,  String? otp,  String? sessionId,  String? template,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _DirectCreditPaymentRequestDto():
return $default(_that.receiverAccount,_that.terminalId,_that.amount,_that.terminalNameLoc,_that.version,_that.customerId,_that.verificationToken,_that.index,_that.otp,_that.sessionId,_that.template,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiverAccount,  String terminalId,  String amount,  String terminalNameLoc,  String version,  String customerId,  String verificationToken,  String? index,  String? otp,  String? sessionId,  String? template,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _DirectCreditPaymentRequestDto() when $default != null:
return $default(_that.receiverAccount,_that.terminalId,_that.amount,_that.terminalNameLoc,_that.version,_that.customerId,_that.verificationToken,_that.index,_that.otp,_that.sessionId,_that.template,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectCreditPaymentRequestDto implements DirectCreditPaymentRequestDto {
  const _DirectCreditPaymentRequestDto({required this.receiverAccount, required this.terminalId, required this.amount, required this.terminalNameLoc, this.version = "v1", required this.customerId, required this.verificationToken, this.index, this.otp, this.sessionId, this.template, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _DirectCreditPaymentRequestDto.fromJson(Map<String, dynamic> json) => _$DirectCreditPaymentRequestDtoFromJson(json);

@override final  String receiverAccount;
@override final  String terminalId;
@override final  String amount;
@override final  String terminalNameLoc;
@override@JsonKey() final  String version;
@override final  String customerId;
@override final  String verificationToken;
@override final  String? index;
@override final  String? otp;
@override final  String? sessionId;
@override final  String? template;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of DirectCreditPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectCreditPaymentRequestDtoCopyWith<_DirectCreditPaymentRequestDto> get copyWith => __$DirectCreditPaymentRequestDtoCopyWithImpl<_DirectCreditPaymentRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectCreditPaymentRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectCreditPaymentRequestDto&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.version, version) || other.version == version)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.index, index) || other.index == index)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.template, template) || other.template == template)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverAccount,terminalId,amount,terminalNameLoc,version,customerId,verificationToken,index,otp,sessionId,template,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'DirectCreditPaymentRequestDto(receiverAccount: $receiverAccount, terminalId: $terminalId, amount: $amount, terminalNameLoc: $terminalNameLoc, version: $version, customerId: $customerId, verificationToken: $verificationToken, index: $index, otp: $otp, sessionId: $sessionId, template: $template, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$DirectCreditPaymentRequestDtoCopyWith<$Res> implements $DirectCreditPaymentRequestDtoCopyWith<$Res> {
  factory _$DirectCreditPaymentRequestDtoCopyWith(_DirectCreditPaymentRequestDto value, $Res Function(_DirectCreditPaymentRequestDto) _then) = __$DirectCreditPaymentRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String receiverAccount, String terminalId, String amount, String terminalNameLoc, String version, String customerId, String verificationToken, String? index, String? otp, String? sessionId, String? template, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$DirectCreditPaymentRequestDtoCopyWithImpl<$Res>
    implements _$DirectCreditPaymentRequestDtoCopyWith<$Res> {
  __$DirectCreditPaymentRequestDtoCopyWithImpl(this._self, this._then);

  final _DirectCreditPaymentRequestDto _self;
  final $Res Function(_DirectCreditPaymentRequestDto) _then;

/// Create a copy of DirectCreditPaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiverAccount = null,Object? terminalId = null,Object? amount = null,Object? terminalNameLoc = null,Object? version = null,Object? customerId = null,Object? verificationToken = null,Object? index = freezed,Object? otp = freezed,Object? sessionId = freezed,Object? template = freezed,Object? extInfo = null,}) {
  return _then(_DirectCreditPaymentRequestDto(
receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as String?,otp: freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,template: freezed == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as String?,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
