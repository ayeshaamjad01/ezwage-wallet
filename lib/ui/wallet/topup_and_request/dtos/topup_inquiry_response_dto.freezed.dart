// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopupInquiryResponseDto {

 String get statusCode; String get statusMessage; String get verificationToken; VerificationMethod get verificationMethod;// mapped from verification fields
 TopupInquiryDataDto? get data;
/// Create a copy of TopupInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupInquiryResponseDtoCopyWith<TopupInquiryResponseDto> get copyWith => _$TopupInquiryResponseDtoCopyWithImpl<TopupInquiryResponseDto>(this as TopupInquiryResponseDto, _$identity);

  /// Serializes this TopupInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'TopupInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class $TopupInquiryResponseDtoCopyWith<$Res>  {
  factory $TopupInquiryResponseDtoCopyWith(TopupInquiryResponseDto value, $Res Function(TopupInquiryResponseDto) _then) = _$TopupInquiryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, String verificationToken, VerificationMethod verificationMethod, TopupInquiryDataDto? data
});


$TopupInquiryDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$TopupInquiryResponseDtoCopyWithImpl<$Res>
    implements $TopupInquiryResponseDtoCopyWith<$Res> {
  _$TopupInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final TopupInquiryResponseDto _self;
  final $Res Function(TopupInquiryResponseDto) _then;

/// Create a copy of TopupInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? verificationToken = null,Object? verificationMethod = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopupInquiryDataDto?,
  ));
}
/// Create a copy of TopupInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopupInquiryDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TopupInquiryDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopupInquiryResponseDto].
extension TopupInquiryResponseDtoPatterns on TopupInquiryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupInquiryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupInquiryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TopupInquiryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupInquiryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopupInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  TopupInquiryDataDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopupInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  TopupInquiryDataDto? data)  $default,) {final _that = this;
switch (_that) {
case _TopupInquiryResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  TopupInquiryDataDto? data)?  $default,) {final _that = this;
switch (_that) {
case _TopupInquiryResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.verificationToken,_that.verificationMethod,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupInquiryResponseDto implements TopupInquiryResponseDto {
  const _TopupInquiryResponseDto({required this.statusCode, required this.statusMessage, required this.verificationToken, this.verificationMethod = VerificationMethod.otp, this.data});
  factory _TopupInquiryResponseDto.fromJson(Map<String, dynamic> json) => _$TopupInquiryResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  String verificationToken;
@override@JsonKey() final  VerificationMethod verificationMethod;
// mapped from verification fields
@override final  TopupInquiryDataDto? data;

/// Create a copy of TopupInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupInquiryResponseDtoCopyWith<_TopupInquiryResponseDto> get copyWith => __$TopupInquiryResponseDtoCopyWithImpl<_TopupInquiryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupInquiryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'TopupInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TopupInquiryResponseDtoCopyWith<$Res> implements $TopupInquiryResponseDtoCopyWith<$Res> {
  factory _$TopupInquiryResponseDtoCopyWith(_TopupInquiryResponseDto value, $Res Function(_TopupInquiryResponseDto) _then) = __$TopupInquiryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, String verificationToken, VerificationMethod verificationMethod, TopupInquiryDataDto? data
});


@override $TopupInquiryDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$TopupInquiryResponseDtoCopyWithImpl<$Res>
    implements _$TopupInquiryResponseDtoCopyWith<$Res> {
  __$TopupInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final _TopupInquiryResponseDto _self;
  final $Res Function(_TopupInquiryResponseDto) _then;

/// Create a copy of TopupInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? verificationToken = null,Object? verificationMethod = null,Object? data = freezed,}) {
  return _then(_TopupInquiryResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopupInquiryDataDto?,
  ));
}

/// Create a copy of TopupInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopupInquiryDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $TopupInquiryDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$TopupInquiryDataDto {

 String? get telcoName; String? get utilityCompanyId; String? get consumerNumber; String? get consumerName;
/// Create a copy of TopupInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupInquiryDataDtoCopyWith<TopupInquiryDataDto> get copyWith => _$TopupInquiryDataDtoCopyWithImpl<TopupInquiryDataDto>(this as TopupInquiryDataDto, _$identity);

  /// Serializes this TopupInquiryDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupInquiryDataDto&&(identical(other.telcoName, telcoName) || other.telcoName == telcoName)&&(identical(other.utilityCompanyId, utilityCompanyId) || other.utilityCompanyId == utilityCompanyId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,telcoName,utilityCompanyId,consumerNumber,consumerName);

@override
String toString() {
  return 'TopupInquiryDataDto(telcoName: $telcoName, utilityCompanyId: $utilityCompanyId, consumerNumber: $consumerNumber, consumerName: $consumerName)';
}


}

/// @nodoc
abstract mixin class $TopupInquiryDataDtoCopyWith<$Res>  {
  factory $TopupInquiryDataDtoCopyWith(TopupInquiryDataDto value, $Res Function(TopupInquiryDataDto) _then) = _$TopupInquiryDataDtoCopyWithImpl;
@useResult
$Res call({
 String? telcoName, String? utilityCompanyId, String? consumerNumber, String? consumerName
});




}
/// @nodoc
class _$TopupInquiryDataDtoCopyWithImpl<$Res>
    implements $TopupInquiryDataDtoCopyWith<$Res> {
  _$TopupInquiryDataDtoCopyWithImpl(this._self, this._then);

  final TopupInquiryDataDto _self;
  final $Res Function(TopupInquiryDataDto) _then;

/// Create a copy of TopupInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? telcoName = freezed,Object? utilityCompanyId = freezed,Object? consumerNumber = freezed,Object? consumerName = freezed,}) {
  return _then(_self.copyWith(
telcoName: freezed == telcoName ? _self.telcoName : telcoName // ignore: cast_nullable_to_non_nullable
as String?,utilityCompanyId: freezed == utilityCompanyId ? _self.utilityCompanyId : utilityCompanyId // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,consumerName: freezed == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TopupInquiryDataDto].
extension TopupInquiryDataDtoPatterns on TopupInquiryDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupInquiryDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupInquiryDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupInquiryDataDto value)  $default,){
final _that = this;
switch (_that) {
case _TopupInquiryDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupInquiryDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _TopupInquiryDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? telcoName,  String? utilityCompanyId,  String? consumerNumber,  String? consumerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopupInquiryDataDto() when $default != null:
return $default(_that.telcoName,_that.utilityCompanyId,_that.consumerNumber,_that.consumerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? telcoName,  String? utilityCompanyId,  String? consumerNumber,  String? consumerName)  $default,) {final _that = this;
switch (_that) {
case _TopupInquiryDataDto():
return $default(_that.telcoName,_that.utilityCompanyId,_that.consumerNumber,_that.consumerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? telcoName,  String? utilityCompanyId,  String? consumerNumber,  String? consumerName)?  $default,) {final _that = this;
switch (_that) {
case _TopupInquiryDataDto() when $default != null:
return $default(_that.telcoName,_that.utilityCompanyId,_that.consumerNumber,_that.consumerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupInquiryDataDto implements TopupInquiryDataDto {
  const _TopupInquiryDataDto({this.telcoName, this.utilityCompanyId, this.consumerNumber, this.consumerName});
  factory _TopupInquiryDataDto.fromJson(Map<String, dynamic> json) => _$TopupInquiryDataDtoFromJson(json);

@override final  String? telcoName;
@override final  String? utilityCompanyId;
@override final  String? consumerNumber;
@override final  String? consumerName;

/// Create a copy of TopupInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupInquiryDataDtoCopyWith<_TopupInquiryDataDto> get copyWith => __$TopupInquiryDataDtoCopyWithImpl<_TopupInquiryDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupInquiryDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupInquiryDataDto&&(identical(other.telcoName, telcoName) || other.telcoName == telcoName)&&(identical(other.utilityCompanyId, utilityCompanyId) || other.utilityCompanyId == utilityCompanyId)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,telcoName,utilityCompanyId,consumerNumber,consumerName);

@override
String toString() {
  return 'TopupInquiryDataDto(telcoName: $telcoName, utilityCompanyId: $utilityCompanyId, consumerNumber: $consumerNumber, consumerName: $consumerName)';
}


}

/// @nodoc
abstract mixin class _$TopupInquiryDataDtoCopyWith<$Res> implements $TopupInquiryDataDtoCopyWith<$Res> {
  factory _$TopupInquiryDataDtoCopyWith(_TopupInquiryDataDto value, $Res Function(_TopupInquiryDataDto) _then) = __$TopupInquiryDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? telcoName, String? utilityCompanyId, String? consumerNumber, String? consumerName
});




}
/// @nodoc
class __$TopupInquiryDataDtoCopyWithImpl<$Res>
    implements _$TopupInquiryDataDtoCopyWith<$Res> {
  __$TopupInquiryDataDtoCopyWithImpl(this._self, this._then);

  final _TopupInquiryDataDto _self;
  final $Res Function(_TopupInquiryDataDto) _then;

/// Create a copy of TopupInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? telcoName = freezed,Object? utilityCompanyId = freezed,Object? consumerNumber = freezed,Object? consumerName = freezed,}) {
  return _then(_TopupInquiryDataDto(
telcoName: freezed == telcoName ? _self.telcoName : telcoName // ignore: cast_nullable_to_non_nullable
as String?,utilityCompanyId: freezed == utilityCompanyId ? _self.utilityCompanyId : utilityCompanyId // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,consumerName: freezed == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
