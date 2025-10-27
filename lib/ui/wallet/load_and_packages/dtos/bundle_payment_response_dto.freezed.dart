// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle_payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BundlePaymentResponseDto {

 String get statusCode; String get statusMessage; BundlePaymentData? get data;
/// Create a copy of BundlePaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BundlePaymentResponseDtoCopyWith<BundlePaymentResponseDto> get copyWith => _$BundlePaymentResponseDtoCopyWithImpl<BundlePaymentResponseDto>(this as BundlePaymentResponseDto, _$identity);

  /// Serializes this BundlePaymentResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BundlePaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'BundlePaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $BundlePaymentResponseDtoCopyWith<$Res>  {
  factory $BundlePaymentResponseDtoCopyWith(BundlePaymentResponseDto value, $Res Function(BundlePaymentResponseDto) _then) = _$BundlePaymentResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, BundlePaymentData? data
});


$BundlePaymentDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BundlePaymentResponseDtoCopyWithImpl<$Res>
    implements $BundlePaymentResponseDtoCopyWith<$Res> {
  _$BundlePaymentResponseDtoCopyWithImpl(this._self, this._then);

  final BundlePaymentResponseDto _self;
  final $Res Function(BundlePaymentResponseDto) _then;

/// Create a copy of BundlePaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BundlePaymentData?,
  ));
}
/// Create a copy of BundlePaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BundlePaymentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BundlePaymentDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BundlePaymentResponseDto].
extension BundlePaymentResponseDtoPatterns on BundlePaymentResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BundlePaymentResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BundlePaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BundlePaymentResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BundlePaymentResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BundlePaymentResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BundlePaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  BundlePaymentData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BundlePaymentResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  BundlePaymentData? data)  $default,) {final _that = this;
switch (_that) {
case _BundlePaymentResponseDto():
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  BundlePaymentData? data)?  $default,) {final _that = this;
switch (_that) {
case _BundlePaymentResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BundlePaymentResponseDto implements BundlePaymentResponseDto {
  const _BundlePaymentResponseDto({required this.statusCode, required this.statusMessage, this.data});
  factory _BundlePaymentResponseDto.fromJson(Map<String, dynamic> json) => _$BundlePaymentResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  BundlePaymentData? data;

/// Create a copy of BundlePaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BundlePaymentResponseDtoCopyWith<_BundlePaymentResponseDto> get copyWith => __$BundlePaymentResponseDtoCopyWithImpl<_BundlePaymentResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BundlePaymentResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BundlePaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'BundlePaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BundlePaymentResponseDtoCopyWith<$Res> implements $BundlePaymentResponseDtoCopyWith<$Res> {
  factory _$BundlePaymentResponseDtoCopyWith(_BundlePaymentResponseDto value, $Res Function(_BundlePaymentResponseDto) _then) = __$BundlePaymentResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, BundlePaymentData? data
});


@override $BundlePaymentDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BundlePaymentResponseDtoCopyWithImpl<$Res>
    implements _$BundlePaymentResponseDtoCopyWith<$Res> {
  __$BundlePaymentResponseDtoCopyWithImpl(this._self, this._then);

  final _BundlePaymentResponseDto _self;
  final $Res Function(_BundlePaymentResponseDto) _then;

/// Create a copy of BundlePaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_BundlePaymentResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BundlePaymentData?,
  ));
}

/// Create a copy of BundlePaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BundlePaymentDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BundlePaymentDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BundlePaymentData {

 String? get transactionDateTime; String? get transactionId; String? get sessionId;
/// Create a copy of BundlePaymentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BundlePaymentDataCopyWith<BundlePaymentData> get copyWith => _$BundlePaymentDataCopyWithImpl<BundlePaymentData>(this as BundlePaymentData, _$identity);

  /// Serializes this BundlePaymentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BundlePaymentData&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,transactionId,sessionId);

@override
String toString() {
  return 'BundlePaymentData(transactionDateTime: $transactionDateTime, transactionId: $transactionId, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $BundlePaymentDataCopyWith<$Res>  {
  factory $BundlePaymentDataCopyWith(BundlePaymentData value, $Res Function(BundlePaymentData) _then) = _$BundlePaymentDataCopyWithImpl;
@useResult
$Res call({
 String? transactionDateTime, String? transactionId, String? sessionId
});




}
/// @nodoc
class _$BundlePaymentDataCopyWithImpl<$Res>
    implements $BundlePaymentDataCopyWith<$Res> {
  _$BundlePaymentDataCopyWithImpl(this._self, this._then);

  final BundlePaymentData _self;
  final $Res Function(BundlePaymentData) _then;

/// Create a copy of BundlePaymentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionDateTime = freezed,Object? transactionId = freezed,Object? sessionId = freezed,}) {
  return _then(_self.copyWith(
transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BundlePaymentData].
extension BundlePaymentDataPatterns on BundlePaymentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BundlePaymentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BundlePaymentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BundlePaymentData value)  $default,){
final _that = this;
switch (_that) {
case _BundlePaymentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BundlePaymentData value)?  $default,){
final _that = this;
switch (_that) {
case _BundlePaymentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? transactionDateTime,  String? transactionId,  String? sessionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BundlePaymentData() when $default != null:
return $default(_that.transactionDateTime,_that.transactionId,_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? transactionDateTime,  String? transactionId,  String? sessionId)  $default,) {final _that = this;
switch (_that) {
case _BundlePaymentData():
return $default(_that.transactionDateTime,_that.transactionId,_that.sessionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? transactionDateTime,  String? transactionId,  String? sessionId)?  $default,) {final _that = this;
switch (_that) {
case _BundlePaymentData() when $default != null:
return $default(_that.transactionDateTime,_that.transactionId,_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BundlePaymentData implements BundlePaymentData {
  const _BundlePaymentData({this.transactionDateTime, this.transactionId, this.sessionId});
  factory _BundlePaymentData.fromJson(Map<String, dynamic> json) => _$BundlePaymentDataFromJson(json);

@override final  String? transactionDateTime;
@override final  String? transactionId;
@override final  String? sessionId;

/// Create a copy of BundlePaymentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BundlePaymentDataCopyWith<_BundlePaymentData> get copyWith => __$BundlePaymentDataCopyWithImpl<_BundlePaymentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BundlePaymentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BundlePaymentData&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,transactionId,sessionId);

@override
String toString() {
  return 'BundlePaymentData(transactionDateTime: $transactionDateTime, transactionId: $transactionId, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$BundlePaymentDataCopyWith<$Res> implements $BundlePaymentDataCopyWith<$Res> {
  factory _$BundlePaymentDataCopyWith(_BundlePaymentData value, $Res Function(_BundlePaymentData) _then) = __$BundlePaymentDataCopyWithImpl;
@override @useResult
$Res call({
 String? transactionDateTime, String? transactionId, String? sessionId
});




}
/// @nodoc
class __$BundlePaymentDataCopyWithImpl<$Res>
    implements _$BundlePaymentDataCopyWith<$Res> {
  __$BundlePaymentDataCopyWithImpl(this._self, this._then);

  final _BundlePaymentData _self;
  final $Res Function(_BundlePaymentData) _then;

/// Create a copy of BundlePaymentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionDateTime = freezed,Object? transactionId = freezed,Object? sessionId = freezed,}) {
  return _then(_BundlePaymentData(
transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
