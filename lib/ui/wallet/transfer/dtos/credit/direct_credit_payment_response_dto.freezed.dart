// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_credit_payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectCreditPaymentResponseDto {

 String? get statusCode; String? get statusMessage; DirectCreditPaymentDataDto? get data;
/// Create a copy of DirectCreditPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectCreditPaymentResponseDtoCopyWith<DirectCreditPaymentResponseDto> get copyWith => _$DirectCreditPaymentResponseDtoCopyWithImpl<DirectCreditPaymentResponseDto>(this as DirectCreditPaymentResponseDto, _$identity);

  /// Serializes this DirectCreditPaymentResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectCreditPaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'DirectCreditPaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $DirectCreditPaymentResponseDtoCopyWith<$Res>  {
  factory $DirectCreditPaymentResponseDtoCopyWith(DirectCreditPaymentResponseDto value, $Res Function(DirectCreditPaymentResponseDto) _then) = _$DirectCreditPaymentResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? statusCode, String? statusMessage, DirectCreditPaymentDataDto? data
});


$DirectCreditPaymentDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$DirectCreditPaymentResponseDtoCopyWithImpl<$Res>
    implements $DirectCreditPaymentResponseDtoCopyWith<$Res> {
  _$DirectCreditPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final DirectCreditPaymentResponseDto _self;
  final $Res Function(DirectCreditPaymentResponseDto) _then;

/// Create a copy of DirectCreditPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DirectCreditPaymentDataDto?,
  ));
}
/// Create a copy of DirectCreditPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DirectCreditPaymentDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DirectCreditPaymentDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DirectCreditPaymentResponseDto].
extension DirectCreditPaymentResponseDtoPatterns on DirectCreditPaymentResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectCreditPaymentResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectCreditPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectCreditPaymentResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectCreditPaymentResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectCreditPaymentResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectCreditPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? statusCode,  String? statusMessage,  DirectCreditPaymentDataDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectCreditPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? statusCode,  String? statusMessage,  DirectCreditPaymentDataDto? data)  $default,) {final _that = this;
switch (_that) {
case _DirectCreditPaymentResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? statusCode,  String? statusMessage,  DirectCreditPaymentDataDto? data)?  $default,) {final _that = this;
switch (_that) {
case _DirectCreditPaymentResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectCreditPaymentResponseDto implements DirectCreditPaymentResponseDto {
  const _DirectCreditPaymentResponseDto({required this.statusCode, required this.statusMessage, required this.data});
  factory _DirectCreditPaymentResponseDto.fromJson(Map<String, dynamic> json) => _$DirectCreditPaymentResponseDtoFromJson(json);

@override final  String? statusCode;
@override final  String? statusMessage;
@override final  DirectCreditPaymentDataDto? data;

/// Create a copy of DirectCreditPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectCreditPaymentResponseDtoCopyWith<_DirectCreditPaymentResponseDto> get copyWith => __$DirectCreditPaymentResponseDtoCopyWithImpl<_DirectCreditPaymentResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectCreditPaymentResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectCreditPaymentResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'DirectCreditPaymentResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DirectCreditPaymentResponseDtoCopyWith<$Res> implements $DirectCreditPaymentResponseDtoCopyWith<$Res> {
  factory _$DirectCreditPaymentResponseDtoCopyWith(_DirectCreditPaymentResponseDto value, $Res Function(_DirectCreditPaymentResponseDto) _then) = __$DirectCreditPaymentResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? statusCode, String? statusMessage, DirectCreditPaymentDataDto? data
});


@override $DirectCreditPaymentDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$DirectCreditPaymentResponseDtoCopyWithImpl<$Res>
    implements _$DirectCreditPaymentResponseDtoCopyWith<$Res> {
  __$DirectCreditPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final _DirectCreditPaymentResponseDto _self;
  final $Res Function(_DirectCreditPaymentResponseDto) _then;

/// Create a copy of DirectCreditPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,}) {
  return _then(_DirectCreditPaymentResponseDto(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DirectCreditPaymentDataDto?,
  ));
}

/// Create a copy of DirectCreditPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DirectCreditPaymentDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DirectCreditPaymentDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DirectCreditPaymentDataDto {

 String? get transactionId; String? get transactionDateTime; String? get rrn; String? get stan;
/// Create a copy of DirectCreditPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectCreditPaymentDataDtoCopyWith<DirectCreditPaymentDataDto> get copyWith => _$DirectCreditPaymentDataDtoCopyWithImpl<DirectCreditPaymentDataDto>(this as DirectCreditPaymentDataDto, _$identity);

  /// Serializes this DirectCreditPaymentDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectCreditPaymentDataDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.rrn, rrn) || other.rrn == rrn)&&(identical(other.stan, stan) || other.stan == stan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,transactionDateTime,rrn,stan);

@override
String toString() {
  return 'DirectCreditPaymentDataDto(transactionId: $transactionId, transactionDateTime: $transactionDateTime, rrn: $rrn, stan: $stan)';
}


}

/// @nodoc
abstract mixin class $DirectCreditPaymentDataDtoCopyWith<$Res>  {
  factory $DirectCreditPaymentDataDtoCopyWith(DirectCreditPaymentDataDto value, $Res Function(DirectCreditPaymentDataDto) _then) = _$DirectCreditPaymentDataDtoCopyWithImpl;
@useResult
$Res call({
 String? transactionId, String? transactionDateTime, String? rrn, String? stan
});




}
/// @nodoc
class _$DirectCreditPaymentDataDtoCopyWithImpl<$Res>
    implements $DirectCreditPaymentDataDtoCopyWith<$Res> {
  _$DirectCreditPaymentDataDtoCopyWithImpl(this._self, this._then);

  final DirectCreditPaymentDataDto _self;
  final $Res Function(DirectCreditPaymentDataDto) _then;

/// Create a copy of DirectCreditPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = freezed,Object? transactionDateTime = freezed,Object? rrn = freezed,Object? stan = freezed,}) {
  return _then(_self.copyWith(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,rrn: freezed == rrn ? _self.rrn : rrn // ignore: cast_nullable_to_non_nullable
as String?,stan: freezed == stan ? _self.stan : stan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectCreditPaymentDataDto].
extension DirectCreditPaymentDataDtoPatterns on DirectCreditPaymentDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectCreditPaymentDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectCreditPaymentDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectCreditPaymentDataDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectCreditPaymentDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectCreditPaymentDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectCreditPaymentDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? transactionId,  String? transactionDateTime,  String? rrn,  String? stan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectCreditPaymentDataDto() when $default != null:
return $default(_that.transactionId,_that.transactionDateTime,_that.rrn,_that.stan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? transactionId,  String? transactionDateTime,  String? rrn,  String? stan)  $default,) {final _that = this;
switch (_that) {
case _DirectCreditPaymentDataDto():
return $default(_that.transactionId,_that.transactionDateTime,_that.rrn,_that.stan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? transactionId,  String? transactionDateTime,  String? rrn,  String? stan)?  $default,) {final _that = this;
switch (_that) {
case _DirectCreditPaymentDataDto() when $default != null:
return $default(_that.transactionId,_that.transactionDateTime,_that.rrn,_that.stan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectCreditPaymentDataDto implements DirectCreditPaymentDataDto {
  const _DirectCreditPaymentDataDto({required this.transactionId, required this.transactionDateTime, required this.rrn, required this.stan});
  factory _DirectCreditPaymentDataDto.fromJson(Map<String, dynamic> json) => _$DirectCreditPaymentDataDtoFromJson(json);

@override final  String? transactionId;
@override final  String? transactionDateTime;
@override final  String? rrn;
@override final  String? stan;

/// Create a copy of DirectCreditPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectCreditPaymentDataDtoCopyWith<_DirectCreditPaymentDataDto> get copyWith => __$DirectCreditPaymentDataDtoCopyWithImpl<_DirectCreditPaymentDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectCreditPaymentDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectCreditPaymentDataDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.rrn, rrn) || other.rrn == rrn)&&(identical(other.stan, stan) || other.stan == stan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,transactionDateTime,rrn,stan);

@override
String toString() {
  return 'DirectCreditPaymentDataDto(transactionId: $transactionId, transactionDateTime: $transactionDateTime, rrn: $rrn, stan: $stan)';
}


}

/// @nodoc
abstract mixin class _$DirectCreditPaymentDataDtoCopyWith<$Res> implements $DirectCreditPaymentDataDtoCopyWith<$Res> {
  factory _$DirectCreditPaymentDataDtoCopyWith(_DirectCreditPaymentDataDto value, $Res Function(_DirectCreditPaymentDataDto) _then) = __$DirectCreditPaymentDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? transactionId, String? transactionDateTime, String? rrn, String? stan
});




}
/// @nodoc
class __$DirectCreditPaymentDataDtoCopyWithImpl<$Res>
    implements _$DirectCreditPaymentDataDtoCopyWith<$Res> {
  __$DirectCreditPaymentDataDtoCopyWithImpl(this._self, this._then);

  final _DirectCreditPaymentDataDto _self;
  final $Res Function(_DirectCreditPaymentDataDto) _then;

/// Create a copy of DirectCreditPaymentDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = freezed,Object? transactionDateTime = freezed,Object? rrn = freezed,Object? stan = freezed,}) {
  return _then(_DirectCreditPaymentDataDto(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,rrn: freezed == rrn ? _self.rrn : rrn // ignore: cast_nullable_to_non_nullable
as String?,stan: freezed == stan ? _self.stan : stan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
