// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_gl_balance_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetGlBalanceResponseDto {

 String get glAccountNumber; String get transactionDate; String get settlementDate; String get transactionId; String get stan; String get transactionType; String get settleType; String get companyName; String get subType; String get transactionDetail; String get debitAmount; String get creditAmount; String get balance; String get status; String get custDebitAcc; String get custCreditAcc; String get metaData; String get accountType;
/// Create a copy of GetGlBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGlBalanceResponseDtoCopyWith<GetGlBalanceResponseDto> get copyWith => _$GetGlBalanceResponseDtoCopyWithImpl<GetGlBalanceResponseDto>(this as GetGlBalanceResponseDto, _$identity);

  /// Serializes this GetGlBalanceResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGlBalanceResponseDto&&(identical(other.glAccountNumber, glAccountNumber) || other.glAccountNumber == glAccountNumber)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.settlementDate, settlementDate) || other.settlementDate == settlementDate)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.stan, stan) || other.stan == stan)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.settleType, settleType) || other.settleType == settleType)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.subType, subType) || other.subType == subType)&&(identical(other.transactionDetail, transactionDetail) || other.transactionDetail == transactionDetail)&&(identical(other.debitAmount, debitAmount) || other.debitAmount == debitAmount)&&(identical(other.creditAmount, creditAmount) || other.creditAmount == creditAmount)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.status, status) || other.status == status)&&(identical(other.custDebitAcc, custDebitAcc) || other.custDebitAcc == custDebitAcc)&&(identical(other.custCreditAcc, custCreditAcc) || other.custCreditAcc == custCreditAcc)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&(identical(other.accountType, accountType) || other.accountType == accountType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,glAccountNumber,transactionDate,settlementDate,transactionId,stan,transactionType,settleType,companyName,subType,transactionDetail,debitAmount,creditAmount,balance,status,custDebitAcc,custCreditAcc,metaData,accountType);

@override
String toString() {
  return 'GetGlBalanceResponseDto(glAccountNumber: $glAccountNumber, transactionDate: $transactionDate, settlementDate: $settlementDate, transactionId: $transactionId, stan: $stan, transactionType: $transactionType, settleType: $settleType, companyName: $companyName, subType: $subType, transactionDetail: $transactionDetail, debitAmount: $debitAmount, creditAmount: $creditAmount, balance: $balance, status: $status, custDebitAcc: $custDebitAcc, custCreditAcc: $custCreditAcc, metaData: $metaData, accountType: $accountType)';
}


}

/// @nodoc
abstract mixin class $GetGlBalanceResponseDtoCopyWith<$Res>  {
  factory $GetGlBalanceResponseDtoCopyWith(GetGlBalanceResponseDto value, $Res Function(GetGlBalanceResponseDto) _then) = _$GetGlBalanceResponseDtoCopyWithImpl;
@useResult
$Res call({
 String glAccountNumber, String transactionDate, String settlementDate, String transactionId, String stan, String transactionType, String settleType, String companyName, String subType, String transactionDetail, String debitAmount, String creditAmount, String balance, String status, String custDebitAcc, String custCreditAcc, String metaData, String accountType
});




}
/// @nodoc
class _$GetGlBalanceResponseDtoCopyWithImpl<$Res>
    implements $GetGlBalanceResponseDtoCopyWith<$Res> {
  _$GetGlBalanceResponseDtoCopyWithImpl(this._self, this._then);

  final GetGlBalanceResponseDto _self;
  final $Res Function(GetGlBalanceResponseDto) _then;

/// Create a copy of GetGlBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? glAccountNumber = null,Object? transactionDate = null,Object? settlementDate = null,Object? transactionId = null,Object? stan = null,Object? transactionType = null,Object? settleType = null,Object? companyName = null,Object? subType = null,Object? transactionDetail = null,Object? debitAmount = null,Object? creditAmount = null,Object? balance = null,Object? status = null,Object? custDebitAcc = null,Object? custCreditAcc = null,Object? metaData = null,Object? accountType = null,}) {
  return _then(_self.copyWith(
glAccountNumber: null == glAccountNumber ? _self.glAccountNumber : glAccountNumber // ignore: cast_nullable_to_non_nullable
as String,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,settlementDate: null == settlementDate ? _self.settlementDate : settlementDate // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,stan: null == stan ? _self.stan : stan // ignore: cast_nullable_to_non_nullable
as String,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,settleType: null == settleType ? _self.settleType : settleType // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,subType: null == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String,transactionDetail: null == transactionDetail ? _self.transactionDetail : transactionDetail // ignore: cast_nullable_to_non_nullable
as String,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as String,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,custDebitAcc: null == custDebitAcc ? _self.custDebitAcc : custDebitAcc // ignore: cast_nullable_to_non_nullable
as String,custCreditAcc: null == custCreditAcc ? _self.custCreditAcc : custCreditAcc // ignore: cast_nullable_to_non_nullable
as String,metaData: null == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGlBalanceResponseDto].
extension GetGlBalanceResponseDtoPatterns on GetGlBalanceResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGlBalanceResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGlBalanceResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGlBalanceResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetGlBalanceResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGlBalanceResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetGlBalanceResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String glAccountNumber,  String transactionDate,  String settlementDate,  String transactionId,  String stan,  String transactionType,  String settleType,  String companyName,  String subType,  String transactionDetail,  String debitAmount,  String creditAmount,  String balance,  String status,  String custDebitAcc,  String custCreditAcc,  String metaData,  String accountType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGlBalanceResponseDto() when $default != null:
return $default(_that.glAccountNumber,_that.transactionDate,_that.settlementDate,_that.transactionId,_that.stan,_that.transactionType,_that.settleType,_that.companyName,_that.subType,_that.transactionDetail,_that.debitAmount,_that.creditAmount,_that.balance,_that.status,_that.custDebitAcc,_that.custCreditAcc,_that.metaData,_that.accountType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String glAccountNumber,  String transactionDate,  String settlementDate,  String transactionId,  String stan,  String transactionType,  String settleType,  String companyName,  String subType,  String transactionDetail,  String debitAmount,  String creditAmount,  String balance,  String status,  String custDebitAcc,  String custCreditAcc,  String metaData,  String accountType)  $default,) {final _that = this;
switch (_that) {
case _GetGlBalanceResponseDto():
return $default(_that.glAccountNumber,_that.transactionDate,_that.settlementDate,_that.transactionId,_that.stan,_that.transactionType,_that.settleType,_that.companyName,_that.subType,_that.transactionDetail,_that.debitAmount,_that.creditAmount,_that.balance,_that.status,_that.custDebitAcc,_that.custCreditAcc,_that.metaData,_that.accountType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String glAccountNumber,  String transactionDate,  String settlementDate,  String transactionId,  String stan,  String transactionType,  String settleType,  String companyName,  String subType,  String transactionDetail,  String debitAmount,  String creditAmount,  String balance,  String status,  String custDebitAcc,  String custCreditAcc,  String metaData,  String accountType)?  $default,) {final _that = this;
switch (_that) {
case _GetGlBalanceResponseDto() when $default != null:
return $default(_that.glAccountNumber,_that.transactionDate,_that.settlementDate,_that.transactionId,_that.stan,_that.transactionType,_that.settleType,_that.companyName,_that.subType,_that.transactionDetail,_that.debitAmount,_that.creditAmount,_that.balance,_that.status,_that.custDebitAcc,_that.custCreditAcc,_that.metaData,_that.accountType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetGlBalanceResponseDto implements GetGlBalanceResponseDto {
  const _GetGlBalanceResponseDto({required this.glAccountNumber, required this.transactionDate, required this.settlementDate, required this.transactionId, required this.stan, required this.transactionType, required this.settleType, required this.companyName, required this.subType, required this.transactionDetail, required this.debitAmount, required this.creditAmount, required this.balance, required this.status, required this.custDebitAcc, required this.custCreditAcc, required this.metaData, required this.accountType});
  factory _GetGlBalanceResponseDto.fromJson(Map<String, dynamic> json) => _$GetGlBalanceResponseDtoFromJson(json);

@override final  String glAccountNumber;
@override final  String transactionDate;
@override final  String settlementDate;
@override final  String transactionId;
@override final  String stan;
@override final  String transactionType;
@override final  String settleType;
@override final  String companyName;
@override final  String subType;
@override final  String transactionDetail;
@override final  String debitAmount;
@override final  String creditAmount;
@override final  String balance;
@override final  String status;
@override final  String custDebitAcc;
@override final  String custCreditAcc;
@override final  String metaData;
@override final  String accountType;

/// Create a copy of GetGlBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGlBalanceResponseDtoCopyWith<_GetGlBalanceResponseDto> get copyWith => __$GetGlBalanceResponseDtoCopyWithImpl<_GetGlBalanceResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetGlBalanceResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGlBalanceResponseDto&&(identical(other.glAccountNumber, glAccountNumber) || other.glAccountNumber == glAccountNumber)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.settlementDate, settlementDate) || other.settlementDate == settlementDate)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.stan, stan) || other.stan == stan)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.settleType, settleType) || other.settleType == settleType)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.subType, subType) || other.subType == subType)&&(identical(other.transactionDetail, transactionDetail) || other.transactionDetail == transactionDetail)&&(identical(other.debitAmount, debitAmount) || other.debitAmount == debitAmount)&&(identical(other.creditAmount, creditAmount) || other.creditAmount == creditAmount)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.status, status) || other.status == status)&&(identical(other.custDebitAcc, custDebitAcc) || other.custDebitAcc == custDebitAcc)&&(identical(other.custCreditAcc, custCreditAcc) || other.custCreditAcc == custCreditAcc)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&(identical(other.accountType, accountType) || other.accountType == accountType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,glAccountNumber,transactionDate,settlementDate,transactionId,stan,transactionType,settleType,companyName,subType,transactionDetail,debitAmount,creditAmount,balance,status,custDebitAcc,custCreditAcc,metaData,accountType);

@override
String toString() {
  return 'GetGlBalanceResponseDto(glAccountNumber: $glAccountNumber, transactionDate: $transactionDate, settlementDate: $settlementDate, transactionId: $transactionId, stan: $stan, transactionType: $transactionType, settleType: $settleType, companyName: $companyName, subType: $subType, transactionDetail: $transactionDetail, debitAmount: $debitAmount, creditAmount: $creditAmount, balance: $balance, status: $status, custDebitAcc: $custDebitAcc, custCreditAcc: $custCreditAcc, metaData: $metaData, accountType: $accountType)';
}


}

/// @nodoc
abstract mixin class _$GetGlBalanceResponseDtoCopyWith<$Res> implements $GetGlBalanceResponseDtoCopyWith<$Res> {
  factory _$GetGlBalanceResponseDtoCopyWith(_GetGlBalanceResponseDto value, $Res Function(_GetGlBalanceResponseDto) _then) = __$GetGlBalanceResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String glAccountNumber, String transactionDate, String settlementDate, String transactionId, String stan, String transactionType, String settleType, String companyName, String subType, String transactionDetail, String debitAmount, String creditAmount, String balance, String status, String custDebitAcc, String custCreditAcc, String metaData, String accountType
});




}
/// @nodoc
class __$GetGlBalanceResponseDtoCopyWithImpl<$Res>
    implements _$GetGlBalanceResponseDtoCopyWith<$Res> {
  __$GetGlBalanceResponseDtoCopyWithImpl(this._self, this._then);

  final _GetGlBalanceResponseDto _self;
  final $Res Function(_GetGlBalanceResponseDto) _then;

/// Create a copy of GetGlBalanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? glAccountNumber = null,Object? transactionDate = null,Object? settlementDate = null,Object? transactionId = null,Object? stan = null,Object? transactionType = null,Object? settleType = null,Object? companyName = null,Object? subType = null,Object? transactionDetail = null,Object? debitAmount = null,Object? creditAmount = null,Object? balance = null,Object? status = null,Object? custDebitAcc = null,Object? custCreditAcc = null,Object? metaData = null,Object? accountType = null,}) {
  return _then(_GetGlBalanceResponseDto(
glAccountNumber: null == glAccountNumber ? _self.glAccountNumber : glAccountNumber // ignore: cast_nullable_to_non_nullable
as String,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,settlementDate: null == settlementDate ? _self.settlementDate : settlementDate // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,stan: null == stan ? _self.stan : stan // ignore: cast_nullable_to_non_nullable
as String,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,settleType: null == settleType ? _self.settleType : settleType // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,subType: null == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String,transactionDetail: null == transactionDetail ? _self.transactionDetail : transactionDetail // ignore: cast_nullable_to_non_nullable
as String,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as String,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,custDebitAcc: null == custDebitAcc ? _self.custDebitAcc : custDebitAcc // ignore: cast_nullable_to_non_nullable
as String,custCreditAcc: null == custCreditAcc ? _self.custCreditAcc : custCreditAcc // ignore: cast_nullable_to_non_nullable
as String,metaData: null == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
