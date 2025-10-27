// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_account_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterAccountResponseDto {

 String get statusCode; String get statusMessage; RegisterAccountResponseData get data;
/// Create a copy of RegisterAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterAccountResponseDtoCopyWith<RegisterAccountResponseDto> get copyWith => _$RegisterAccountResponseDtoCopyWithImpl<RegisterAccountResponseDto>(this as RegisterAccountResponseDto, _$identity);

  /// Serializes this RegisterAccountResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterAccountResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'RegisterAccountResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $RegisterAccountResponseDtoCopyWith<$Res>  {
  factory $RegisterAccountResponseDtoCopyWith(RegisterAccountResponseDto value, $Res Function(RegisterAccountResponseDto) _then) = _$RegisterAccountResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, RegisterAccountResponseData data
});


$RegisterAccountResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class _$RegisterAccountResponseDtoCopyWithImpl<$Res>
    implements $RegisterAccountResponseDtoCopyWith<$Res> {
  _$RegisterAccountResponseDtoCopyWithImpl(this._self, this._then);

  final RegisterAccountResponseDto _self;
  final $Res Function(RegisterAccountResponseDto) _then;

/// Create a copy of RegisterAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RegisterAccountResponseData,
  ));
}
/// Create a copy of RegisterAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterAccountResponseDataCopyWith<$Res> get data {
  
  return $RegisterAccountResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterAccountResponseDto].
extension RegisterAccountResponseDtoPatterns on RegisterAccountResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterAccountResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterAccountResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _RegisterAccountResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterAccountResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  RegisterAccountResponseData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  RegisterAccountResponseData data)  $default,) {final _that = this;
switch (_that) {
case _RegisterAccountResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  RegisterAccountResponseData data)?  $default,) {final _that = this;
switch (_that) {
case _RegisterAccountResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterAccountResponseDto implements RegisterAccountResponseDto {
  const _RegisterAccountResponseDto({required this.statusCode, required this.statusMessage, required this.data});
  factory _RegisterAccountResponseDto.fromJson(Map<String, dynamic> json) => _$RegisterAccountResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  RegisterAccountResponseData data;

/// Create a copy of RegisterAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterAccountResponseDtoCopyWith<_RegisterAccountResponseDto> get copyWith => __$RegisterAccountResponseDtoCopyWithImpl<_RegisterAccountResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterAccountResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterAccountResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'RegisterAccountResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RegisterAccountResponseDtoCopyWith<$Res> implements $RegisterAccountResponseDtoCopyWith<$Res> {
  factory _$RegisterAccountResponseDtoCopyWith(_RegisterAccountResponseDto value, $Res Function(_RegisterAccountResponseDto) _then) = __$RegisterAccountResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, RegisterAccountResponseData data
});


@override $RegisterAccountResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class __$RegisterAccountResponseDtoCopyWithImpl<$Res>
    implements _$RegisterAccountResponseDtoCopyWith<$Res> {
  __$RegisterAccountResponseDtoCopyWithImpl(this._self, this._then);

  final _RegisterAccountResponseDto _self;
  final $Res Function(_RegisterAccountResponseDto) _then;

/// Create a copy of RegisterAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_RegisterAccountResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RegisterAccountResponseData,
  ));
}

/// Create a copy of RegisterAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterAccountResponseDataCopyWith<$Res> get data {
  
  return $RegisterAccountResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RegisterAccountResponseData {

 String get registrationStatus; String get customerId; String get accountNumber;
/// Create a copy of RegisterAccountResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterAccountResponseDataCopyWith<RegisterAccountResponseData> get copyWith => _$RegisterAccountResponseDataCopyWithImpl<RegisterAccountResponseData>(this as RegisterAccountResponseData, _$identity);

  /// Serializes this RegisterAccountResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterAccountResponseData&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,registrationStatus,customerId,accountNumber);

@override
String toString() {
  return 'RegisterAccountResponseData(registrationStatus: $registrationStatus, customerId: $customerId, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class $RegisterAccountResponseDataCopyWith<$Res>  {
  factory $RegisterAccountResponseDataCopyWith(RegisterAccountResponseData value, $Res Function(RegisterAccountResponseData) _then) = _$RegisterAccountResponseDataCopyWithImpl;
@useResult
$Res call({
 String registrationStatus, String customerId, String accountNumber
});




}
/// @nodoc
class _$RegisterAccountResponseDataCopyWithImpl<$Res>
    implements $RegisterAccountResponseDataCopyWith<$Res> {
  _$RegisterAccountResponseDataCopyWithImpl(this._self, this._then);

  final RegisterAccountResponseData _self;
  final $Res Function(RegisterAccountResponseData) _then;

/// Create a copy of RegisterAccountResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? registrationStatus = null,Object? customerId = null,Object? accountNumber = null,}) {
  return _then(_self.copyWith(
registrationStatus: null == registrationStatus ? _self.registrationStatus : registrationStatus // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterAccountResponseData].
extension RegisterAccountResponseDataPatterns on RegisterAccountResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterAccountResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterAccountResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterAccountResponseData value)  $default,){
final _that = this;
switch (_that) {
case _RegisterAccountResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterAccountResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterAccountResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String registrationStatus,  String customerId,  String accountNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterAccountResponseData() when $default != null:
return $default(_that.registrationStatus,_that.customerId,_that.accountNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String registrationStatus,  String customerId,  String accountNumber)  $default,) {final _that = this;
switch (_that) {
case _RegisterAccountResponseData():
return $default(_that.registrationStatus,_that.customerId,_that.accountNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String registrationStatus,  String customerId,  String accountNumber)?  $default,) {final _that = this;
switch (_that) {
case _RegisterAccountResponseData() when $default != null:
return $default(_that.registrationStatus,_that.customerId,_that.accountNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterAccountResponseData implements RegisterAccountResponseData {
  const _RegisterAccountResponseData({required this.registrationStatus, required this.customerId, required this.accountNumber});
  factory _RegisterAccountResponseData.fromJson(Map<String, dynamic> json) => _$RegisterAccountResponseDataFromJson(json);

@override final  String registrationStatus;
@override final  String customerId;
@override final  String accountNumber;

/// Create a copy of RegisterAccountResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterAccountResponseDataCopyWith<_RegisterAccountResponseData> get copyWith => __$RegisterAccountResponseDataCopyWithImpl<_RegisterAccountResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterAccountResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterAccountResponseData&&(identical(other.registrationStatus, registrationStatus) || other.registrationStatus == registrationStatus)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,registrationStatus,customerId,accountNumber);

@override
String toString() {
  return 'RegisterAccountResponseData(registrationStatus: $registrationStatus, customerId: $customerId, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class _$RegisterAccountResponseDataCopyWith<$Res> implements $RegisterAccountResponseDataCopyWith<$Res> {
  factory _$RegisterAccountResponseDataCopyWith(_RegisterAccountResponseData value, $Res Function(_RegisterAccountResponseData) _then) = __$RegisterAccountResponseDataCopyWithImpl;
@override @useResult
$Res call({
 String registrationStatus, String customerId, String accountNumber
});




}
/// @nodoc
class __$RegisterAccountResponseDataCopyWithImpl<$Res>
    implements _$RegisterAccountResponseDataCopyWith<$Res> {
  __$RegisterAccountResponseDataCopyWithImpl(this._self, this._then);

  final _RegisterAccountResponseData _self;
  final $Res Function(_RegisterAccountResponseData) _then;

/// Create a copy of RegisterAccountResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? registrationStatus = null,Object? customerId = null,Object? accountNumber = null,}) {
  return _then(_RegisterAccountResponseData(
registrationStatus: null == registrationStatus ? _self.registrationStatus : registrationStatus // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
