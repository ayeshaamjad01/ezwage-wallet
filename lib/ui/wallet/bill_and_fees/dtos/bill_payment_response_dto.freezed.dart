// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillPaymentResponseDto {

 String get statusCode; String get statusMessage; BillPaymentDataDto? get data;
/// Create a copy of BillPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillPaymentResponseDtoCopyWith<BillPaymentResponseDto> get copyWith => _$BillPaymentResponseDtoCopyWithImpl<BillPaymentResponseDto>(this as BillPaymentResponseDto, _$identity);

  /// Serializes this BillPaymentResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillPaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'BillPaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $BillPaymentResponseDtoCopyWith<$Res>  {
  factory $BillPaymentResponseDtoCopyWith(BillPaymentResponseDto value, $Res Function(BillPaymentResponseDto) _then) = _$BillPaymentResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, BillPaymentDataDto? data
});


$BillPaymentDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$BillPaymentResponseDtoCopyWithImpl<$Res>
    implements $BillPaymentResponseDtoCopyWith<$Res> {
  _$BillPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final BillPaymentResponseDto _self;
  final $Res Function(BillPaymentResponseDto) _then;

/// Create a copy of BillPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BillPaymentDataDto?,
  ));
}
/// Create a copy of BillPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillPaymentDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BillPaymentDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BillPaymentResponseDto].
extension BillPaymentResponseDtoPatterns on BillPaymentResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillPaymentResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillPaymentResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BillPaymentResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillPaymentResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  BillPaymentDataDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  BillPaymentDataDto? data)  $default,) {final _that = this;
switch (_that) {
case _BillPaymentResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  BillPaymentDataDto? data)?  $default,) {final _that = this;
switch (_that) {
case _BillPaymentResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillPaymentResponseDto implements BillPaymentResponseDto {
  const _BillPaymentResponseDto({required this.statusCode, required this.statusMessage, this.data});
  factory _BillPaymentResponseDto.fromJson(Map<String, dynamic> json) => _$BillPaymentResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  BillPaymentDataDto? data;

/// Create a copy of BillPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillPaymentResponseDtoCopyWith<_BillPaymentResponseDto> get copyWith => __$BillPaymentResponseDtoCopyWithImpl<_BillPaymentResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillPaymentResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillPaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'BillPaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BillPaymentResponseDtoCopyWith<$Res> implements $BillPaymentResponseDtoCopyWith<$Res> {
  factory _$BillPaymentResponseDtoCopyWith(_BillPaymentResponseDto value, $Res Function(_BillPaymentResponseDto) _then) = __$BillPaymentResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, BillPaymentDataDto? data
});


@override $BillPaymentDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$BillPaymentResponseDtoCopyWithImpl<$Res>
    implements _$BillPaymentResponseDtoCopyWith<$Res> {
  __$BillPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final _BillPaymentResponseDto _self;
  final $Res Function(_BillPaymentResponseDto) _then;

/// Create a copy of BillPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_BillPaymentResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BillPaymentDataDto?,
  ));
}

/// Create a copy of BillPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillPaymentDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BillPaymentDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BillPaymentDataDto {

 String? get transactionDateTime;// e.g. 2023-10-26 12:36:48
 String? get stan;// unique
 String? get transactionId;// transaction reference
 String? get rrn;
/// Create a copy of BillPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillPaymentDataDtoCopyWith<BillPaymentDataDto> get copyWith => _$BillPaymentDataDtoCopyWithImpl<BillPaymentDataDto>(this as BillPaymentDataDto, _$identity);

  /// Serializes this BillPaymentDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillPaymentDataDto&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.stan, stan) || other.stan == stan)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.rrn, rrn) || other.rrn == rrn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,stan,transactionId,rrn);

@override
String toString() {
  return 'BillPaymentDataDto(transactionDateTime: $transactionDateTime, stan: $stan, transactionId: $transactionId, rrn: $rrn)';
}


}

/// @nodoc
abstract mixin class $BillPaymentDataDtoCopyWith<$Res>  {
  factory $BillPaymentDataDtoCopyWith(BillPaymentDataDto value, $Res Function(BillPaymentDataDto) _then) = _$BillPaymentDataDtoCopyWithImpl;
@useResult
$Res call({
 String? transactionDateTime, String? stan, String? transactionId, String? rrn
});




}
/// @nodoc
class _$BillPaymentDataDtoCopyWithImpl<$Res>
    implements $BillPaymentDataDtoCopyWith<$Res> {
  _$BillPaymentDataDtoCopyWithImpl(this._self, this._then);

  final BillPaymentDataDto _self;
  final $Res Function(BillPaymentDataDto) _then;

/// Create a copy of BillPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionDateTime = freezed,Object? stan = freezed,Object? transactionId = freezed,Object? rrn = freezed,}) {
  return _then(_self.copyWith(
transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,stan: freezed == stan ? _self.stan : stan // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,rrn: freezed == rrn ? _self.rrn : rrn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BillPaymentDataDto].
extension BillPaymentDataDtoPatterns on BillPaymentDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillPaymentDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillPaymentDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillPaymentDataDto value)  $default,){
final _that = this;
switch (_that) {
case _BillPaymentDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillPaymentDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillPaymentDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? transactionDateTime,  String? stan,  String? transactionId,  String? rrn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillPaymentDataDto() when $default != null:
return $default(_that.transactionDateTime,_that.stan,_that.transactionId,_that.rrn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? transactionDateTime,  String? stan,  String? transactionId,  String? rrn)  $default,) {final _that = this;
switch (_that) {
case _BillPaymentDataDto():
return $default(_that.transactionDateTime,_that.stan,_that.transactionId,_that.rrn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? transactionDateTime,  String? stan,  String? transactionId,  String? rrn)?  $default,) {final _that = this;
switch (_that) {
case _BillPaymentDataDto() when $default != null:
return $default(_that.transactionDateTime,_that.stan,_that.transactionId,_that.rrn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillPaymentDataDto implements BillPaymentDataDto {
  const _BillPaymentDataDto({this.transactionDateTime, this.stan, this.transactionId, this.rrn});
  factory _BillPaymentDataDto.fromJson(Map<String, dynamic> json) => _$BillPaymentDataDtoFromJson(json);

@override final  String? transactionDateTime;
// e.g. 2023-10-26 12:36:48
@override final  String? stan;
// unique
@override final  String? transactionId;
// transaction reference
@override final  String? rrn;

/// Create a copy of BillPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillPaymentDataDtoCopyWith<_BillPaymentDataDto> get copyWith => __$BillPaymentDataDtoCopyWithImpl<_BillPaymentDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillPaymentDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillPaymentDataDto&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.stan, stan) || other.stan == stan)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.rrn, rrn) || other.rrn == rrn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,stan,transactionId,rrn);

@override
String toString() {
  return 'BillPaymentDataDto(transactionDateTime: $transactionDateTime, stan: $stan, transactionId: $transactionId, rrn: $rrn)';
}


}

/// @nodoc
abstract mixin class _$BillPaymentDataDtoCopyWith<$Res> implements $BillPaymentDataDtoCopyWith<$Res> {
  factory _$BillPaymentDataDtoCopyWith(_BillPaymentDataDto value, $Res Function(_BillPaymentDataDto) _then) = __$BillPaymentDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? transactionDateTime, String? stan, String? transactionId, String? rrn
});




}
/// @nodoc
class __$BillPaymentDataDtoCopyWithImpl<$Res>
    implements _$BillPaymentDataDtoCopyWith<$Res> {
  __$BillPaymentDataDtoCopyWithImpl(this._self, this._then);

  final _BillPaymentDataDto _self;
  final $Res Function(_BillPaymentDataDto) _then;

/// Create a copy of BillPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionDateTime = freezed,Object? stan = freezed,Object? transactionId = freezed,Object? rrn = freezed,}) {
  return _then(_BillPaymentDataDto(
transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,stan: freezed == stan ? _self.stan : stan // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,rrn: freezed == rrn ? _self.rrn : rrn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
