// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_credit_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectCreditInquiryResponseDto {

 String? get statusCode; String? get statusMessage; DirectCreditInquiryDataDto? get data; String? get verificationToken; String? get verificationMethod;
/// Create a copy of DirectCreditInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectCreditInquiryResponseDtoCopyWith<DirectCreditInquiryResponseDto> get copyWith => _$DirectCreditInquiryResponseDtoCopyWithImpl<DirectCreditInquiryResponseDto>(this as DirectCreditInquiryResponseDto, _$identity);

  /// Serializes this DirectCreditInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectCreditInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data,verificationToken,verificationMethod);

@override
String toString() {
  return 'DirectCreditInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data, verificationToken: $verificationToken, verificationMethod: $verificationMethod)';
}


}

/// @nodoc
abstract mixin class $DirectCreditInquiryResponseDtoCopyWith<$Res>  {
  factory $DirectCreditInquiryResponseDtoCopyWith(DirectCreditInquiryResponseDto value, $Res Function(DirectCreditInquiryResponseDto) _then) = _$DirectCreditInquiryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? statusCode, String? statusMessage, DirectCreditInquiryDataDto? data, String? verificationToken, String? verificationMethod
});


$DirectCreditInquiryDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$DirectCreditInquiryResponseDtoCopyWithImpl<$Res>
    implements $DirectCreditInquiryResponseDtoCopyWith<$Res> {
  _$DirectCreditInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final DirectCreditInquiryResponseDto _self;
  final $Res Function(DirectCreditInquiryResponseDto) _then;

/// Create a copy of DirectCreditInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,Object? verificationToken = freezed,Object? verificationMethod = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DirectCreditInquiryDataDto?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,verificationMethod: freezed == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DirectCreditInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DirectCreditInquiryDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DirectCreditInquiryDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DirectCreditInquiryResponseDto].
extension DirectCreditInquiryResponseDtoPatterns on DirectCreditInquiryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectCreditInquiryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectCreditInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectCreditInquiryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectCreditInquiryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectCreditInquiryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectCreditInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? statusCode,  String? statusMessage,  DirectCreditInquiryDataDto? data,  String? verificationToken,  String? verificationMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectCreditInquiryResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.verificationToken,_that.verificationMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? statusCode,  String? statusMessage,  DirectCreditInquiryDataDto? data,  String? verificationToken,  String? verificationMethod)  $default,) {final _that = this;
switch (_that) {
case _DirectCreditInquiryResponseDto():
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.verificationToken,_that.verificationMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? statusCode,  String? statusMessage,  DirectCreditInquiryDataDto? data,  String? verificationToken,  String? verificationMethod)?  $default,) {final _that = this;
switch (_that) {
case _DirectCreditInquiryResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.verificationToken,_that.verificationMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectCreditInquiryResponseDto implements DirectCreditInquiryResponseDto {
  const _DirectCreditInquiryResponseDto({required this.statusCode, required this.statusMessage, required this.data, required this.verificationToken, required this.verificationMethod});
  factory _DirectCreditInquiryResponseDto.fromJson(Map<String, dynamic> json) => _$DirectCreditInquiryResponseDtoFromJson(json);

@override final  String? statusCode;
@override final  String? statusMessage;
@override final  DirectCreditInquiryDataDto? data;
@override final  String? verificationToken;
@override final  String? verificationMethod;

/// Create a copy of DirectCreditInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectCreditInquiryResponseDtoCopyWith<_DirectCreditInquiryResponseDto> get copyWith => __$DirectCreditInquiryResponseDtoCopyWithImpl<_DirectCreditInquiryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectCreditInquiryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectCreditInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data,verificationToken,verificationMethod);

@override
String toString() {
  return 'DirectCreditInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data, verificationToken: $verificationToken, verificationMethod: $verificationMethod)';
}


}

/// @nodoc
abstract mixin class _$DirectCreditInquiryResponseDtoCopyWith<$Res> implements $DirectCreditInquiryResponseDtoCopyWith<$Res> {
  factory _$DirectCreditInquiryResponseDtoCopyWith(_DirectCreditInquiryResponseDto value, $Res Function(_DirectCreditInquiryResponseDto) _then) = __$DirectCreditInquiryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? statusCode, String? statusMessage, DirectCreditInquiryDataDto? data, String? verificationToken, String? verificationMethod
});


@override $DirectCreditInquiryDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$DirectCreditInquiryResponseDtoCopyWithImpl<$Res>
    implements _$DirectCreditInquiryResponseDtoCopyWith<$Res> {
  __$DirectCreditInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final _DirectCreditInquiryResponseDto _self;
  final $Res Function(_DirectCreditInquiryResponseDto) _then;

/// Create a copy of DirectCreditInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,Object? verificationToken = freezed,Object? verificationMethod = freezed,}) {
  return _then(_DirectCreditInquiryResponseDto(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DirectCreditInquiryDataDto?,verificationToken: freezed == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String?,verificationMethod: freezed == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DirectCreditInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DirectCreditInquiryDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DirectCreditInquiryDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DirectCreditInquiryDataDto {

 String? get accountStatus; String? get accountTitle; String? get remainingLimit; String? get accountType; Map<String, dynamic> get extInfo;
/// Create a copy of DirectCreditInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectCreditInquiryDataDtoCopyWith<DirectCreditInquiryDataDto> get copyWith => _$DirectCreditInquiryDataDtoCopyWithImpl<DirectCreditInquiryDataDto>(this as DirectCreditInquiryDataDto, _$identity);

  /// Serializes this DirectCreditInquiryDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectCreditInquiryDataDto&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&(identical(other.remainingLimit, remainingLimit) || other.remainingLimit == remainingLimit)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountStatus,accountTitle,remainingLimit,accountType,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'DirectCreditInquiryDataDto(accountStatus: $accountStatus, accountTitle: $accountTitle, remainingLimit: $remainingLimit, accountType: $accountType, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $DirectCreditInquiryDataDtoCopyWith<$Res>  {
  factory $DirectCreditInquiryDataDtoCopyWith(DirectCreditInquiryDataDto value, $Res Function(DirectCreditInquiryDataDto) _then) = _$DirectCreditInquiryDataDtoCopyWithImpl;
@useResult
$Res call({
 String? accountStatus, String? accountTitle, String? remainingLimit, String? accountType, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$DirectCreditInquiryDataDtoCopyWithImpl<$Res>
    implements $DirectCreditInquiryDataDtoCopyWith<$Res> {
  _$DirectCreditInquiryDataDtoCopyWithImpl(this._self, this._then);

  final DirectCreditInquiryDataDto _self;
  final $Res Function(DirectCreditInquiryDataDto) _then;

/// Create a copy of DirectCreditInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountStatus = freezed,Object? accountTitle = freezed,Object? remainingLimit = freezed,Object? accountType = freezed,Object? extInfo = null,}) {
  return _then(_self.copyWith(
accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,accountTitle: freezed == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String?,remainingLimit: freezed == remainingLimit ? _self.remainingLimit : remainingLimit // ignore: cast_nullable_to_non_nullable
as String?,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String?,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectCreditInquiryDataDto].
extension DirectCreditInquiryDataDtoPatterns on DirectCreditInquiryDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectCreditInquiryDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectCreditInquiryDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectCreditInquiryDataDto value)  $default,){
final _that = this;
switch (_that) {
case _DirectCreditInquiryDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectCreditInquiryDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _DirectCreditInquiryDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? accountStatus,  String? accountTitle,  String? remainingLimit,  String? accountType,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectCreditInquiryDataDto() when $default != null:
return $default(_that.accountStatus,_that.accountTitle,_that.remainingLimit,_that.accountType,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? accountStatus,  String? accountTitle,  String? remainingLimit,  String? accountType,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _DirectCreditInquiryDataDto():
return $default(_that.accountStatus,_that.accountTitle,_that.remainingLimit,_that.accountType,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? accountStatus,  String? accountTitle,  String? remainingLimit,  String? accountType,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _DirectCreditInquiryDataDto() when $default != null:
return $default(_that.accountStatus,_that.accountTitle,_that.remainingLimit,_that.accountType,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectCreditInquiryDataDto implements DirectCreditInquiryDataDto {
  const _DirectCreditInquiryDataDto({required this.accountStatus, required this.accountTitle, required this.remainingLimit, required this.accountType, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _DirectCreditInquiryDataDto.fromJson(Map<String, dynamic> json) => _$DirectCreditInquiryDataDtoFromJson(json);

@override final  String? accountStatus;
@override final  String? accountTitle;
@override final  String? remainingLimit;
@override final  String? accountType;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of DirectCreditInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectCreditInquiryDataDtoCopyWith<_DirectCreditInquiryDataDto> get copyWith => __$DirectCreditInquiryDataDtoCopyWithImpl<_DirectCreditInquiryDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectCreditInquiryDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectCreditInquiryDataDto&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&(identical(other.remainingLimit, remainingLimit) || other.remainingLimit == remainingLimit)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountStatus,accountTitle,remainingLimit,accountType,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'DirectCreditInquiryDataDto(accountStatus: $accountStatus, accountTitle: $accountTitle, remainingLimit: $remainingLimit, accountType: $accountType, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$DirectCreditInquiryDataDtoCopyWith<$Res> implements $DirectCreditInquiryDataDtoCopyWith<$Res> {
  factory _$DirectCreditInquiryDataDtoCopyWith(_DirectCreditInquiryDataDto value, $Res Function(_DirectCreditInquiryDataDto) _then) = __$DirectCreditInquiryDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? accountStatus, String? accountTitle, String? remainingLimit, String? accountType, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$DirectCreditInquiryDataDtoCopyWithImpl<$Res>
    implements _$DirectCreditInquiryDataDtoCopyWith<$Res> {
  __$DirectCreditInquiryDataDtoCopyWithImpl(this._self, this._then);

  final _DirectCreditInquiryDataDto _self;
  final $Res Function(_DirectCreditInquiryDataDto) _then;

/// Create a copy of DirectCreditInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountStatus = freezed,Object? accountTitle = freezed,Object? remainingLimit = freezed,Object? accountType = freezed,Object? extInfo = null,}) {
  return _then(_DirectCreditInquiryDataDto(
accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,accountTitle: freezed == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String?,remainingLimit: freezed == remainingLimit ? _self.remainingLimit : remainingLimit // ignore: cast_nullable_to_non_nullable
as String?,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String?,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
