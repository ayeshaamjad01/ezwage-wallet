// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle_payment_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BundlePaymentRequestDto {

 String get accountNumber; String get customerId; String? get consumerNumber; String get bundleId; String get version;// String? template, // For BVS authentication
// String? index, // For BVS authentication
// String? otp, // For OTP authentication
// String? sessionId, // For BVS authentication
 String? get verificationToken;
/// Create a copy of BundlePaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BundlePaymentRequestDtoCopyWith<BundlePaymentRequestDto> get copyWith => _$BundlePaymentRequestDtoCopyWithImpl<BundlePaymentRequestDto>(this as BundlePaymentRequestDto, _$identity);

  /// Serializes this BundlePaymentRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BundlePaymentRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.version, version) || other.version == version)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,customerId,consumerNumber,bundleId,version,verificationToken);

@override
String toString() {
  return 'BundlePaymentRequestDto(accountNumber: $accountNumber, customerId: $customerId, consumerNumber: $consumerNumber, bundleId: $bundleId, version: $version, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class $BundlePaymentRequestDtoCopyWith<$Res>  {
  factory $BundlePaymentRequestDtoCopyWith(BundlePaymentRequestDto value, $Res Function(BundlePaymentRequestDto) _then) = _$BundlePaymentRequestDtoCopyWithImpl;
@useResult
$Res call({
 String accountNumber, String customerId, String? consumerNumber, String bundleId, String version, String? verificationToken
});




}
/// @nodoc
class _$BundlePaymentRequestDtoCopyWithImpl<$Res>
    implements $BundlePaymentRequestDtoCopyWith<$Res> {
  _$BundlePaymentRequestDtoCopyWithImpl(this._self, this._then);

  final BundlePaymentRequestDto _self;
  final $Res Function(BundlePaymentRequestDto) _then;

/// Create a copy of BundlePaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountNumber = null,Object? customerId = null,Object? consumerNumber = freezed,Object? bundleId = null,Object? version = null,Object? verificationToken = freezed,}) {
  return _then(_self.copyWith(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,bundleId: null == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BundlePaymentRequestDto].
extension BundlePaymentRequestDtoPatterns on BundlePaymentRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BundlePaymentRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BundlePaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BundlePaymentRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _BundlePaymentRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BundlePaymentRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _BundlePaymentRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountNumber,  String customerId,  String? consumerNumber,  String bundleId,  String version,  String? verificationToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BundlePaymentRequestDto() when $default != null:
return $default(_that.accountNumber,_that.customerId,_that.consumerNumber,_that.bundleId,_that.version,_that.verificationToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountNumber,  String customerId,  String? consumerNumber,  String bundleId,  String version,  String? verificationToken)  $default,) {final _that = this;
switch (_that) {
case _BundlePaymentRequestDto():
return $default(_that.accountNumber,_that.customerId,_that.consumerNumber,_that.bundleId,_that.version,_that.verificationToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountNumber,  String customerId,  String? consumerNumber,  String bundleId,  String version,  String? verificationToken)?  $default,) {final _that = this;
switch (_that) {
case _BundlePaymentRequestDto() when $default != null:
return $default(_that.accountNumber,_that.customerId,_that.consumerNumber,_that.bundleId,_that.version,_that.verificationToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BundlePaymentRequestDto implements BundlePaymentRequestDto {
  const _BundlePaymentRequestDto({required this.accountNumber, required this.customerId, this.consumerNumber, required this.bundleId, this.version = "v1", this.verificationToken});
  factory _BundlePaymentRequestDto.fromJson(Map<String, dynamic> json) => _$BundlePaymentRequestDtoFromJson(json);

@override final  String accountNumber;
@override final  String customerId;
@override final  String? consumerNumber;
@override final  String bundleId;
@override@JsonKey() final  String version;
// String? template, // For BVS authentication
// String? index, // For BVS authentication
// String? otp, // For OTP authentication
// String? sessionId, // For BVS authentication
@override final  String? verificationToken;

/// Create a copy of BundlePaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BundlePaymentRequestDtoCopyWith<_BundlePaymentRequestDto> get copyWith => __$BundlePaymentRequestDtoCopyWithImpl<_BundlePaymentRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BundlePaymentRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BundlePaymentRequestDto&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.version, version) || other.version == version)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,customerId,consumerNumber,bundleId,version,verificationToken);

@override
String toString() {
  return 'BundlePaymentRequestDto(accountNumber: $accountNumber, customerId: $customerId, consumerNumber: $consumerNumber, bundleId: $bundleId, version: $version, verificationToken: $verificationToken)';
}


}

/// @nodoc
abstract mixin class _$BundlePaymentRequestDtoCopyWith<$Res> implements $BundlePaymentRequestDtoCopyWith<$Res> {
  factory _$BundlePaymentRequestDtoCopyWith(_BundlePaymentRequestDto value, $Res Function(_BundlePaymentRequestDto) _then) = __$BundlePaymentRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String accountNumber, String customerId, String? consumerNumber, String bundleId, String version, String? verificationToken
});




}
/// @nodoc
class __$BundlePaymentRequestDtoCopyWithImpl<$Res>
    implements _$BundlePaymentRequestDtoCopyWith<$Res> {
  __$BundlePaymentRequestDtoCopyWithImpl(this._self, this._then);

  final _BundlePaymentRequestDto _self;
  final $Res Function(_BundlePaymentRequestDto) _then;

/// Create a copy of BundlePaymentRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? customerId = null,Object? consumerNumber = freezed,Object? bundleId = null,Object? version = null,Object? verificationToken = freezed,}) {
  return _then(_BundlePaymentRequestDto(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,bundleId: null == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
