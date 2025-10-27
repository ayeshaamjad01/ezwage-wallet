// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibft_title_fetch_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IbftTitleFetchRequestDto {

 String get receiverAccount; String get senderAccount; String get customerId; String get purposeId; String get bankId; String get amount; String get version; Map<String, dynamic> get extInfo;
/// Create a copy of IbftTitleFetchRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftTitleFetchRequestDtoCopyWith<IbftTitleFetchRequestDto> get copyWith => _$IbftTitleFetchRequestDtoCopyWithImpl<IbftTitleFetchRequestDto>(this as IbftTitleFetchRequestDto, _$identity);

  /// Serializes this IbftTitleFetchRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftTitleFetchRequestDto&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.purposeId, purposeId) || other.purposeId == purposeId)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverAccount,senderAccount,customerId,purposeId,bankId,amount,version,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'IbftTitleFetchRequestDto(receiverAccount: $receiverAccount, senderAccount: $senderAccount, customerId: $customerId, purposeId: $purposeId, bankId: $bankId, amount: $amount, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $IbftTitleFetchRequestDtoCopyWith<$Res>  {
  factory $IbftTitleFetchRequestDtoCopyWith(IbftTitleFetchRequestDto value, $Res Function(IbftTitleFetchRequestDto) _then) = _$IbftTitleFetchRequestDtoCopyWithImpl;
@useResult
$Res call({
 String receiverAccount, String senderAccount, String customerId, String purposeId, String bankId, String amount, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$IbftTitleFetchRequestDtoCopyWithImpl<$Res>
    implements $IbftTitleFetchRequestDtoCopyWith<$Res> {
  _$IbftTitleFetchRequestDtoCopyWithImpl(this._self, this._then);

  final IbftTitleFetchRequestDto _self;
  final $Res Function(IbftTitleFetchRequestDto) _then;

/// Create a copy of IbftTitleFetchRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiverAccount = null,Object? senderAccount = null,Object? customerId = null,Object? purposeId = null,Object? bankId = null,Object? amount = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,purposeId: null == purposeId ? _self.purposeId : purposeId // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [IbftTitleFetchRequestDto].
extension IbftTitleFetchRequestDtoPatterns on IbftTitleFetchRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftTitleFetchRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftTitleFetchRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftTitleFetchRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _IbftTitleFetchRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftTitleFetchRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _IbftTitleFetchRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiverAccount,  String senderAccount,  String customerId,  String purposeId,  String bankId,  String amount,  String version,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftTitleFetchRequestDto() when $default != null:
return $default(_that.receiverAccount,_that.senderAccount,_that.customerId,_that.purposeId,_that.bankId,_that.amount,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiverAccount,  String senderAccount,  String customerId,  String purposeId,  String bankId,  String amount,  String version,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _IbftTitleFetchRequestDto():
return $default(_that.receiverAccount,_that.senderAccount,_that.customerId,_that.purposeId,_that.bankId,_that.amount,_that.version,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiverAccount,  String senderAccount,  String customerId,  String purposeId,  String bankId,  String amount,  String version,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _IbftTitleFetchRequestDto() when $default != null:
return $default(_that.receiverAccount,_that.senderAccount,_that.customerId,_that.purposeId,_that.bankId,_that.amount,_that.version,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftTitleFetchRequestDto implements IbftTitleFetchRequestDto {
  const _IbftTitleFetchRequestDto({required this.receiverAccount, required this.senderAccount, required this.customerId, required this.purposeId, required this.bankId, required this.amount, this.version = "v1", required final  Map<String, dynamic> extInfo}): _extInfo = extInfo;
  factory _IbftTitleFetchRequestDto.fromJson(Map<String, dynamic> json) => _$IbftTitleFetchRequestDtoFromJson(json);

@override final  String receiverAccount;
@override final  String senderAccount;
@override final  String customerId;
@override final  String purposeId;
@override final  String bankId;
@override final  String amount;
@override@JsonKey() final  String version;
 final  Map<String, dynamic> _extInfo;
@override Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of IbftTitleFetchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftTitleFetchRequestDtoCopyWith<_IbftTitleFetchRequestDto> get copyWith => __$IbftTitleFetchRequestDtoCopyWithImpl<_IbftTitleFetchRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftTitleFetchRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftTitleFetchRequestDto&&(identical(other.receiverAccount, receiverAccount) || other.receiverAccount == receiverAccount)&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.purposeId, purposeId) || other.purposeId == purposeId)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverAccount,senderAccount,customerId,purposeId,bankId,amount,version,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'IbftTitleFetchRequestDto(receiverAccount: $receiverAccount, senderAccount: $senderAccount, customerId: $customerId, purposeId: $purposeId, bankId: $bankId, amount: $amount, version: $version, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$IbftTitleFetchRequestDtoCopyWith<$Res> implements $IbftTitleFetchRequestDtoCopyWith<$Res> {
  factory _$IbftTitleFetchRequestDtoCopyWith(_IbftTitleFetchRequestDto value, $Res Function(_IbftTitleFetchRequestDto) _then) = __$IbftTitleFetchRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String receiverAccount, String senderAccount, String customerId, String purposeId, String bankId, String amount, String version, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$IbftTitleFetchRequestDtoCopyWithImpl<$Res>
    implements _$IbftTitleFetchRequestDtoCopyWith<$Res> {
  __$IbftTitleFetchRequestDtoCopyWithImpl(this._self, this._then);

  final _IbftTitleFetchRequestDto _self;
  final $Res Function(_IbftTitleFetchRequestDto) _then;

/// Create a copy of IbftTitleFetchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiverAccount = null,Object? senderAccount = null,Object? customerId = null,Object? purposeId = null,Object? bankId = null,Object? amount = null,Object? version = null,Object? extInfo = null,}) {
  return _then(_IbftTitleFetchRequestDto(
receiverAccount: null == receiverAccount ? _self.receiverAccount : receiverAccount // ignore: cast_nullable_to_non_nullable
as String,senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,purposeId: null == purposeId ? _self.purposeId : purposeId // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
