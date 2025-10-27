// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillInquiryRequestDto {

 String get senderAccount; String get billerId; String get amount; String get customerId; String get consumerNumber; String get consumerName; String get taxAmount; String get version;
/// Create a copy of BillInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillInquiryRequestDtoCopyWith<BillInquiryRequestDto> get copyWith => _$BillInquiryRequestDtoCopyWithImpl<BillInquiryRequestDto>(this as BillInquiryRequestDto, _$identity);

  /// Serializes this BillInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillInquiryRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.billerId, billerId) || other.billerId == billerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,billerId,amount,customerId,consumerNumber,consumerName,taxAmount,version);

@override
String toString() {
  return 'BillInquiryRequestDto(senderAccount: $senderAccount, billerId: $billerId, amount: $amount, customerId: $customerId, consumerNumber: $consumerNumber, consumerName: $consumerName, taxAmount: $taxAmount, version: $version)';
}


}

/// @nodoc
abstract mixin class $BillInquiryRequestDtoCopyWith<$Res>  {
  factory $BillInquiryRequestDtoCopyWith(BillInquiryRequestDto value, $Res Function(BillInquiryRequestDto) _then) = _$BillInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String senderAccount, String billerId, String amount, String customerId, String consumerNumber, String consumerName, String taxAmount, String version
});




}
/// @nodoc
class _$BillInquiryRequestDtoCopyWithImpl<$Res>
    implements $BillInquiryRequestDtoCopyWith<$Res> {
  _$BillInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final BillInquiryRequestDto _self;
  final $Res Function(BillInquiryRequestDto) _then;

/// Create a copy of BillInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderAccount = null,Object? billerId = null,Object? amount = null,Object? customerId = null,Object? consumerNumber = null,Object? consumerName = null,Object? taxAmount = null,Object? version = null,}) {
  return _then(_self.copyWith(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,billerId: null == billerId ? _self.billerId : billerId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: null == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String,consumerName: null == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BillInquiryRequestDto].
extension BillInquiryRequestDtoPatterns on BillInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _BillInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderAccount,  String billerId,  String amount,  String customerId,  String consumerNumber,  String consumerName,  String taxAmount,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillInquiryRequestDto() when $default != null:
return $default(_that.senderAccount,_that.billerId,_that.amount,_that.customerId,_that.consumerNumber,_that.consumerName,_that.taxAmount,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderAccount,  String billerId,  String amount,  String customerId,  String consumerNumber,  String consumerName,  String taxAmount,  String version)  $default,) {final _that = this;
switch (_that) {
case _BillInquiryRequestDto():
return $default(_that.senderAccount,_that.billerId,_that.amount,_that.customerId,_that.consumerNumber,_that.consumerName,_that.taxAmount,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderAccount,  String billerId,  String amount,  String customerId,  String consumerNumber,  String consumerName,  String taxAmount,  String version)?  $default,) {final _that = this;
switch (_that) {
case _BillInquiryRequestDto() when $default != null:
return $default(_that.senderAccount,_that.billerId,_that.amount,_that.customerId,_that.consumerNumber,_that.consumerName,_that.taxAmount,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillInquiryRequestDto implements BillInquiryRequestDto {
  const _BillInquiryRequestDto({required this.senderAccount, required this.billerId, required this.amount, required this.customerId, required this.consumerNumber, required this.consumerName, required this.taxAmount, this.version = "v1"});
  factory _BillInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$BillInquiryRequestDtoFromJson(json);

@override final  String senderAccount;
@override final  String billerId;
@override final  String amount;
@override final  String customerId;
@override final  String consumerNumber;
@override final  String consumerName;
@override final  String taxAmount;
@override@JsonKey() final  String version;

/// Create a copy of BillInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillInquiryRequestDtoCopyWith<_BillInquiryRequestDto> get copyWith => __$BillInquiryRequestDtoCopyWithImpl<_BillInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillInquiryRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.billerId, billerId) || other.billerId == billerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,billerId,amount,customerId,consumerNumber,consumerName,taxAmount,version);

@override
String toString() {
  return 'BillInquiryRequestDto(senderAccount: $senderAccount, billerId: $billerId, amount: $amount, customerId: $customerId, consumerNumber: $consumerNumber, consumerName: $consumerName, taxAmount: $taxAmount, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BillInquiryRequestDtoCopyWith<$Res> implements $BillInquiryRequestDtoCopyWith<$Res> {
  factory _$BillInquiryRequestDtoCopyWith(_BillInquiryRequestDto value, $Res Function(_BillInquiryRequestDto) _then) = __$BillInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String senderAccount, String billerId, String amount, String customerId, String consumerNumber, String consumerName, String taxAmount, String version
});




}
/// @nodoc
class __$BillInquiryRequestDtoCopyWithImpl<$Res>
    implements _$BillInquiryRequestDtoCopyWith<$Res> {
  __$BillInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _BillInquiryRequestDto _self;
  final $Res Function(_BillInquiryRequestDto) _then;

/// Create a copy of BillInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderAccount = null,Object? billerId = null,Object? amount = null,Object? customerId = null,Object? consumerNumber = null,Object? consumerName = null,Object? taxAmount = null,Object? version = null,}) {
  return _then(_BillInquiryRequestDto(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,billerId: null == billerId ? _self.billerId : billerId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: null == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String,consumerName: null == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
