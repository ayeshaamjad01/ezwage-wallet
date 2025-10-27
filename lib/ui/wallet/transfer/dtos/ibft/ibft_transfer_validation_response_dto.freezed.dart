// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibft_transfer_validation_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IbftTransferValidationResponseDto {

 VerificationMethod get verificationMethod;@JsonKey(name: "data") IbftTransferValidationResponseDtoData get data;
/// Create a copy of IbftTransferValidationResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftTransferValidationResponseDtoCopyWith<IbftTransferValidationResponseDto> get copyWith => _$IbftTransferValidationResponseDtoCopyWithImpl<IbftTransferValidationResponseDto>(this as IbftTransferValidationResponseDto, _$identity);

  /// Serializes this IbftTransferValidationResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftTransferValidationResponseDto&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationMethod,data);

@override
String toString() {
  return 'IbftTransferValidationResponseDto(verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class $IbftTransferValidationResponseDtoCopyWith<$Res>  {
  factory $IbftTransferValidationResponseDtoCopyWith(IbftTransferValidationResponseDto value, $Res Function(IbftTransferValidationResponseDto) _then) = _$IbftTransferValidationResponseDtoCopyWithImpl;
@useResult
$Res call({
 VerificationMethod verificationMethod,@JsonKey(name: "data") IbftTransferValidationResponseDtoData data
});


$IbftTransferValidationResponseDtoDataCopyWith<$Res> get data;

}
/// @nodoc
class _$IbftTransferValidationResponseDtoCopyWithImpl<$Res>
    implements $IbftTransferValidationResponseDtoCopyWith<$Res> {
  _$IbftTransferValidationResponseDtoCopyWithImpl(this._self, this._then);

  final IbftTransferValidationResponseDto _self;
  final $Res Function(IbftTransferValidationResponseDto) _then;

/// Create a copy of IbftTransferValidationResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationMethod = null,Object? data = null,}) {
  return _then(_self.copyWith(
verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IbftTransferValidationResponseDtoData,
  ));
}
/// Create a copy of IbftTransferValidationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IbftTransferValidationResponseDtoDataCopyWith<$Res> get data {
  
  return $IbftTransferValidationResponseDtoDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [IbftTransferValidationResponseDto].
extension IbftTransferValidationResponseDtoPatterns on IbftTransferValidationResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftTransferValidationResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftTransferValidationResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftTransferValidationResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VerificationMethod verificationMethod, @JsonKey(name: "data")  IbftTransferValidationResponseDtoData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDto() when $default != null:
return $default(_that.verificationMethod,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VerificationMethod verificationMethod, @JsonKey(name: "data")  IbftTransferValidationResponseDtoData data)  $default,) {final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDto():
return $default(_that.verificationMethod,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VerificationMethod verificationMethod, @JsonKey(name: "data")  IbftTransferValidationResponseDtoData data)?  $default,) {final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDto() when $default != null:
return $default(_that.verificationMethod,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftTransferValidationResponseDto implements IbftTransferValidationResponseDto {
  const _IbftTransferValidationResponseDto({this.verificationMethod = VerificationMethod.otp, @JsonKey(name: "data") required this.data});
  factory _IbftTransferValidationResponseDto.fromJson(Map<String, dynamic> json) => _$IbftTransferValidationResponseDtoFromJson(json);

@override@JsonKey() final  VerificationMethod verificationMethod;
@override@JsonKey(name: "data") final  IbftTransferValidationResponseDtoData data;

/// Create a copy of IbftTransferValidationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftTransferValidationResponseDtoCopyWith<_IbftTransferValidationResponseDto> get copyWith => __$IbftTransferValidationResponseDtoCopyWithImpl<_IbftTransferValidationResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftTransferValidationResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftTransferValidationResponseDto&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationMethod,data);

@override
String toString() {
  return 'IbftTransferValidationResponseDto(verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class _$IbftTransferValidationResponseDtoCopyWith<$Res> implements $IbftTransferValidationResponseDtoCopyWith<$Res> {
  factory _$IbftTransferValidationResponseDtoCopyWith(_IbftTransferValidationResponseDto value, $Res Function(_IbftTransferValidationResponseDto) _then) = __$IbftTransferValidationResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 VerificationMethod verificationMethod,@JsonKey(name: "data") IbftTransferValidationResponseDtoData data
});


@override $IbftTransferValidationResponseDtoDataCopyWith<$Res> get data;

}
/// @nodoc
class __$IbftTransferValidationResponseDtoCopyWithImpl<$Res>
    implements _$IbftTransferValidationResponseDtoCopyWith<$Res> {
  __$IbftTransferValidationResponseDtoCopyWithImpl(this._self, this._then);

  final _IbftTransferValidationResponseDto _self;
  final $Res Function(_IbftTransferValidationResponseDto) _then;

/// Create a copy of IbftTransferValidationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationMethod = null,Object? data = null,}) {
  return _then(_IbftTransferValidationResponseDto(
verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IbftTransferValidationResponseDtoData,
  ));
}

/// Create a copy of IbftTransferValidationResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IbftTransferValidationResponseDtoDataCopyWith<$Res> get data {
  
  return $IbftTransferValidationResponseDtoDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$IbftTransferValidationResponseDtoData {

 String get mobile; int get userId; AuthMethod get authMethod; String get validationStatus; String get verificationToken; String? get validationMessage;@JsonKey(unknownEnumValue: KYCQuestionType.birthPlace) KYCQuestionType get kycQuestionType; List<String>? get kycAnswerList; String? get validationRefNo;
/// Create a copy of IbftTransferValidationResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftTransferValidationResponseDtoDataCopyWith<IbftTransferValidationResponseDtoData> get copyWith => _$IbftTransferValidationResponseDtoDataCopyWithImpl<IbftTransferValidationResponseDtoData>(this as IbftTransferValidationResponseDtoData, _$identity);

  /// Serializes this IbftTransferValidationResponseDtoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftTransferValidationResponseDtoData&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.authMethod, authMethod) || other.authMethod == authMethod)&&(identical(other.validationStatus, validationStatus) || other.validationStatus == validationStatus)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.validationMessage, validationMessage) || other.validationMessage == validationMessage)&&(identical(other.kycQuestionType, kycQuestionType) || other.kycQuestionType == kycQuestionType)&&const DeepCollectionEquality().equals(other.kycAnswerList, kycAnswerList)&&(identical(other.validationRefNo, validationRefNo) || other.validationRefNo == validationRefNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,userId,authMethod,validationStatus,verificationToken,validationMessage,kycQuestionType,const DeepCollectionEquality().hash(kycAnswerList),validationRefNo);

@override
String toString() {
  return 'IbftTransferValidationResponseDtoData(mobile: $mobile, userId: $userId, authMethod: $authMethod, validationStatus: $validationStatus, verificationToken: $verificationToken, validationMessage: $validationMessage, kycQuestionType: $kycQuestionType, kycAnswerList: $kycAnswerList, validationRefNo: $validationRefNo)';
}


}

/// @nodoc
abstract mixin class $IbftTransferValidationResponseDtoDataCopyWith<$Res>  {
  factory $IbftTransferValidationResponseDtoDataCopyWith(IbftTransferValidationResponseDtoData value, $Res Function(IbftTransferValidationResponseDtoData) _then) = _$IbftTransferValidationResponseDtoDataCopyWithImpl;
@useResult
$Res call({
 String mobile, int userId, AuthMethod authMethod, String validationStatus, String verificationToken, String? validationMessage,@JsonKey(unknownEnumValue: KYCQuestionType.birthPlace) KYCQuestionType kycQuestionType, List<String>? kycAnswerList, String? validationRefNo
});




}
/// @nodoc
class _$IbftTransferValidationResponseDtoDataCopyWithImpl<$Res>
    implements $IbftTransferValidationResponseDtoDataCopyWith<$Res> {
  _$IbftTransferValidationResponseDtoDataCopyWithImpl(this._self, this._then);

  final IbftTransferValidationResponseDtoData _self;
  final $Res Function(IbftTransferValidationResponseDtoData) _then;

/// Create a copy of IbftTransferValidationResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobile = null,Object? userId = null,Object? authMethod = null,Object? validationStatus = null,Object? verificationToken = null,Object? validationMessage = freezed,Object? kycQuestionType = null,Object? kycAnswerList = freezed,Object? validationRefNo = freezed,}) {
  return _then(_self.copyWith(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,authMethod: null == authMethod ? _self.authMethod : authMethod // ignore: cast_nullable_to_non_nullable
as AuthMethod,validationStatus: null == validationStatus ? _self.validationStatus : validationStatus // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,validationMessage: freezed == validationMessage ? _self.validationMessage : validationMessage // ignore: cast_nullable_to_non_nullable
as String?,kycQuestionType: null == kycQuestionType ? _self.kycQuestionType : kycQuestionType // ignore: cast_nullable_to_non_nullable
as KYCQuestionType,kycAnswerList: freezed == kycAnswerList ? _self.kycAnswerList : kycAnswerList // ignore: cast_nullable_to_non_nullable
as List<String>?,validationRefNo: freezed == validationRefNo ? _self.validationRefNo : validationRefNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IbftTransferValidationResponseDtoData].
extension IbftTransferValidationResponseDtoDataPatterns on IbftTransferValidationResponseDtoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftTransferValidationResponseDtoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDtoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftTransferValidationResponseDtoData value)  $default,){
final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDtoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftTransferValidationResponseDtoData value)?  $default,){
final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDtoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobile,  int userId,  AuthMethod authMethod,  String validationStatus,  String verificationToken,  String? validationMessage, @JsonKey(unknownEnumValue: KYCQuestionType.birthPlace)  KYCQuestionType kycQuestionType,  List<String>? kycAnswerList,  String? validationRefNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDtoData() when $default != null:
return $default(_that.mobile,_that.userId,_that.authMethod,_that.validationStatus,_that.verificationToken,_that.validationMessage,_that.kycQuestionType,_that.kycAnswerList,_that.validationRefNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobile,  int userId,  AuthMethod authMethod,  String validationStatus,  String verificationToken,  String? validationMessage, @JsonKey(unknownEnumValue: KYCQuestionType.birthPlace)  KYCQuestionType kycQuestionType,  List<String>? kycAnswerList,  String? validationRefNo)  $default,) {final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDtoData():
return $default(_that.mobile,_that.userId,_that.authMethod,_that.validationStatus,_that.verificationToken,_that.validationMessage,_that.kycQuestionType,_that.kycAnswerList,_that.validationRefNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobile,  int userId,  AuthMethod authMethod,  String validationStatus,  String verificationToken,  String? validationMessage, @JsonKey(unknownEnumValue: KYCQuestionType.birthPlace)  KYCQuestionType kycQuestionType,  List<String>? kycAnswerList,  String? validationRefNo)?  $default,) {final _that = this;
switch (_that) {
case _IbftTransferValidationResponseDtoData() when $default != null:
return $default(_that.mobile,_that.userId,_that.authMethod,_that.validationStatus,_that.verificationToken,_that.validationMessage,_that.kycQuestionType,_that.kycAnswerList,_that.validationRefNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftTransferValidationResponseDtoData implements IbftTransferValidationResponseDtoData {
  const _IbftTransferValidationResponseDtoData({required this.mobile, required this.userId, required this.authMethod, required this.validationStatus, required this.verificationToken, this.validationMessage, @JsonKey(unknownEnumValue: KYCQuestionType.birthPlace) this.kycQuestionType = KYCQuestionType.birthPlace, final  List<String>? kycAnswerList, this.validationRefNo}): _kycAnswerList = kycAnswerList;
  factory _IbftTransferValidationResponseDtoData.fromJson(Map<String, dynamic> json) => _$IbftTransferValidationResponseDtoDataFromJson(json);

@override final  String mobile;
@override final  int userId;
@override final  AuthMethod authMethod;
@override final  String validationStatus;
@override final  String verificationToken;
@override final  String? validationMessage;
@override@JsonKey(unknownEnumValue: KYCQuestionType.birthPlace) final  KYCQuestionType kycQuestionType;
 final  List<String>? _kycAnswerList;
@override List<String>? get kycAnswerList {
  final value = _kycAnswerList;
  if (value == null) return null;
  if (_kycAnswerList is EqualUnmodifiableListView) return _kycAnswerList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? validationRefNo;

/// Create a copy of IbftTransferValidationResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftTransferValidationResponseDtoDataCopyWith<_IbftTransferValidationResponseDtoData> get copyWith => __$IbftTransferValidationResponseDtoDataCopyWithImpl<_IbftTransferValidationResponseDtoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftTransferValidationResponseDtoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftTransferValidationResponseDtoData&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.authMethod, authMethod) || other.authMethod == authMethod)&&(identical(other.validationStatus, validationStatus) || other.validationStatus == validationStatus)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.validationMessage, validationMessage) || other.validationMessage == validationMessage)&&(identical(other.kycQuestionType, kycQuestionType) || other.kycQuestionType == kycQuestionType)&&const DeepCollectionEquality().equals(other._kycAnswerList, _kycAnswerList)&&(identical(other.validationRefNo, validationRefNo) || other.validationRefNo == validationRefNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,userId,authMethod,validationStatus,verificationToken,validationMessage,kycQuestionType,const DeepCollectionEquality().hash(_kycAnswerList),validationRefNo);

@override
String toString() {
  return 'IbftTransferValidationResponseDtoData(mobile: $mobile, userId: $userId, authMethod: $authMethod, validationStatus: $validationStatus, verificationToken: $verificationToken, validationMessage: $validationMessage, kycQuestionType: $kycQuestionType, kycAnswerList: $kycAnswerList, validationRefNo: $validationRefNo)';
}


}

/// @nodoc
abstract mixin class _$IbftTransferValidationResponseDtoDataCopyWith<$Res> implements $IbftTransferValidationResponseDtoDataCopyWith<$Res> {
  factory _$IbftTransferValidationResponseDtoDataCopyWith(_IbftTransferValidationResponseDtoData value, $Res Function(_IbftTransferValidationResponseDtoData) _then) = __$IbftTransferValidationResponseDtoDataCopyWithImpl;
@override @useResult
$Res call({
 String mobile, int userId, AuthMethod authMethod, String validationStatus, String verificationToken, String? validationMessage,@JsonKey(unknownEnumValue: KYCQuestionType.birthPlace) KYCQuestionType kycQuestionType, List<String>? kycAnswerList, String? validationRefNo
});




}
/// @nodoc
class __$IbftTransferValidationResponseDtoDataCopyWithImpl<$Res>
    implements _$IbftTransferValidationResponseDtoDataCopyWith<$Res> {
  __$IbftTransferValidationResponseDtoDataCopyWithImpl(this._self, this._then);

  final _IbftTransferValidationResponseDtoData _self;
  final $Res Function(_IbftTransferValidationResponseDtoData) _then;

/// Create a copy of IbftTransferValidationResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobile = null,Object? userId = null,Object? authMethod = null,Object? validationStatus = null,Object? verificationToken = null,Object? validationMessage = freezed,Object? kycQuestionType = null,Object? kycAnswerList = freezed,Object? validationRefNo = freezed,}) {
  return _then(_IbftTransferValidationResponseDtoData(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,authMethod: null == authMethod ? _self.authMethod : authMethod // ignore: cast_nullable_to_non_nullable
as AuthMethod,validationStatus: null == validationStatus ? _self.validationStatus : validationStatus // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,validationMessage: freezed == validationMessage ? _self.validationMessage : validationMessage // ignore: cast_nullable_to_non_nullable
as String?,kycQuestionType: null == kycQuestionType ? _self.kycQuestionType : kycQuestionType // ignore: cast_nullable_to_non_nullable
as KYCQuestionType,kycAnswerList: freezed == kycAnswerList ? _self._kycAnswerList : kycAnswerList // ignore: cast_nullable_to_non_nullable
as List<String>?,validationRefNo: freezed == validationRefNo ? _self.validationRefNo : validationRefNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
