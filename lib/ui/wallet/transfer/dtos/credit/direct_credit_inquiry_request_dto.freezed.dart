// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_credit_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectCreditInquiryRequestDto {

 String get receiverAccount; String get terminalId; String get terminalNameLoc; String get senderAccount; String get amount; String get customerId; String get version; Map<String, dynamic> get extInfo;
/// Create a copy of DirectCreditInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectCreditInquiryRequestDtoCopyWith<DirectCreditInquiryRequestDto> get copyWith => _$DirectCreditInquiryRequestDtoCopyWithImpl<DirectCreditInquiryRequestDto>(this as DirectCreditInquiryRequestDto, _$identity);

  /// Serializes this DirectCreditInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectCreditInquiryRequestDto&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverAccount,terminalId,terminalNameLoc,senderAccount,amount,customerId,version,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'DirectCreditInquiryRequestDto(receiverAccount: $receiverAccount, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, senderAccount: $senderAccount, amount: $amount, customerId: $customerId, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $DirectCreditInquiryRequestDtoCopyWith<$Res>  {
  factory $DirectCreditInquiryRequestDtoCopyWith(DirectCreditInquiryRequestDto value, $Res Function(DirectCreditInquiryRequestDto) _then) = _$DirectCreditInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String receiverAccount, String terminalId, String terminalNameLoc, String senderAccount, String amount, String customerId, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$DirectCreditInquiryRequestDtoCopyWithImpl<$Res>
    implements $DirectCreditInquiryRequestDtoCopyWith<$Res> {
  _$DirectCreditInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final DirectCreditInquiryRequestDto _self;
  final $Res Function(DirectCreditInquiryRequestDto) _then;

/// Create a copy of DirectCreditInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiverAccount = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? senderAccount = null,Object? amount = null,Object? customerId = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectCreditInquiryRequestDto].
extension DirectCreditInquiryRequestDtoPatterns on DirectCreditInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectCreditInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectCreditInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectCreditInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectCreditInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectCreditInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectCreditInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiverAccount,  String terminalId,  String terminalNameLoc,  String senderAccount,  String amount,  String customerId,  String version,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectCreditInquiryRequestDto() when $default != null:
return $default(_that.receiverAccount,_that.terminalId,_that.terminalNameLoc,_that.senderAccount,_that.amount,_that.customerId,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiverAccount,  String terminalId,  String terminalNameLoc,  String senderAccount,  String amount,  String customerId,  String version,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _DirectCreditInquiryRequestDto():
return $default(_that.receiverAccount,_that.terminalId,_that.terminalNameLoc,_that.senderAccount,_that.amount,_that.customerId,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiverAccount,  String terminalId,  String terminalNameLoc,  String senderAccount,  String amount,  String customerId,  String version,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _DirectCreditInquiryRequestDto() when $default != null:
return $default(_that.receiverAccount,_that.terminalId,_that.terminalNameLoc,_that.senderAccount,_that.amount,_that.customerId,_that.version,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectCreditInquiryRequestDto implements DirectCreditInquiryRequestDto {
  const _DirectCreditInquiryRequestDto({required this.receiverAccount, required this.terminalId, required this.terminalNameLoc, required this.senderAccount, required this.amount, required this.customerId, this.version = "v1", final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _DirectCreditInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$DirectCreditInquiryRequestDtoFromJson(json);

@override final  String receiverAccount;
@override final  String terminalId;
@override final  String terminalNameLoc;
@override final  String senderAccount;
@override final  String amount;
@override final  String customerId;
@override@JsonKey() final  String version;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of DirectCreditInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectCreditInquiryRequestDtoCopyWith<_DirectCreditInquiryRequestDto> get copyWith => __$DirectCreditInquiryRequestDtoCopyWithImpl<_DirectCreditInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectCreditInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectCreditInquiryRequestDto&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.terminalNameLoc, terminalNameLoc) || other.terminalNameLoc == terminalNameLoc)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverAccount,terminalId,terminalNameLoc,senderAccount,amount,customerId,version,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'DirectCreditInquiryRequestDto(receiverAccount: $receiverAccount, terminalId: $terminalId, terminalNameLoc: $terminalNameLoc, senderAccount: $senderAccount, amount: $amount, customerId: $customerId, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$DirectCreditInquiryRequestDtoCopyWith<$Res> implements $DirectCreditInquiryRequestDtoCopyWith<$Res> {
  factory _$DirectCreditInquiryRequestDtoCopyWith(_DirectCreditInquiryRequestDto value, $Res Function(_DirectCreditInquiryRequestDto) _then) = __$DirectCreditInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String receiverAccount, String terminalId, String terminalNameLoc, String senderAccount, String amount, String customerId, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$DirectCreditInquiryRequestDtoCopyWithImpl<$Res>
    implements _$DirectCreditInquiryRequestDtoCopyWith<$Res> {
  __$DirectCreditInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _DirectCreditInquiryRequestDto _self;
  final $Res Function(_DirectCreditInquiryRequestDto) _then;

/// Create a copy of DirectCreditInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiverAccount = null,Object? terminalId = null,Object? terminalNameLoc = null,Object? senderAccount = null,Object? amount = null,Object? customerId = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_DirectCreditInquiryRequestDto(
receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,terminalId: null == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String,terminalNameLoc: null == terminalNameLoc ? _self.terminalNameLoc : terminalNameLoc // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
