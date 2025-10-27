// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_mini_statement_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerMiniStatementResponseDto {

 String get statusCode; String get statusMessage;@JsonKey(name: "data") List<MiniStatementItem> get transactionList;
/// Create a copy of CustomerMiniStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerMiniStatementResponseDtoCopyWith<CustomerMiniStatementResponseDto> get copyWith => _$CustomerMiniStatementResponseDtoCopyWithImpl<CustomerMiniStatementResponseDto>(this as CustomerMiniStatementResponseDto, _$identity);

  /// Serializes this CustomerMiniStatementResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerMiniStatementResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other.transactionList, transactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(transactionList));

@override
String toString() {
  return 'CustomerMiniStatementResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class $CustomerMiniStatementResponseDtoCopyWith<$Res>  {
  factory $CustomerMiniStatementResponseDtoCopyWith(CustomerMiniStatementResponseDto value, $Res Function(CustomerMiniStatementResponseDto) _then) = _$CustomerMiniStatementResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage,@JsonKey(name: "data") List<MiniStatementItem> transactionList
});




}
/// @nodoc
class _$CustomerMiniStatementResponseDtoCopyWithImpl<$Res>
    implements $CustomerMiniStatementResponseDtoCopyWith<$Res> {
  _$CustomerMiniStatementResponseDtoCopyWithImpl(this._self, this._then);

  final CustomerMiniStatementResponseDto _self;
  final $Res Function(CustomerMiniStatementResponseDto) _then;

/// Create a copy of CustomerMiniStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? transactionList = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as List<MiniStatementItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerMiniStatementResponseDto].
extension CustomerMiniStatementResponseDtoPatterns on CustomerMiniStatementResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerMiniStatementResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerMiniStatementResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerMiniStatementResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CustomerMiniStatementResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerMiniStatementResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerMiniStatementResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage, @JsonKey(name: "data")  List<MiniStatementItem> transactionList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerMiniStatementResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.transactionList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage, @JsonKey(name: "data")  List<MiniStatementItem> transactionList)  $default,) {final _that = this;
switch (_that) {
case _CustomerMiniStatementResponseDto():
return $default(_that.statusCode,_that.statusMessage,_that.transactionList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage, @JsonKey(name: "data")  List<MiniStatementItem> transactionList)?  $default,) {final _that = this;
switch (_that) {
case _CustomerMiniStatementResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.transactionList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerMiniStatementResponseDto implements CustomerMiniStatementResponseDto {
  const _CustomerMiniStatementResponseDto({required this.statusCode, required this.statusMessage, @JsonKey(name: "data") required final  List<MiniStatementItem> transactionList}): _transactionList = transactionList;
  factory _CustomerMiniStatementResponseDto.fromJson(Map<String, dynamic> json) => _$CustomerMiniStatementResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
 final  List<MiniStatementItem> _transactionList;
@override@JsonKey(name: "data") List<MiniStatementItem> get transactionList {
  if (_transactionList is EqualUnmodifiableListView) return _transactionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactionList);
}


/// Create a copy of CustomerMiniStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerMiniStatementResponseDtoCopyWith<_CustomerMiniStatementResponseDto> get copyWith => __$CustomerMiniStatementResponseDtoCopyWithImpl<_CustomerMiniStatementResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerMiniStatementResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerMiniStatementResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other._transactionList, _transactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(_transactionList));

@override
String toString() {
  return 'CustomerMiniStatementResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class _$CustomerMiniStatementResponseDtoCopyWith<$Res> implements $CustomerMiniStatementResponseDtoCopyWith<$Res> {
  factory _$CustomerMiniStatementResponseDtoCopyWith(_CustomerMiniStatementResponseDto value, $Res Function(_CustomerMiniStatementResponseDto) _then) = __$CustomerMiniStatementResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage,@JsonKey(name: "data") List<MiniStatementItem> transactionList
});




}
/// @nodoc
class __$CustomerMiniStatementResponseDtoCopyWithImpl<$Res>
    implements _$CustomerMiniStatementResponseDtoCopyWith<$Res> {
  __$CustomerMiniStatementResponseDtoCopyWithImpl(this._self, this._then);

  final _CustomerMiniStatementResponseDto _self;
  final $Res Function(_CustomerMiniStatementResponseDto) _then;

/// Create a copy of CustomerMiniStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? transactionList = null,}) {
  return _then(_CustomerMiniStatementResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,transactionList: null == transactionList ? _self._transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as List<MiniStatementItem>,
  ));
}


}


/// @nodoc
mixin _$MiniStatementItem {

 String get trxAmount; String get senderAccount; String get senderName; String get transactionFee; String get trxNarration; String get receiverName;@JsonKey(name: 'trxDataTime') String get transactionDateTime; String get companyName; TrxType get trxType;@JsonKey(name: 'trxID') String get transactionId; String get trxName; String get receiverAccount;
/// Create a copy of MiniStatementItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MiniStatementItemCopyWith<MiniStatementItem> get copyWith => _$MiniStatementItemCopyWithImpl<MiniStatementItem>(this as MiniStatementItem, _$identity);

  /// Serializes this MiniStatementItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MiniStatementItem&&(identical(other.trxAmount, trxAmount) || other.trxAmount == trxAmount)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.trxNarration, trxNarration) || other.trxNarration == trxNarration)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.trxType, trxType) || other.trxType == trxType)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.trxName, trxName) || other.trxName == trxName)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trxAmount,senderAccount,senderName,transactionFee,trxNarration,receiverName,transactionDateTime,companyName,trxType,transactionId,trxName,receiverAccount);

@override
String toString() {
  return 'MiniStatementItem(trxAmount: $trxAmount, senderAccount: $senderAccount, senderName: $senderName, transactionFee: $transactionFee, trxNarration: $trxNarration, receiverName: $receiverName, transactionDateTime: $transactionDateTime, companyName: $companyName, trxType: $trxType, transactionId: $transactionId, trxName: $trxName, receiverAccount: $receiverAccount)';
}


}

/// @nodoc
abstract mixin class $MiniStatementItemCopyWith<$Res>  {
  factory $MiniStatementItemCopyWith(MiniStatementItem value, $Res Function(MiniStatementItem) _then) = _$MiniStatementItemCopyWithImpl;
@useResult
$Res call({
 String trxAmount, String senderAccount, String senderName, String transactionFee, String trxNarration, String receiverName,@JsonKey(name: 'trxDataTime') String transactionDateTime, String companyName, TrxType trxType,@JsonKey(name: 'trxID') String transactionId, String trxName, String receiverAccount
});




}
/// @nodoc
class _$MiniStatementItemCopyWithImpl<$Res>
    implements $MiniStatementItemCopyWith<$Res> {
  _$MiniStatementItemCopyWithImpl(this._self, this._then);

  final MiniStatementItem _self;
  final $Res Function(MiniStatementItem) _then;

/// Create a copy of MiniStatementItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trxAmount = null,Object? senderAccount = null,Object? senderName = null,Object? transactionFee = null,Object? trxNarration = null,Object? receiverName = null,Object? transactionDateTime = null,Object? companyName = null,Object? trxType = null,Object? transactionId = null,Object? trxName = null,Object? receiverAccount = null,}) {
  return _then(_self.copyWith(
trxAmount: null == trxAmount ? _self.trxAmount : trxAmount // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as String,trxNarration: null == trxNarration ? _self.trxNarration : trxNarration // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,transactionDateTime: null == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,trxType: null == trxType ? _self.trxType : trxType // ignore: cast_nullable_to_non_nullable
as TrxType,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,trxName: null == trxName ? _self.trxName : trxName // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MiniStatementItem].
extension MiniStatementItemPatterns on MiniStatementItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MiniStatementItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MiniStatementItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MiniStatementItem value)  $default,){
final _that = this;
switch (_that) {
case _MiniStatementItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MiniStatementItem value)?  $default,){
final _that = this;
switch (_that) {
case _MiniStatementItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String trxAmount,  String senderAccount,  String senderName,  String transactionFee,  String trxNarration,  String receiverName, @JsonKey(name: 'trxDataTime')  String transactionDateTime,  String companyName,  TrxType trxType, @JsonKey(name: 'trxID')  String transactionId,  String trxName,  String receiverAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MiniStatementItem() when $default != null:
return $default(_that.trxAmount,_that.senderAccount,_that.senderName,_that.transactionFee,_that.trxNarration,_that.receiverName,_that.transactionDateTime,_that.companyName,_that.trxType,_that.transactionId,_that.trxName,_that.receiverAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String trxAmount,  String senderAccount,  String senderName,  String transactionFee,  String trxNarration,  String receiverName, @JsonKey(name: 'trxDataTime')  String transactionDateTime,  String companyName,  TrxType trxType, @JsonKey(name: 'trxID')  String transactionId,  String trxName,  String receiverAccount)  $default,) {final _that = this;
switch (_that) {
case _MiniStatementItem():
return $default(_that.trxAmount,_that.senderAccount,_that.senderName,_that.transactionFee,_that.trxNarration,_that.receiverName,_that.transactionDateTime,_that.companyName,_that.trxType,_that.transactionId,_that.trxName,_that.receiverAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String trxAmount,  String senderAccount,  String senderName,  String transactionFee,  String trxNarration,  String receiverName, @JsonKey(name: 'trxDataTime')  String transactionDateTime,  String companyName,  TrxType trxType, @JsonKey(name: 'trxID')  String transactionId,  String trxName,  String receiverAccount)?  $default,) {final _that = this;
switch (_that) {
case _MiniStatementItem() when $default != null:
return $default(_that.trxAmount,_that.senderAccount,_that.senderName,_that.transactionFee,_that.trxNarration,_that.receiverName,_that.transactionDateTime,_that.companyName,_that.trxType,_that.transactionId,_that.trxName,_that.receiverAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MiniStatementItem implements MiniStatementItem {
  const _MiniStatementItem({required this.trxAmount, required this.senderAccount, required this.senderName, required this.transactionFee, required this.trxNarration, required this.receiverName, @JsonKey(name: 'trxDataTime') required this.transactionDateTime, required this.companyName, this.trxType = TrxType.unknown, @JsonKey(name: 'trxID') required this.transactionId, required this.trxName, required this.receiverAccount});
  factory _MiniStatementItem.fromJson(Map<String, dynamic> json) => _$MiniStatementItemFromJson(json);

@override final  String trxAmount;
@override final  String senderAccount;
@override final  String senderName;
@override final  String transactionFee;
@override final  String trxNarration;
@override final  String receiverName;
@override@JsonKey(name: 'trxDataTime') final  String transactionDateTime;
@override final  String companyName;
@override@JsonKey() final  TrxType trxType;
@override@JsonKey(name: 'trxID') final  String transactionId;
@override final  String trxName;
@override final  String receiverAccount;

/// Create a copy of MiniStatementItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MiniStatementItemCopyWith<_MiniStatementItem> get copyWith => __$MiniStatementItemCopyWithImpl<_MiniStatementItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MiniStatementItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MiniStatementItem&&(identical(other.trxAmount, trxAmount) || other.trxAmount == trxAmount)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.trxNarration, trxNarration) || other.trxNarration == trxNarration)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.trxType, trxType) || other.trxType == trxType)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.trxName, trxName) || other.trxName == trxName)&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trxAmount,senderAccount,senderName,transactionFee,trxNarration,receiverName,transactionDateTime,companyName,trxType,transactionId,trxName,receiverAccount);

@override
String toString() {
  return 'MiniStatementItem(trxAmount: $trxAmount, senderAccount: $senderAccount, senderName: $senderName, transactionFee: $transactionFee, trxNarration: $trxNarration, receiverName: $receiverName, transactionDateTime: $transactionDateTime, companyName: $companyName, trxType: $trxType, transactionId: $transactionId, trxName: $trxName, receiverAccount: $receiverAccount)';
}


}

/// @nodoc
abstract mixin class _$MiniStatementItemCopyWith<$Res> implements $MiniStatementItemCopyWith<$Res> {
  factory _$MiniStatementItemCopyWith(_MiniStatementItem value, $Res Function(_MiniStatementItem) _then) = __$MiniStatementItemCopyWithImpl;
@override @useResult
$Res call({
 String trxAmount, String senderAccount, String senderName, String transactionFee, String trxNarration, String receiverName,@JsonKey(name: 'trxDataTime') String transactionDateTime, String companyName, TrxType trxType,@JsonKey(name: 'trxID') String transactionId, String trxName, String receiverAccount
});




}
/// @nodoc
class __$MiniStatementItemCopyWithImpl<$Res>
    implements _$MiniStatementItemCopyWith<$Res> {
  __$MiniStatementItemCopyWithImpl(this._self, this._then);

  final _MiniStatementItem _self;
  final $Res Function(_MiniStatementItem) _then;

/// Create a copy of MiniStatementItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trxAmount = null,Object? senderAccount = null,Object? senderName = null,Object? transactionFee = null,Object? trxNarration = null,Object? receiverName = null,Object? transactionDateTime = null,Object? companyName = null,Object? trxType = null,Object? transactionId = null,Object? trxName = null,Object? receiverAccount = null,}) {
  return _then(_MiniStatementItem(
trxAmount: null == trxAmount ? _self.trxAmount : trxAmount // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as String,trxNarration: null == trxNarration ? _self.trxNarration : trxNarration // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,transactionDateTime: null == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,trxType: null == trxType ? _self.trxType : trxType // ignore: cast_nullable_to_non_nullable
as TrxType,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,trxName: null == trxName ? _self.trxName : trxName // ignore: cast_nullable_to_non_nullable
as String,receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
