// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_statement_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerStatementResponseDto {

 String get statusCode; String get statusMessage; AccountData get data; String? get uuid; String? get verificationToken;
/// Create a copy of CustomerStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerStatementResponseDtoCopyWith<CustomerStatementResponseDto> get copyWith => _$CustomerStatementResponseDtoCopyWithImpl<CustomerStatementResponseDto>(this as CustomerStatementResponseDto, _$identity);

  /// Serializes this CustomerStatementResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerStatementResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data,uuid,verificationToken);

@override
String toString() {
  return 'CustomerStatementResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data, uuid: $uuid, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class $CustomerStatementResponseDtoCopyWith<$Res>  {
  factory $CustomerStatementResponseDtoCopyWith(CustomerStatementResponseDto value, $Res Function(CustomerStatementResponseDto) _then) = _$CustomerStatementResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, AccountData data, String? uuid, String? verificationToken
});


$AccountDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CustomerStatementResponseDtoCopyWithImpl<$Res>
    implements $CustomerStatementResponseDtoCopyWith<$Res> {
  _$CustomerStatementResponseDtoCopyWithImpl(this._self, this._then);

  final CustomerStatementResponseDto _self;
  final $Res Function(CustomerStatementResponseDto) _then;

/// Create a copy of CustomerStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,Object? uuid = freezed,Object? verificationToken = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AccountData,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CustomerStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountDataCopyWith<$Res> get data {
  
  return $AccountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerStatementResponseDto].
extension CustomerStatementResponseDtoPatterns on CustomerStatementResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerStatementResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerStatementResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerStatementResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerStatementResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  AccountData data,  String? uuid,  String? verificationToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerStatementResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.uuid,_that.verificationToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  AccountData data,  String? uuid,  String? verificationToken)  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementResponseDto():
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.uuid,_that.verificationToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  AccountData data,  String? uuid,  String? verificationToken)?  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.uuid,_that.verificationToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerStatementResponseDto implements CustomerStatementResponseDto {
  const _CustomerStatementResponseDto({required this.statusCode, required this.statusMessage, required this.data, this.uuid, this.verificationToken});
  factory _CustomerStatementResponseDto.fromJson(Map<String, dynamic> json) => _$CustomerStatementResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  AccountData data;
@override final  String? uuid;
@override final  String? verificationToken;

/// Create a copy of CustomerStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerStatementResponseDtoCopyWith<_CustomerStatementResponseDto> get copyWith => __$CustomerStatementResponseDtoCopyWithImpl<_CustomerStatementResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerStatementResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerStatementResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data,uuid,verificationToken);

@override
String toString() {
  return 'CustomerStatementResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data, uuid: $uuid, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class _$CustomerStatementResponseDtoCopyWith<$Res> implements $CustomerStatementResponseDtoCopyWith<$Res> {
  factory _$CustomerStatementResponseDtoCopyWith(_CustomerStatementResponseDto value, $Res Function(_CustomerStatementResponseDto) _then) = __$CustomerStatementResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, AccountData data, String? uuid, String? verificationToken
});


@override $AccountDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CustomerStatementResponseDtoCopyWithImpl<$Res>
    implements _$CustomerStatementResponseDtoCopyWith<$Res> {
  __$CustomerStatementResponseDtoCopyWithImpl(this._self, this._then);

  final _CustomerStatementResponseDto _self;
  final $Res Function(_CustomerStatementResponseDto) _then;

/// Create a copy of CustomerStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,Object? uuid = freezed,Object? verificationToken = freezed,}) {
  return _then(_CustomerStatementResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AccountData,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CustomerStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountDataCopyWith<$Res> get data {
  
  return $AccountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AccountData {

 String get accountTitle; String get accountNumber; String? get ibanNumber; String get closingBalance; List<TransactionItem> get transactionList;
/// Create a copy of AccountData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountDataCopyWith<AccountData> get copyWith => _$AccountDataCopyWithImpl<AccountData>(this as AccountData, _$identity);

  /// Serializes this AccountData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountData&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ibanNumber, ibanNumber) || other.ibanNumber == ibanNumber)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&const DeepCollectionEquality().equals(other.transactionList, transactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountTitle,accountNumber,ibanNumber,closingBalance,const DeepCollectionEquality().hash(transactionList));

@override
String toString() {
  return 'AccountData(accountTitle: $accountTitle, accountNumber: $accountNumber, ibanNumber: $ibanNumber, closingBalance: $closingBalance, transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class $AccountDataCopyWith<$Res>  {
  factory $AccountDataCopyWith(AccountData value, $Res Function(AccountData) _then) = _$AccountDataCopyWithImpl;
@useResult
$Res call({
 String accountTitle, String accountNumber, String? ibanNumber, String closingBalance, List<TransactionItem> transactionList
});




}
/// @nodoc
class _$AccountDataCopyWithImpl<$Res>
    implements $AccountDataCopyWith<$Res> {
  _$AccountDataCopyWithImpl(this._self, this._then);

  final AccountData _self;
  final $Res Function(AccountData) _then;

/// Create a copy of AccountData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountTitle = null,Object? accountNumber = null,Object? ibanNumber = freezed,Object? closingBalance = null,Object? transactionList = null,}) {
  return _then(_self.copyWith(
accountTitle: null == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,ibanNumber: freezed == ibanNumber ? _self.ibanNumber : ibanNumber // ignore: cast_nullable_to_non_nullable
as String?,closingBalance: null == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as String,transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as List<TransactionItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountData].
extension AccountDataPatterns on AccountData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountData value)  $default,){
final _that = this;
switch (_that) {
case _AccountData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountData value)?  $default,){
final _that = this;
switch (_that) {
case _AccountData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountTitle,  String accountNumber,  String? ibanNumber,  String closingBalance,  List<TransactionItem> transactionList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountData() when $default != null:
return $default(_that.accountTitle,_that.accountNumber,_that.ibanNumber,_that.closingBalance,_that.transactionList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountTitle,  String accountNumber,  String? ibanNumber,  String closingBalance,  List<TransactionItem> transactionList)  $default,) {final _that = this;
switch (_that) {
case _AccountData():
return $default(_that.accountTitle,_that.accountNumber,_that.ibanNumber,_that.closingBalance,_that.transactionList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountTitle,  String accountNumber,  String? ibanNumber,  String closingBalance,  List<TransactionItem> transactionList)?  $default,) {final _that = this;
switch (_that) {
case _AccountData() when $default != null:
return $default(_that.accountTitle,_that.accountNumber,_that.ibanNumber,_that.closingBalance,_that.transactionList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountData implements AccountData {
  const _AccountData({required this.accountTitle, required this.accountNumber, this.ibanNumber, required this.closingBalance, required final  List<TransactionItem> transactionList}): _transactionList = transactionList;
  factory _AccountData.fromJson(Map<String, dynamic> json) => _$AccountDataFromJson(json);

@override final  String accountTitle;
@override final  String accountNumber;
@override final  String? ibanNumber;
@override final  String closingBalance;
 final  List<TransactionItem> _transactionList;
@override List<TransactionItem> get transactionList {
  if (_transactionList is EqualUnmodifiableListView) return _transactionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactionList);
}


/// Create a copy of AccountData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountDataCopyWith<_AccountData> get copyWith => __$AccountDataCopyWithImpl<_AccountData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountData&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.ibanNumber, ibanNumber) || other.ibanNumber == ibanNumber)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance)&&const DeepCollectionEquality().equals(other._transactionList, _transactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountTitle,accountNumber,ibanNumber,closingBalance,const DeepCollectionEquality().hash(_transactionList));

@override
String toString() {
  return 'AccountData(accountTitle: $accountTitle, accountNumber: $accountNumber, ibanNumber: $ibanNumber, closingBalance: $closingBalance, transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class _$AccountDataCopyWith<$Res> implements $AccountDataCopyWith<$Res> {
  factory _$AccountDataCopyWith(_AccountData value, $Res Function(_AccountData) _then) = __$AccountDataCopyWithImpl;
@override @useResult
$Res call({
 String accountTitle, String accountNumber, String? ibanNumber, String closingBalance, List<TransactionItem> transactionList
});




}
/// @nodoc
class __$AccountDataCopyWithImpl<$Res>
    implements _$AccountDataCopyWith<$Res> {
  __$AccountDataCopyWithImpl(this._self, this._then);

  final _AccountData _self;
  final $Res Function(_AccountData) _then;

/// Create a copy of AccountData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountTitle = null,Object? accountNumber = null,Object? ibanNumber = freezed,Object? closingBalance = null,Object? transactionList = null,}) {
  return _then(_AccountData(
accountTitle: null == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,ibanNumber: freezed == ibanNumber ? _self.ibanNumber : ibanNumber // ignore: cast_nullable_to_non_nullable
as String?,closingBalance: null == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as String,transactionList: null == transactionList ? _self._transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as List<TransactionItem>,
  ));
}


}


/// @nodoc
mixin _$TransactionItem {

 String get date; String get transactionId; TransactionType get type; String get category; String get narration; String? get metaData; String get amount; int get fee; int get tax; String get senderName; String get senderAccount; String get receiverName; String get receiverAccount; int get transactionFee; String get companyName;
/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionItemCopyWith<TransactionItem> get copyWith => _$TransactionItemCopyWithImpl<TransactionItem>(this as TransactionItem, _$identity);

  /// Serializes this TransactionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionItem&&(identical(other.date, date) || other.date == date)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,transactionId,type,category,narration,metaData,amount,fee,tax,senderName,senderAccount,receiverName,receiverAccount,transactionFee,companyName);

@override
String toString() {
  return 'TransactionItem(date: $date, transactionId: $transactionId, type: $type, category: $category, narration: $narration, metaData: $metaData, amount: $amount, fee: $fee, tax: $tax, senderName: $senderName, senderAccount: $senderAccount, receiverName: $receiverName, receiverAccount: $receiverAccount, transactionFee: $transactionFee, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class $TransactionItemCopyWith<$Res>  {
  factory $TransactionItemCopyWith(TransactionItem value, $Res Function(TransactionItem) _then) = _$TransactionItemCopyWithImpl;
@useResult
$Res call({
 String date, String transactionId, TransactionType type, String category, String narration, String? metaData, String amount, int fee, int tax, String senderName, String senderAccount, String receiverName, String receiverAccount, int transactionFee, String companyName
});




}
/// @nodoc
class _$TransactionItemCopyWithImpl<$Res>
    implements $TransactionItemCopyWith<$Res> {
  _$TransactionItemCopyWithImpl(this._self, this._then);

  final TransactionItem _self;
  final $Res Function(TransactionItem) _then;

/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? transactionId = null,Object? type = null,Object? category = null,Object? narration = null,Object? metaData = freezed,Object? amount = null,Object? fee = null,Object? tax = null,Object? senderName = null,Object? senderAccount = null,Object? receiverName = null,Object? receiverAccount = null,Object? transactionFee = null,Object? companyName = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,narration: null == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String,metaData: freezed == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,tax: null == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionItem].
extension TransactionItemPatterns on TransactionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionItem value)  $default,){
final _that = this;
switch (_that) {
case _TransactionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionItem value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  String transactionId,  TransactionType type,  String category,  String narration,  String? metaData,  String amount,  int fee,  int tax,  String senderName,  String senderAccount,  String receiverName,  String receiverAccount,  int transactionFee,  String companyName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionItem() when $default != null:
return $default(_that.date,_that.transactionId,_that.type,_that.category,_that.narration,_that.metaData,_that.amount,_that.fee,_that.tax,_that.senderName,_that.senderAccount,_that.receiverName,_that.receiverAccount,_that.transactionFee,_that.companyName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  String transactionId,  TransactionType type,  String category,  String narration,  String? metaData,  String amount,  int fee,  int tax,  String senderName,  String senderAccount,  String receiverName,  String receiverAccount,  int transactionFee,  String companyName)  $default,) {final _that = this;
switch (_that) {
case _TransactionItem():
return $default(_that.date,_that.transactionId,_that.type,_that.category,_that.narration,_that.metaData,_that.amount,_that.fee,_that.tax,_that.senderName,_that.senderAccount,_that.receiverName,_that.receiverAccount,_that.transactionFee,_that.companyName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  String transactionId,  TransactionType type,  String category,  String narration,  String? metaData,  String amount,  int fee,  int tax,  String senderName,  String senderAccount,  String receiverName,  String receiverAccount,  int transactionFee,  String companyName)?  $default,) {final _that = this;
switch (_that) {
case _TransactionItem() when $default != null:
return $default(_that.date,_that.transactionId,_that.type,_that.category,_that.narration,_that.metaData,_that.amount,_that.fee,_that.tax,_that.senderName,_that.senderAccount,_that.receiverName,_that.receiverAccount,_that.transactionFee,_that.companyName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionItem implements TransactionItem {
  const _TransactionItem({required this.date, required this.transactionId, required this.type, required this.category, required this.narration, this.metaData, required this.amount, required this.fee, required this.tax, required this.senderName, required this.senderAccount, required this.receiverName, required this.receiverAccount, required this.transactionFee, required this.companyName});
  factory _TransactionItem.fromJson(Map<String, dynamic> json) => _$TransactionItemFromJson(json);

@override final  String date;
@override final  String transactionId;
@override final  TransactionType type;
@override final  String category;
@override final  String narration;
@override final  String? metaData;
@override final  String amount;
@override final  int fee;
@override final  int tax;
@override final  String senderName;
@override final  String senderAccount;
@override final  String receiverName;
@override final  String receiverAccount;
@override final  int transactionFee;
@override final  String companyName;

/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionItemCopyWith<_TransactionItem> get copyWith => __$TransactionItemCopyWithImpl<_TransactionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionItem&&(identical(other.date, date) || other.date == date)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,transactionId,type,category,narration,metaData,amount,fee,tax,senderName,senderAccount,receiverName,receiverAccount,transactionFee,companyName);

@override
String toString() {
  return 'TransactionItem(date: $date, transactionId: $transactionId, type: $type, category: $category, narration: $narration, metaData: $metaData, amount: $amount, fee: $fee, tax: $tax, senderName: $senderName, senderAccount: $senderAccount, receiverName: $receiverName, receiverAccount: $receiverAccount, transactionFee: $transactionFee, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class _$TransactionItemCopyWith<$Res> implements $TransactionItemCopyWith<$Res> {
  factory _$TransactionItemCopyWith(_TransactionItem value, $Res Function(_TransactionItem) _then) = __$TransactionItemCopyWithImpl;
@override @useResult
$Res call({
 String date, String transactionId, TransactionType type, String category, String narration, String? metaData, String amount, int fee, int tax, String senderName, String senderAccount, String receiverName, String receiverAccount, int transactionFee, String companyName
});




}
/// @nodoc
class __$TransactionItemCopyWithImpl<$Res>
    implements _$TransactionItemCopyWith<$Res> {
  __$TransactionItemCopyWithImpl(this._self, this._then);

  final _TransactionItem _self;
  final $Res Function(_TransactionItem) _then;

/// Create a copy of TransactionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? transactionId = null,Object? type = null,Object? category = null,Object? narration = null,Object? metaData = freezed,Object? amount = null,Object? fee = null,Object? tax = null,Object? senderName = null,Object? senderAccount = null,Object? receiverName = null,Object? receiverAccount = null,Object? transactionFee = null,Object? companyName = null,}) {
  return _then(_TransactionItem(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,narration: null == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String,metaData: freezed == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,tax: null == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as int,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
