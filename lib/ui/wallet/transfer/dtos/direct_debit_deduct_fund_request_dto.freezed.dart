// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_debit_deduct_fund_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectDebitDeductFundRequestDto {

 String get accountNumber; String get amount; String get terminalId; String get terminalNameLoc; String get referenceTxId; String get customerId; String get totalAmount; String get metaData; Map<String, dynamic> get extInfo;
/// Create a copy of DirectDebitDeductFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectDebitDeductFundRequestDtoCopyWith<DirectDebitDeductFundRequestDto> get copyWith => _$DirectDebitDeductFundRequestDtoCopyWithImpl<DirectDebitDeductFundRequestDto>(this as DirectDebitDeductFundRequestDto, _$identity);

  /// Serializes this DirectDebitDeductFundRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectDebitDeductFundRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,amount,terminalId,terminalNameLoc,referenceTxId,customerId,totalAmount,metaData,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'DirectDebitDeductFundRequestDto(accountNumber: $accountNumber, amount: $amount, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, referenceTxId: $referenceTxId, customerId: $customerId, totalAmount: $totalAmount, metaData: $metaData, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $DirectDebitDeductFundRequestDtoCopyWith<$Res>  {
  factory $DirectDebitDeductFundRequestDtoCopyWith(DirectDebitDeductFundRequestDto value, $Res Function(DirectDebitDeductFundRequestDto) _then) = _$DirectDebitDeductFundRequestDtoCopyWithImpl;
@useResult
$Res call({
 String accountNumber, String amount, String terminalId, String terminalNameLoc, String referenceTxId, String customerId, String totalAmount, String metaData, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$DirectDebitDeductFundRequestDtoCopyWithImpl<$Res>
    implements $DirectDebitDeductFundRequestDtoCopyWith<$Res> {
  _$DirectDebitDeductFundRequestDtoCopyWithImpl(this._self, this._then);

  final DirectDebitDeductFundRequestDto _self;
  final $Res Function(DirectDebitDeductFundRequestDto) _then;

/// Create a copy of DirectDebitDeductFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountNumber = null,Object? amount = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? referenceTxId = null,Object? customerId = null,Object? totalAmount = null,Object? metaData = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,metaData: null == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectDebitDeductFundRequestDto].
extension DirectDebitDeductFundRequestDtoPatterns on DirectDebitDeductFundRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectDebitDeductFundRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectDebitDeductFundRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectDebitDeductFundRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectDebitDeductFundRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectDebitDeductFundRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectDebitDeductFundRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountNumber,  String amount,  String terminalId,  String terminalNameLoc,  String referenceTxId,  String customerId,  String totalAmount,  String metaData,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectDebitDeductFundRequestDto() when $default != null:
return $default(_that.accountNumber,_that.amount,_that.terminalId,_that.terminalNameLoc,_that.referenceTxId,_that.customerId,_that.totalAmount,_that.metaData,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountNumber,  String amount,  String terminalId,  String terminalNameLoc,  String referenceTxId,  String customerId,  String totalAmount,  String metaData,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _DirectDebitDeductFundRequestDto():
return $default(_that.accountNumber,_that.amount,_that.terminalId,_that.terminalNameLoc,_that.referenceTxId,_that.customerId,_that.totalAmount,_that.metaData,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountNumber,  String amount,  String terminalId,  String terminalNameLoc,  String referenceTxId,  String customerId,  String totalAmount,  String metaData,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _DirectDebitDeductFundRequestDto() when $default != null:
return $default(_that.accountNumber,_that.amount,_that.terminalId,_that.terminalNameLoc,_that.referenceTxId,_that.customerId,_that.totalAmount,_that.metaData,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectDebitDeductFundRequestDto implements DirectDebitDeductFundRequestDto {
  const _DirectDebitDeductFundRequestDto({required this.accountNumber, required this.amount, required this.terminalId, required this.terminalNameLoc, required this.referenceTxId, required this.customerId, required this.totalAmount, required this.metaData, required final  Map<String, dynamic> extInfo}): _extInfo = extInfo;
  factory _DirectDebitDeductFundRequestDto.fromJson(Map<String, dynamic> json) => _$DirectDebitDeductFundRequestDtoFromJson(json);

@override final  String accountNumber;
@override final  String amount;
@override final  String terminalId;
@override final  String terminalNameLoc;
@override final  String referenceTxId;
@override final  String customerId;
@override final  String totalAmount;
@override final  String metaData;
 final  Map<String, dynamic> _extInfo;
@override Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of DirectDebitDeductFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectDebitDeductFundRequestDtoCopyWith<_DirectDebitDeductFundRequestDto> get copyWith => __$DirectDebitDeductFundRequestDtoCopyWithImpl<_DirectDebitDeductFundRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectDebitDeductFundRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectDebitDeductFundRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,amount,terminalId,terminalNameLoc,referenceTxId,customerId,totalAmount,metaData,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'DirectDebitDeductFundRequestDto(accountNumber: $accountNumber, amount: $amount, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, referenceTxId: $referenceTxId, customerId: $customerId, totalAmount: $totalAmount, metaData: $metaData, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$DirectDebitDeductFundRequestDtoCopyWith<$Res> implements $DirectDebitDeductFundRequestDtoCopyWith<$Res> {
  factory _$DirectDebitDeductFundRequestDtoCopyWith(_DirectDebitDeductFundRequestDto value, $Res Function(_DirectDebitDeductFundRequestDto) _then) = __$DirectDebitDeductFundRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String accountNumber, String amount, String terminalId, String terminalNameLoc, String referenceTxId, String customerId, String totalAmount, String metaData, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$DirectDebitDeductFundRequestDtoCopyWithImpl<$Res>
    implements _$DirectDebitDeductFundRequestDtoCopyWith<$Res> {
  __$DirectDebitDeductFundRequestDtoCopyWithImpl(this._self, this._then);

  final _DirectDebitDeductFundRequestDto _self;
  final $Res Function(_DirectDebitDeductFundRequestDto) _then;

/// Create a copy of DirectDebitDeductFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? amount = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? referenceTxId = null,Object? customerId = null,Object? totalAmount = null,Object? metaData = null,Object? extInfo = null,}) {
  return _then(_DirectDebitDeductFundRequestDto(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,metaData: null == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
