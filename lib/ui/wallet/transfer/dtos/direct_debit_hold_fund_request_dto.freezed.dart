// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_debit_hold_fund_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectDebitHoldFundRequestDto {

 String get accountNumber; String get amount; String get terminalId; String get terminalNameLoc; String get customerId; String? get subType; String get metaData; Map<String, dynamic> get extInfo;
/// Create a copy of DirectDebitHoldFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectDebitHoldFundRequestDtoCopyWith<DirectDebitHoldFundRequestDto> get copyWith => _$DirectDebitHoldFundRequestDtoCopyWithImpl<DirectDebitHoldFundRequestDto>(this as DirectDebitHoldFundRequestDto, _$identity);

  /// Serializes this DirectDebitHoldFundRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectDebitHoldFundRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.subType, subType) || other.subType == subType)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,amount,terminalId,terminalNameLoc,customerId,subType,metaData,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'DirectDebitHoldFundRequestDto(accountNumber: $accountNumber, amount: $amount, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, customerId: $customerId, subType: $subType, metaData: $metaData, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $DirectDebitHoldFundRequestDtoCopyWith<$Res>  {
  factory $DirectDebitHoldFundRequestDtoCopyWith(DirectDebitHoldFundRequestDto value, $Res Function(DirectDebitHoldFundRequestDto) _then) = _$DirectDebitHoldFundRequestDtoCopyWithImpl;
@useResult
$Res call({
 String accountNumber, String amount, String terminalId, String terminalNameLoc, String customerId, String? subType, String metaData, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$DirectDebitHoldFundRequestDtoCopyWithImpl<$Res>
    implements $DirectDebitHoldFundRequestDtoCopyWith<$Res> {
  _$DirectDebitHoldFundRequestDtoCopyWithImpl(this._self, this._then);

  final DirectDebitHoldFundRequestDto _self;
  final $Res Function(DirectDebitHoldFundRequestDto) _then;

/// Create a copy of DirectDebitHoldFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountNumber = null,Object? amount = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? customerId = null,Object? subType = freezed,Object? metaData = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,subType: freezed == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String?,metaData: null == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectDebitHoldFundRequestDto].
extension DirectDebitHoldFundRequestDtoPatterns on DirectDebitHoldFundRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectDebitHoldFundRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectDebitHoldFundRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectDebitHoldFundRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountNumber,  String amount,  String terminalId,  String terminalNameLoc,  String customerId,  String? subType,  String metaData,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundRequestDto() when $default != null:
return $default(_that.accountNumber,_that.amount,_that.terminalId,_that.terminalNameLoc,_that.customerId,_that.subType,_that.metaData,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountNumber,  String amount,  String terminalId,  String terminalNameLoc,  String customerId,  String? subType,  String metaData,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundRequestDto():
return $default(_that.accountNumber,_that.amount,_that.terminalId,_that.terminalNameLoc,_that.customerId,_that.subType,_that.metaData,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountNumber,  String amount,  String terminalId,  String terminalNameLoc,  String customerId,  String? subType,  String metaData,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundRequestDto() when $default != null:
return $default(_that.accountNumber,_that.amount,_that.terminalId,_that.terminalNameLoc,_that.customerId,_that.subType,_that.metaData,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectDebitHoldFundRequestDto implements DirectDebitHoldFundRequestDto {
  const _DirectDebitHoldFundRequestDto({required this.accountNumber, required this.amount, required this.terminalId, required this.terminalNameLoc, required this.customerId, this.subType, required this.metaData, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _DirectDebitHoldFundRequestDto.fromJson(Map<String, dynamic> json) => _$DirectDebitHoldFundRequestDtoFromJson(json);

@override final  String accountNumber;
@override final  String amount;
@override final  String terminalId;
@override final  String terminalNameLoc;
@override final  String customerId;
@override final  String? subType;
@override final  String metaData;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of DirectDebitHoldFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectDebitHoldFundRequestDtoCopyWith<_DirectDebitHoldFundRequestDto> get copyWith => __$DirectDebitHoldFundRequestDtoCopyWithImpl<_DirectDebitHoldFundRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectDebitHoldFundRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectDebitHoldFundRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.subType, subType) || other.subType == subType)&&(identical(other.metaData, metaData) || other.metaData == metaData)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,amount,terminalId,terminalNameLoc,customerId,subType,metaData,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'DirectDebitHoldFundRequestDto(accountNumber: $accountNumber, amount: $amount, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, customerId: $customerId, subType: $subType, metaData: $metaData, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$DirectDebitHoldFundRequestDtoCopyWith<$Res> implements $DirectDebitHoldFundRequestDtoCopyWith<$Res> {
  factory _$DirectDebitHoldFundRequestDtoCopyWith(_DirectDebitHoldFundRequestDto value, $Res Function(_DirectDebitHoldFundRequestDto) _then) = __$DirectDebitHoldFundRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String accountNumber, String amount, String terminalId, String terminalNameLoc, String customerId, String? subType, String metaData, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$DirectDebitHoldFundRequestDtoCopyWithImpl<$Res>
    implements _$DirectDebitHoldFundRequestDtoCopyWith<$Res> {
  __$DirectDebitHoldFundRequestDtoCopyWithImpl(this._self, this._then);

  final _DirectDebitHoldFundRequestDto _self;
  final $Res Function(_DirectDebitHoldFundRequestDto) _then;

/// Create a copy of DirectDebitHoldFundRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? amount = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? customerId = null,Object? subType = freezed,Object? metaData = null,Object? extInfo = null,}) {
  return _then(_DirectDebitHoldFundRequestDto(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,subType: freezed == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String?,metaData: null == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
