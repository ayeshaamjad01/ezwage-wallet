// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopupInquiryRequestDto {

 String get senderAccount;// e.g. 03001234567
 int get telcoId;// returned from Telco list
 String get customerId; String get consumerNumber;// mobile number or ref number
 String get version;
/// Create a copy of TopupInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupInquiryRequestDtoCopyWith<TopupInquiryRequestDto> get copyWith => _$TopupInquiryRequestDtoCopyWithImpl<TopupInquiryRequestDto>(this as TopupInquiryRequestDto, _$identity);

  /// Serializes this TopupInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupInquiryRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,telcoId,customerId,consumerNumber,version);

@override
String toString() {
  return 'TopupInquiryRequestDto(senderAccount: $senderAccount, telcoId: $telcoId, customerId: $customerId, consumerNumber: $consumerNumber, version: $version)';
}


}

/// @nodoc
abstract mixin class $TopupInquiryRequestDtoCopyWith<$Res>  {
  factory $TopupInquiryRequestDtoCopyWith(TopupInquiryRequestDto value, $Res Function(TopupInquiryRequestDto) _then) = _$TopupInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String senderAccount, int telcoId, String customerId, String consumerNumber, String version
});




}
/// @nodoc
class _$TopupInquiryRequestDtoCopyWithImpl<$Res>
    implements $TopupInquiryRequestDtoCopyWith<$Res> {
  _$TopupInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final TopupInquiryRequestDto _self;
  final $Res Function(TopupInquiryRequestDto) _then;

/// Create a copy of TopupInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderAccount = null,Object? telcoId = null,Object? customerId = null,Object? consumerNumber = null,Object? version = null,}) {
  return _then(_self.copyWith(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,telcoId: null == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: null == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TopupInquiryRequestDto].
extension TopupInquiryRequestDtoPatterns on TopupInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _TopupInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopupInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderAccount,  int telcoId,  String customerId,  String consumerNumber,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopupInquiryRequestDto() when $default != null:
return $default(_that.senderAccount,_that.telcoId,_that.customerId,_that.consumerNumber,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderAccount,  int telcoId,  String customerId,  String consumerNumber,  String version)  $default,) {final _that = this;
switch (_that) {
case _TopupInquiryRequestDto():
return $default(_that.senderAccount,_that.telcoId,_that.customerId,_that.consumerNumber,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderAccount,  int telcoId,  String customerId,  String consumerNumber,  String version)?  $default,) {final _that = this;
switch (_that) {
case _TopupInquiryRequestDto() when $default != null:
return $default(_that.senderAccount,_that.telcoId,_that.customerId,_that.consumerNumber,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupInquiryRequestDto implements TopupInquiryRequestDto {
  const _TopupInquiryRequestDto({required this.senderAccount, required this.telcoId, required this.customerId, required this.consumerNumber, this.version = "v1"});
  factory _TopupInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$TopupInquiryRequestDtoFromJson(json);

@override final  String senderAccount;
// e.g. 03001234567
@override final  int telcoId;
// returned from Telco list
@override final  String customerId;
@override final  String consumerNumber;
// mobile number or ref number
@override@JsonKey() final  String version;

/// Create a copy of TopupInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupInquiryRequestDtoCopyWith<_TopupInquiryRequestDto> get copyWith => __$TopupInquiryRequestDtoCopyWithImpl<_TopupInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupInquiryRequestDto&&(identical(other.senderAccount, senderAccount) || other.senderAccount == senderAccount)&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderAccount,telcoId,customerId,consumerNumber,version);

@override
String toString() {
  return 'TopupInquiryRequestDto(senderAccount: $senderAccount, telcoId: $telcoId, customerId: $customerId, consumerNumber: $consumerNumber, version: $version)';
}


}

/// @nodoc
abstract mixin class _$TopupInquiryRequestDtoCopyWith<$Res> implements $TopupInquiryRequestDtoCopyWith<$Res> {
  factory _$TopupInquiryRequestDtoCopyWith(_TopupInquiryRequestDto value, $Res Function(_TopupInquiryRequestDto) _then) = __$TopupInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String senderAccount, int telcoId, String customerId, String consumerNumber, String version
});




}
/// @nodoc
class __$TopupInquiryRequestDtoCopyWithImpl<$Res>
    implements _$TopupInquiryRequestDtoCopyWith<$Res> {
  __$TopupInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _TopupInquiryRequestDto _self;
  final $Res Function(_TopupInquiryRequestDto) _then;

/// Create a copy of TopupInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderAccount = null,Object? telcoId = null,Object? customerId = null,Object? consumerNumber = null,Object? version = null,}) {
  return _then(_TopupInquiryRequestDto(
senderAccount: null == senderAccount ? _self.senderAccount : senderAccount // ignore: cast_nullable_to_non_nullable
as String,telcoId: null == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,consumerNumber: null == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
