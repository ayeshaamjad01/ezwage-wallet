// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibft_payment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IbftPaymentApiResponse {

 String? get statusCode; String? get statusMessage; IbftPaymentResponseDto? get data;
/// Create a copy of IbftPaymentApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftPaymentApiResponseCopyWith<IbftPaymentApiResponse> get copyWith => _$IbftPaymentApiResponseCopyWithImpl<IbftPaymentApiResponse>(this as IbftPaymentApiResponse, _$identity);

  /// Serializes this IbftPaymentApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftPaymentApiResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'IbftPaymentApiResponse(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $IbftPaymentApiResponseCopyWith<$Res>  {
  factory $IbftPaymentApiResponseCopyWith(IbftPaymentApiResponse value, $Res Function(IbftPaymentApiResponse) _then) = _$IbftPaymentApiResponseCopyWithImpl;
@useResult
$Res call({
 String? statusCode, String? statusMessage, IbftPaymentResponseDto? data
});


$IbftPaymentResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$IbftPaymentApiResponseCopyWithImpl<$Res>
    implements $IbftPaymentApiResponseCopyWith<$Res> {
  _$IbftPaymentApiResponseCopyWithImpl(this._self, this._then);

  final IbftPaymentApiResponse _self;
  final $Res Function(IbftPaymentApiResponse) _then;

/// Create a copy of IbftPaymentApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IbftPaymentResponseDto?,
  ));
}
/// Create a copy of IbftPaymentApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IbftPaymentResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $IbftPaymentResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [IbftPaymentApiResponse].
extension IbftPaymentApiResponsePatterns on IbftPaymentApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftPaymentApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftPaymentApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftPaymentApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _IbftPaymentApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftPaymentApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _IbftPaymentApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? statusCode,  String? statusMessage,  IbftPaymentResponseDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftPaymentApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? statusCode,  String? statusMessage,  IbftPaymentResponseDto? data)  $default,) {final _that = this;
switch (_that) {
case _IbftPaymentApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? statusCode,  String? statusMessage,  IbftPaymentResponseDto? data)?  $default,) {final _that = this;
switch (_that) {
case _IbftPaymentApiResponse() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftPaymentApiResponse implements IbftPaymentApiResponse {
  const _IbftPaymentApiResponse({this.statusCode, this.statusMessage, this.data});
  factory _IbftPaymentApiResponse.fromJson(Map<String, dynamic> json) => _$IbftPaymentApiResponseFromJson(json);

@override final  String? statusCode;
@override final  String? statusMessage;
@override final  IbftPaymentResponseDto? data;

/// Create a copy of IbftPaymentApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftPaymentApiResponseCopyWith<_IbftPaymentApiResponse> get copyWith => __$IbftPaymentApiResponseCopyWithImpl<_IbftPaymentApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftPaymentApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftPaymentApiResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'IbftPaymentApiResponse(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$IbftPaymentApiResponseCopyWith<$Res> implements $IbftPaymentApiResponseCopyWith<$Res> {
  factory _$IbftPaymentApiResponseCopyWith(_IbftPaymentApiResponse value, $Res Function(_IbftPaymentApiResponse) _then) = __$IbftPaymentApiResponseCopyWithImpl;
@override @useResult
$Res call({
 String? statusCode, String? statusMessage, IbftPaymentResponseDto? data
});


@override $IbftPaymentResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$IbftPaymentApiResponseCopyWithImpl<$Res>
    implements _$IbftPaymentApiResponseCopyWith<$Res> {
  __$IbftPaymentApiResponseCopyWithImpl(this._self, this._then);

  final _IbftPaymentApiResponse _self;
  final $Res Function(_IbftPaymentApiResponse) _then;

/// Create a copy of IbftPaymentApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,}) {
  return _then(_IbftPaymentApiResponse(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IbftPaymentResponseDto?,
  ));
}

/// Create a copy of IbftPaymentApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IbftPaymentResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $IbftPaymentResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$IbftPaymentResponseDto {

 String? get transactionDateTime; String? get stan; String? get transactionId; String? get rrn;
/// Create a copy of IbftPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftPaymentResponseDtoCopyWith<IbftPaymentResponseDto> get copyWith => _$IbftPaymentResponseDtoCopyWithImpl<IbftPaymentResponseDto>(this as IbftPaymentResponseDto, _$identity);

  /// Serializes this IbftPaymentResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftPaymentResponseDto&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.stan, stan) || other.stan == stan)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.rrn, rrn) || other.rrn == rrn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,stan,transactionId,rrn);

@override
String toString() {
  return 'IbftPaymentResponseDto(transactionDateTime: $transactionDateTime, stan: $stan, transactionId: $transactionId, rrn: $rrn)';
}


}

/// @nodoc
abstract mixin class $IbftPaymentResponseDtoCopyWith<$Res>  {
  factory $IbftPaymentResponseDtoCopyWith(IbftPaymentResponseDto value, $Res Function(IbftPaymentResponseDto) _then) = _$IbftPaymentResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? transactionDateTime, String? stan, String? transactionId, String? rrn
});




}
/// @nodoc
class _$IbftPaymentResponseDtoCopyWithImpl<$Res>
    implements $IbftPaymentResponseDtoCopyWith<$Res> {
  _$IbftPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final IbftPaymentResponseDto _self;
  final $Res Function(IbftPaymentResponseDto) _then;

/// Create a copy of IbftPaymentResponseDto
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


/// Adds pattern-matching-related methods to [IbftPaymentResponseDto].
extension IbftPaymentResponseDtoPatterns on IbftPaymentResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftPaymentResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftPaymentResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftPaymentResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _IbftPaymentResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftPaymentResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _IbftPaymentResponseDto() when $default != null:
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
case _IbftPaymentResponseDto() when $default != null:
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
case _IbftPaymentResponseDto():
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
case _IbftPaymentResponseDto() when $default != null:
return $default(_that.transactionDateTime,_that.stan,_that.transactionId,_that.rrn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftPaymentResponseDto implements IbftPaymentResponseDto {
  const _IbftPaymentResponseDto({this.transactionDateTime, this.stan, this.transactionId, this.rrn});
  factory _IbftPaymentResponseDto.fromJson(Map<String, dynamic> json) => _$IbftPaymentResponseDtoFromJson(json);

@override final  String? transactionDateTime;
@override final  String? stan;
@override final  String? transactionId;
@override final  String? rrn;

/// Create a copy of IbftPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftPaymentResponseDtoCopyWith<_IbftPaymentResponseDto> get copyWith => __$IbftPaymentResponseDtoCopyWithImpl<_IbftPaymentResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftPaymentResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftPaymentResponseDto&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime)&&(identical(other.stan, stan) || other.stan == stan)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.rrn, rrn) || other.rrn == rrn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionDateTime,stan,transactionId,rrn);

@override
String toString() {
  return 'IbftPaymentResponseDto(transactionDateTime: $transactionDateTime, stan: $stan, transactionId: $transactionId, rrn: $rrn)';
}


}

/// @nodoc
abstract mixin class _$IbftPaymentResponseDtoCopyWith<$Res> implements $IbftPaymentResponseDtoCopyWith<$Res> {
  factory _$IbftPaymentResponseDtoCopyWith(_IbftPaymentResponseDto value, $Res Function(_IbftPaymentResponseDto) _then) = __$IbftPaymentResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? transactionDateTime, String? stan, String? transactionId, String? rrn
});




}
/// @nodoc
class __$IbftPaymentResponseDtoCopyWithImpl<$Res>
    implements _$IbftPaymentResponseDtoCopyWith<$Res> {
  __$IbftPaymentResponseDtoCopyWithImpl(this._self, this._then);

  final _IbftPaymentResponseDto _self;
  final $Res Function(_IbftPaymentResponseDto) _then;

/// Create a copy of IbftPaymentResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionDateTime = freezed,Object? stan = freezed,Object? transactionId = freezed,Object? rrn = freezed,}) {
  return _then(_IbftPaymentResponseDto(
transactionDateTime: freezed == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String?,stan: freezed == stan ? _self.stan : stan // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,rrn: freezed == rrn ? _self.rrn : rrn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
