// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_debit_hold_fund_reversal_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectDebitHoldFundReversalRequestDto {

 String get accountNumber; String get terminalId; String get terminalNameLoc; String get referenceTxId; String get customerId; String? get subType; Map<String, dynamic> get extInfo;
/// Create a copy of DirectDebitHoldFundReversalRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectDebitHoldFundReversalRequestDtoCopyWith<DirectDebitHoldFundReversalRequestDto> get copyWith => _$DirectDebitHoldFundReversalRequestDtoCopyWithImpl<DirectDebitHoldFundReversalRequestDto>(this as DirectDebitHoldFundReversalRequestDto, _$identity);

  /// Serializes this DirectDebitHoldFundReversalRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectDebitHoldFundReversalRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.subType, subType) || other.subType == subType)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,terminalId,terminalNameLoc,referenceTxId,customerId,subType,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'DirectDebitHoldFundReversalRequestDto(accountNumber: $accountNumber, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, referenceTxId: $referenceTxId, customerId: $customerId, subType: $subType, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $DirectDebitHoldFundReversalRequestDtoCopyWith<$Res>  {
  factory $DirectDebitHoldFundReversalRequestDtoCopyWith(DirectDebitHoldFundReversalRequestDto value, $Res Function(DirectDebitHoldFundReversalRequestDto) _then) = _$DirectDebitHoldFundReversalRequestDtoCopyWithImpl;
@useResult
$Res call({
 String accountNumber, String terminalId, String terminalNameLoc, String referenceTxId, String customerId, String? subType, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$DirectDebitHoldFundReversalRequestDtoCopyWithImpl<$Res>
    implements $DirectDebitHoldFundReversalRequestDtoCopyWith<$Res> {
  _$DirectDebitHoldFundReversalRequestDtoCopyWithImpl(this._self, this._then);

  final DirectDebitHoldFundReversalRequestDto _self;
  final $Res Function(DirectDebitHoldFundReversalRequestDto) _then;

/// Create a copy of DirectDebitHoldFundReversalRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountNumber = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? referenceTxId = null,Object? customerId = null,Object? subType = freezed,Object? extInfo = null,}) {
  return _then(_self.copyWith(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,subType: freezed == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String?,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectDebitHoldFundReversalRequestDto].
extension DirectDebitHoldFundReversalRequestDtoPatterns on DirectDebitHoldFundReversalRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectDebitHoldFundReversalRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectDebitHoldFundReversalRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectDebitHoldFundReversalRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountNumber,  String terminalId,  String terminalNameLoc,  String referenceTxId,  String customerId,  String? subType,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalRequestDto() when $default != null:
return $default(_that.accountNumber,_that.terminalId,_that.terminalNameLoc,_that.referenceTxId,_that.customerId,_that.subType,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountNumber,  String terminalId,  String terminalNameLoc,  String referenceTxId,  String customerId,  String? subType,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalRequestDto():
return $default(_that.accountNumber,_that.terminalId,_that.terminalNameLoc,_that.referenceTxId,_that.customerId,_that.subType,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountNumber,  String terminalId,  String terminalNameLoc,  String referenceTxId,  String customerId,  String? subType,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _DirectDebitHoldFundReversalRequestDto() when $default != null:
return $default(_that.accountNumber,_that.terminalId,_that.terminalNameLoc,_that.referenceTxId,_that.customerId,_that.subType,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectDebitHoldFundReversalRequestDto implements DirectDebitHoldFundReversalRequestDto {
  const _DirectDebitHoldFundReversalRequestDto({required this.accountNumber, required this.terminalId, required this.terminalNameLoc, required this.referenceTxId, required this.customerId, this.subType, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _DirectDebitHoldFundReversalRequestDto.fromJson(Map<String, dynamic> json) => _$DirectDebitHoldFundReversalRequestDtoFromJson(json);

@override final  String accountNumber;
@override final  String terminalId;
@override final  String terminalNameLoc;
@override final  String referenceTxId;
@override final  String customerId;
@override final  String? subType;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of DirectDebitHoldFundReversalRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectDebitHoldFundReversalRequestDtoCopyWith<_DirectDebitHoldFundReversalRequestDto> get copyWith => __$DirectDebitHoldFundReversalRequestDtoCopyWithImpl<_DirectDebitHoldFundReversalRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectDebitHoldFundReversalRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectDebitHoldFundReversalRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.referenceTxId, referenceTxId) || other.referenceTxId == referenceTxId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.subType, subType) || other.subType == subType)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,terminalId,terminalNameLoc,referenceTxId,customerId,subType,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'DirectDebitHoldFundReversalRequestDto(accountNumber: $accountNumber, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, referenceTxId: $referenceTxId, customerId: $customerId, subType: $subType, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$DirectDebitHoldFundReversalRequestDtoCopyWith<$Res> implements $DirectDebitHoldFundReversalRequestDtoCopyWith<$Res> {
  factory _$DirectDebitHoldFundReversalRequestDtoCopyWith(_DirectDebitHoldFundReversalRequestDto value, $Res Function(_DirectDebitHoldFundReversalRequestDto) _then) = __$DirectDebitHoldFundReversalRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String accountNumber, String terminalId, String terminalNameLoc, String referenceTxId, String customerId, String? subType, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$DirectDebitHoldFundReversalRequestDtoCopyWithImpl<$Res>
    implements _$DirectDebitHoldFundReversalRequestDtoCopyWith<$Res> {
  __$DirectDebitHoldFundReversalRequestDtoCopyWithImpl(this._self, this._then);

  final _DirectDebitHoldFundReversalRequestDto _self;
  final $Res Function(_DirectDebitHoldFundReversalRequestDto) _then;

/// Create a copy of DirectDebitHoldFundReversalRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? referenceTxId = null,Object? customerId = null,Object? subType = freezed,Object? extInfo = null,}) {
  return _then(_DirectDebitHoldFundReversalRequestDto(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,referenceTxId: null == referenceTxId ? _self.referenceTxId : referenceTxId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,subType: freezed == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String?,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
