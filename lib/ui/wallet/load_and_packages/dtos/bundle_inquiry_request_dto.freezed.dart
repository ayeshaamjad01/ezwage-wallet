// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BundleInquiryRequestDto {

 String get bundleId; String get accountNumber; String get consumerNumber; String get customerId; String get version;
/// Create a copy of BundleInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BundleInquiryRequestDtoCopyWith<BundleInquiryRequestDto> get copyWith => _$BundleInquiryRequestDtoCopyWithImpl<BundleInquiryRequestDto>(this as BundleInquiryRequestDto, _$identity);

  /// Serializes this BundleInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BundleInquiryRequestDto&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bundleId,accountNumber,consumerNumber,customerId,version);

@override
String toString() {
  return 'BundleInquiryRequestDto(bundleId: $bundleId, accountNumber: $accountNumber, consumerNumber: $consumerNumber, customerId: $customerId, version: $version)';
}


}

/// @nodoc
abstract mixin class $BundleInquiryRequestDtoCopyWith<$Res>  {
  factory $BundleInquiryRequestDtoCopyWith(BundleInquiryRequestDto value, $Res Function(BundleInquiryRequestDto) _then) = _$BundleInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String bundleId, String accountNumber, String consumerNumber, String customerId, String version
});




}
/// @nodoc
class _$BundleInquiryRequestDtoCopyWithImpl<$Res>
    implements $BundleInquiryRequestDtoCopyWith<$Res> {
  _$BundleInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final BundleInquiryRequestDto _self;
  final $Res Function(BundleInquiryRequestDto) _then;

/// Create a copy of BundleInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bundleId = null,Object? accountNumber = null,Object? consumerNumber = null,Object? customerId = null,Object? version = null,}) {
  return _then(_self.copyWith(
bundleId: null == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: null == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BundleInquiryRequestDto].
extension BundleInquiryRequestDtoPatterns on BundleInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BundleInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BundleInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BundleInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _BundleInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BundleInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _BundleInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bundleId,  String accountNumber,  String consumerNumber,  String customerId,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BundleInquiryRequestDto() when $default != null:
return $default(_that.bundleId,_that.accountNumber,_that.consumerNumber,_that.customerId,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bundleId,  String accountNumber,  String consumerNumber,  String customerId,  String version)  $default,) {final _that = this;
switch (_that) {
case _BundleInquiryRequestDto():
return $default(_that.bundleId,_that.accountNumber,_that.consumerNumber,_that.customerId,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bundleId,  String accountNumber,  String consumerNumber,  String customerId,  String version)?  $default,) {final _that = this;
switch (_that) {
case _BundleInquiryRequestDto() when $default != null:
return $default(_that.bundleId,_that.accountNumber,_that.consumerNumber,_that.customerId,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BundleInquiryRequestDto implements BundleInquiryRequestDto {
  const _BundleInquiryRequestDto({required this.bundleId, required this.accountNumber, required this.consumerNumber, required this.customerId, this.version = "v1"});
  factory _BundleInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$BundleInquiryRequestDtoFromJson(json);

@override final  String bundleId;
@override final  String accountNumber;
@override final  String consumerNumber;
@override final  String customerId;
@override@JsonKey() final  String version;

/// Create a copy of BundleInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BundleInquiryRequestDtoCopyWith<_BundleInquiryRequestDto> get copyWith => __$BundleInquiryRequestDtoCopyWithImpl<_BundleInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BundleInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BundleInquiryRequestDto&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bundleId,accountNumber,consumerNumber,customerId,version);

@override
String toString() {
  return 'BundleInquiryRequestDto(bundleId: $bundleId, accountNumber: $accountNumber, consumerNumber: $consumerNumber, customerId: $customerId, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BundleInquiryRequestDtoCopyWith<$Res> implements $BundleInquiryRequestDtoCopyWith<$Res> {
  factory _$BundleInquiryRequestDtoCopyWith(_BundleInquiryRequestDto value, $Res Function(_BundleInquiryRequestDto) _then) = __$BundleInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String bundleId, String accountNumber, String consumerNumber, String customerId, String version
});




}
/// @nodoc
class __$BundleInquiryRequestDtoCopyWithImpl<$Res>
    implements _$BundleInquiryRequestDtoCopyWith<$Res> {
  __$BundleInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _BundleInquiryRequestDto _self;
  final $Res Function(_BundleInquiryRequestDto) _then;

/// Create a copy of BundleInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bundleId = null,Object? accountNumber = null,Object? consumerNumber = null,Object? customerId = null,Object? version = null,}) {
  return _then(_BundleInquiryRequestDto(
bundleId: null == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: null == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
