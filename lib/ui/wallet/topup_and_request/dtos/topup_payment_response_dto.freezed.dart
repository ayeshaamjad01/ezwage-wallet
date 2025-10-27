// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopupPaymentResponseDto {

 String get statusCode; String get statusMessage; TopupPaymentDataDto? get data;
/// Create a copy of TopupPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupPaymentResponseDtoCopyWith<TopupPaymentResponseDto> get copyWith => _$TopupPaymentResponseDtoCopyWithImpl<TopupPaymentResponseDto>(this as TopupPaymentResponseDto, _$identity);

  /// Serializes this TopupPaymentResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupPaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'TopupPaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $TopupPaymentResponseDtoCopyWith<$Res>  {
  factory $TopupPaymentResponseDtoCopyWith(TopupPaymentResponseDto value, $Res Function(TopupPaymentResponseDto) _then) = _$TopupPaymentResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, TopupPaymentDataDto? data
});


$TopupPaymentDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$TopupPaymentResponseDtoCopyWithImpl<$Res>
    implements $TopupPaymentResponseDtoCopyWith<$Res> {
  _$TopupPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final TopupPaymentResponseDto _self;
  final $Res Function(TopupPaymentResponseDto) _then;

/// Create a copy of TopupPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopupPaymentDataDto?,
  ));
}
/// Create a copy of TopupPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopupPaymentDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TopupPaymentDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopupPaymentResponseDto].
extension TopupPaymentResponseDtoPatterns on TopupPaymentResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupPaymentResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupPaymentResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TopupPaymentResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupPaymentResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopupPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  TopupPaymentDataDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopupPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  TopupPaymentDataDto? data)  $default,) {final _that = this;
switch (_that) {
case _TopupPaymentResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  TopupPaymentDataDto? data)?  $default,) {final _that = this;
switch (_that) {
case _TopupPaymentResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupPaymentResponseDto implements TopupPaymentResponseDto {
  const _TopupPaymentResponseDto({required this.statusCode, required this.statusMessage, this.data});
  factory _TopupPaymentResponseDto.fromJson(Map<String, dynamic> json) => _$TopupPaymentResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  TopupPaymentDataDto? data;

/// Create a copy of TopupPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupPaymentResponseDtoCopyWith<_TopupPaymentResponseDto> get copyWith => __$TopupPaymentResponseDtoCopyWithImpl<_TopupPaymentResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupPaymentResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupPaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'TopupPaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TopupPaymentResponseDtoCopyWith<$Res> implements $TopupPaymentResponseDtoCopyWith<$Res> {
  factory _$TopupPaymentResponseDtoCopyWith(_TopupPaymentResponseDto value, $Res Function(_TopupPaymentResponseDto) _then) = __$TopupPaymentResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, TopupPaymentDataDto? data
});


@override $TopupPaymentDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$TopupPaymentResponseDtoCopyWithImpl<$Res>
    implements _$TopupPaymentResponseDtoCopyWith<$Res> {
  __$TopupPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final _TopupPaymentResponseDto _self;
  final $Res Function(_TopupPaymentResponseDto) _then;

/// Create a copy of TopupPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_TopupPaymentResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopupPaymentDataDto?,
  ));
}

/// Create a copy of TopupPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopupPaymentDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TopupPaymentDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$TopupPaymentDataDto {

 String? get transactionDateTime;// YYYY-MM-DD HH:MM:SS
 String? get transactionId; String? get sessionId;
/// Create a copy of TopupPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupPaymentDataDtoCopyWith<TopupPaymentDataDto> get copyWith => _$TopupPaymentDataDtoCopyWithImpl<TopupPaymentDataDto>(this as TopupPaymentDataDto, _$identity);

  /// Serializes this TopupPaymentDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupPaymentDataDto&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,transactionId,sessionId);

@override
String toString() {
  return 'TopupPaymentDataDto(transactionDateTime: $transactionDateTime, transactionId: $transactionId, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $TopupPaymentDataDtoCopyWith<$Res>  {
  factory $TopupPaymentDataDtoCopyWith(TopupPaymentDataDto value, $Res Function(TopupPaymentDataDto) _then) = _$TopupPaymentDataDtoCopyWithImpl;
@useResult
$Res call({
 String? transactionDateTime, String? transactionId, String? sessionId
});




}
/// @nodoc
class _$TopupPaymentDataDtoCopyWithImpl<$Res>
    implements $TopupPaymentDataDtoCopyWith<$Res> {
  _$TopupPaymentDataDtoCopyWithImpl(this._self, this._then);

  final TopupPaymentDataDto _self;
  final $Res Function(TopupPaymentDataDto) _then;

/// Create a copy of TopupPaymentDataDto
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


/// Adds pattern-matching-related methods to [TopupPaymentDataDto].
extension TopupPaymentDataDtoPatterns on TopupPaymentDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupPaymentDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupPaymentDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupPaymentDataDto value)  $default,){
final _that = this;
switch (_that) {
case _TopupPaymentDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupPaymentDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopupPaymentDataDto() when $default != null:
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
case _TopupPaymentDataDto() when $default != null:
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
case _TopupPaymentDataDto():
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
case _TopupPaymentDataDto() when $default != null:
return $default(_that.transactionDateTime,_that.transactionId,_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupPaymentDataDto implements TopupPaymentDataDto {
  const _TopupPaymentDataDto({this.transactionDateTime, this.transactionId, this.sessionId});
  factory _TopupPaymentDataDto.fromJson(Map<String, dynamic> json) => _$TopupPaymentDataDtoFromJson(json);

@override final  String? transactionDateTime;
// YYYY-MM-DD HH:MM:SS
@override final  String? transactionId;
@override final  String? sessionId;

/// Create a copy of TopupPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupPaymentDataDtoCopyWith<_TopupPaymentDataDto> get copyWith => __$TopupPaymentDataDtoCopyWithImpl<_TopupPaymentDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupPaymentDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupPaymentDataDto&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,transactionId,sessionId);

@override
String toString() {
  return 'TopupPaymentDataDto(transactionDateTime: $transactionDateTime, transactionId: $transactionId, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$TopupPaymentDataDtoCopyWith<$Res> implements $TopupPaymentDataDtoCopyWith<$Res> {
  factory _$TopupPaymentDataDtoCopyWith(_TopupPaymentDataDto value, $Res Function(_TopupPaymentDataDto) _then) = __$TopupPaymentDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? transactionDateTime, String? transactionId, String? sessionId
});




}
/// @nodoc
class __$TopupPaymentDataDtoCopyWithImpl<$Res>
    implements _$TopupPaymentDataDtoCopyWith<$Res> {
  __$TopupPaymentDataDtoCopyWithImpl(this._self, this._then);

  final _TopupPaymentDataDto _self;
  final $Res Function(_TopupPaymentDataDto) _then;

/// Create a copy of TopupPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionDateTime = freezed,Object? transactionId = freezed,Object? sessionId = freezed,}) {
  return _then(_TopupPaymentDataDto(
transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
