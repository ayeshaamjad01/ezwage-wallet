// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BundleInquiryResponseDto {

 String get statusCode; String get statusMessage; String get verificationToken; VerificationMethod get verificationMethod; BundleInquiryData? get data;
/// Create a copy of BundleInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BundleInquiryResponseDtoCopyWith<BundleInquiryResponseDto> get copyWith => _$BundleInquiryResponseDtoCopyWithImpl<BundleInquiryResponseDto>(this as BundleInquiryResponseDto, _$identity);

  /// Serializes this BundleInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BundleInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'BundleInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class $BundleInquiryResponseDtoCopyWith<$Res>  {
  factory $BundleInquiryResponseDtoCopyWith(BundleInquiryResponseDto value, $Res Function(BundleInquiryResponseDto) _then) = _$BundleInquiryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, String verificationToken, VerificationMethod verificationMethod, BundleInquiryData? data
});


$BundleInquiryDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BundleInquiryResponseDtoCopyWithImpl<$Res>
    implements $BundleInquiryResponseDtoCopyWith<$Res> {
  _$BundleInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final BundleInquiryResponseDto _self;
  final $Res Function(BundleInquiryResponseDto) _then;

/// Create a copy of BundleInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? verificationToken = null,Object? verificationMethod = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BundleInquiryData?,
  ));
}
/// Create a copy of BundleInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BundleInquiryDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BundleInquiryDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BundleInquiryResponseDto].
extension BundleInquiryResponseDtoPatterns on BundleInquiryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BundleInquiryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BundleInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BundleInquiryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BundleInquiryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BundleInquiryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BundleInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  BundleInquiryData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BundleInquiryResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.verificationToken,_that.verificationMethod,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  BundleInquiryData? data)  $default,) {final _that = this;
switch (_that) {
case _BundleInquiryResponseDto():
return $default(_that.statusCode,_that.statusMessage,_that.verificationToken,_that.verificationMethod,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  BundleInquiryData? data)?  $default,) {final _that = this;
switch (_that) {
case _BundleInquiryResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.verificationToken,_that.verificationMethod,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BundleInquiryResponseDto implements BundleInquiryResponseDto {
  const _BundleInquiryResponseDto({required this.statusCode, required this.statusMessage, required this.verificationToken, this.verificationMethod = VerificationMethod.otp, this.data});
  factory _BundleInquiryResponseDto.fromJson(Map<String, dynamic> json) => _$BundleInquiryResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  String verificationToken;
@override@JsonKey() final  VerificationMethod verificationMethod;
@override final  BundleInquiryData? data;

/// Create a copy of BundleInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BundleInquiryResponseDtoCopyWith<_BundleInquiryResponseDto> get copyWith => __$BundleInquiryResponseDtoCopyWithImpl<_BundleInquiryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BundleInquiryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BundleInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'BundleInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BundleInquiryResponseDtoCopyWith<$Res> implements $BundleInquiryResponseDtoCopyWith<$Res> {
  factory _$BundleInquiryResponseDtoCopyWith(_BundleInquiryResponseDto value, $Res Function(_BundleInquiryResponseDto) _then) = __$BundleInquiryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, String verificationToken, VerificationMethod verificationMethod, BundleInquiryData? data
});


@override $BundleInquiryDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BundleInquiryResponseDtoCopyWithImpl<$Res>
    implements _$BundleInquiryResponseDtoCopyWith<$Res> {
  __$BundleInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final _BundleInquiryResponseDto _self;
  final $Res Function(_BundleInquiryResponseDto) _then;

/// Create a copy of BundleInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? verificationToken = null,Object? verificationMethod = null,Object? data = freezed,}) {
  return _then(_BundleInquiryResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BundleInquiryData?,
  ));
}

/// Create a copy of BundleInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BundleInquiryDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BundleInquiryDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BundleInquiryData {

 String? get bundleId; String? get customerId; String? get price; String? get description;
/// Create a copy of BundleInquiryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BundleInquiryDataCopyWith<BundleInquiryData> get copyWith => _$BundleInquiryDataCopyWithImpl<BundleInquiryData>(this as BundleInquiryData, _$identity);

  /// Serializes this BundleInquiryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BundleInquiryData&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bundleId,customerId,price,description);

@override
String toString() {
  return 'BundleInquiryData(bundleId: $bundleId, customerId: $customerId, price: $price, description: $description)';
}


}

/// @nodoc
abstract mixin class $BundleInquiryDataCopyWith<$Res>  {
  factory $BundleInquiryDataCopyWith(BundleInquiryData value, $Res Function(BundleInquiryData) _then) = _$BundleInquiryDataCopyWithImpl;
@useResult
$Res call({
 String? bundleId, String? customerId, String? price, String? description
});




}
/// @nodoc
class _$BundleInquiryDataCopyWithImpl<$Res>
    implements $BundleInquiryDataCopyWith<$Res> {
  _$BundleInquiryDataCopyWithImpl(this._self, this._then);

  final BundleInquiryData _self;
  final $Res Function(BundleInquiryData) _then;

/// Create a copy of BundleInquiryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bundleId = freezed,Object? customerId = freezed,Object? price = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
bundleId: freezed == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BundleInquiryData].
extension BundleInquiryDataPatterns on BundleInquiryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BundleInquiryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BundleInquiryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BundleInquiryData value)  $default,){
final _that = this;
switch (_that) {
case _BundleInquiryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BundleInquiryData value)?  $default,){
final _that = this;
switch (_that) {
case _BundleInquiryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? bundleId,  String? customerId,  String? price,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BundleInquiryData() when $default != null:
return $default(_that.bundleId,_that.customerId,_that.price,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? bundleId,  String? customerId,  String? price,  String? description)  $default,) {final _that = this;
switch (_that) {
case _BundleInquiryData():
return $default(_that.bundleId,_that.customerId,_that.price,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? bundleId,  String? customerId,  String? price,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _BundleInquiryData() when $default != null:
return $default(_that.bundleId,_that.customerId,_that.price,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BundleInquiryData implements BundleInquiryData {
  const _BundleInquiryData({this.bundleId, this.customerId, this.price, this.description});
  factory _BundleInquiryData.fromJson(Map<String, dynamic> json) => _$BundleInquiryDataFromJson(json);

@override final  String? bundleId;
@override final  String? customerId;
@override final  String? price;
@override final  String? description;

/// Create a copy of BundleInquiryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BundleInquiryDataCopyWith<_BundleInquiryData> get copyWith => __$BundleInquiryDataCopyWithImpl<_BundleInquiryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BundleInquiryDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BundleInquiryData&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bundleId,customerId,price,description);

@override
String toString() {
  return 'BundleInquiryData(bundleId: $bundleId, customerId: $customerId, price: $price, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BundleInquiryDataCopyWith<$Res> implements $BundleInquiryDataCopyWith<$Res> {
  factory _$BundleInquiryDataCopyWith(_BundleInquiryData value, $Res Function(_BundleInquiryData) _then) = __$BundleInquiryDataCopyWithImpl;
@override @useResult
$Res call({
 String? bundleId, String? customerId, String? price, String? description
});




}
/// @nodoc
class __$BundleInquiryDataCopyWithImpl<$Res>
    implements _$BundleInquiryDataCopyWith<$Res> {
  __$BundleInquiryDataCopyWithImpl(this._self, this._then);

  final _BundleInquiryData _self;
  final $Res Function(_BundleInquiryData) _then;

/// Create a copy of BundleInquiryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bundleId = freezed,Object? customerId = freezed,Object? price = freezed,Object? description = freezed,}) {
  return _then(_BundleInquiryData(
bundleId: freezed == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
