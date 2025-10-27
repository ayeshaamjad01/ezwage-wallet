// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_account_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckAccountResponseDto {

 String get statusCode; String get statusMessage; CheckAccountData get data;
/// Create a copy of CheckAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckAccountResponseDtoCopyWith<CheckAccountResponseDto> get copyWith => _$CheckAccountResponseDtoCopyWithImpl<CheckAccountResponseDto>(this as CheckAccountResponseDto, _$identity);

  /// Serializes this CheckAccountResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAccountResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'CheckAccountResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $CheckAccountResponseDtoCopyWith<$Res>  {
  factory $CheckAccountResponseDtoCopyWith(CheckAccountResponseDto value, $Res Function(CheckAccountResponseDto) _then) = _$CheckAccountResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, CheckAccountData data
});


$CheckAccountDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CheckAccountResponseDtoCopyWithImpl<$Res>
    implements $CheckAccountResponseDtoCopyWith<$Res> {
  _$CheckAccountResponseDtoCopyWithImpl(this._self, this._then);

  final CheckAccountResponseDto _self;
  final $Res Function(CheckAccountResponseDto) _then;

/// Create a copy of CheckAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckAccountData,
  ));
}
/// Create a copy of CheckAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckAccountDataCopyWith<$Res> get data {
  
  return $CheckAccountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckAccountResponseDto].
extension CheckAccountResponseDtoPatterns on CheckAccountResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckAccountResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckAccountResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CheckAccountResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckAccountResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CheckAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  CheckAccountData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  CheckAccountData data)  $default,) {final _that = this;
switch (_that) {
case _CheckAccountResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  CheckAccountData data)?  $default,) {final _that = this;
switch (_that) {
case _CheckAccountResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckAccountResponseDto implements CheckAccountResponseDto {
  const _CheckAccountResponseDto({required this.statusCode, required this.statusMessage, required this.data});
  factory _CheckAccountResponseDto.fromJson(Map<String, dynamic> json) => _$CheckAccountResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
@override final  CheckAccountData data;

/// Create a copy of CheckAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckAccountResponseDtoCopyWith<_CheckAccountResponseDto> get copyWith => __$CheckAccountResponseDtoCopyWithImpl<_CheckAccountResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckAccountResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAccountResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,data);

@override
String toString() {
  return 'CheckAccountResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CheckAccountResponseDtoCopyWith<$Res> implements $CheckAccountResponseDtoCopyWith<$Res> {
  factory _$CheckAccountResponseDtoCopyWith(_CheckAccountResponseDto value, $Res Function(_CheckAccountResponseDto) _then) = __$CheckAccountResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, CheckAccountData data
});


@override $CheckAccountDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CheckAccountResponseDtoCopyWithImpl<$Res>
    implements _$CheckAccountResponseDtoCopyWith<$Res> {
  __$CheckAccountResponseDtoCopyWithImpl(this._self, this._then);

  final _CheckAccountResponseDto _self;
  final $Res Function(_CheckAccountResponseDto) _then;

/// Create a copy of CheckAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_CheckAccountResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckAccountData,
  ));
}

/// Create a copy of CheckAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckAccountDataCopyWith<$Res> get data {
  
  return $CheckAccountDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CheckAccountData {

 String get accountStatus; String get verificationToken; List<String> get motherNameList; List<String> get birthPlaceList; int? get remainingLovs;
/// Create a copy of CheckAccountData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckAccountDataCopyWith<CheckAccountData> get copyWith => _$CheckAccountDataCopyWithImpl<CheckAccountData>(this as CheckAccountData, _$identity);

  /// Serializes this CheckAccountData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAccountData&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&const DeepCollectionEquality().equals(other.motherNameList, motherNameList)&&const DeepCollectionEquality().equals(other.birthPlaceList, birthPlaceList)&&(identical(other.remainingLovs, remainingLovs) || other.remainingLovs == remainingLovs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountStatus,verificationToken,const DeepCollectionEquality().hash(motherNameList),const DeepCollectionEquality().hash(birthPlaceList),remainingLovs);

@override
String toString() {
  return 'CheckAccountData(accountStatus: $accountStatus, verificationToken: $verificationToken, motherNameList: $motherNameList, birthPlaceList: $birthPlaceList, remainingLovs: $remainingLovs)';
}


}

/// @nodoc
abstract mixin class $CheckAccountDataCopyWith<$Res>  {
  factory $CheckAccountDataCopyWith(CheckAccountData value, $Res Function(CheckAccountData) _then) = _$CheckAccountDataCopyWithImpl;
@useResult
$Res call({
 String accountStatus, String verificationToken, List<String> motherNameList, List<String> birthPlaceList, int? remainingLovs
});




}
/// @nodoc
class _$CheckAccountDataCopyWithImpl<$Res>
    implements $CheckAccountDataCopyWith<$Res> {
  _$CheckAccountDataCopyWithImpl(this._self, this._then);

  final CheckAccountData _self;
  final $Res Function(CheckAccountData) _then;

/// Create a copy of CheckAccountData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountStatus = null,Object? verificationToken = null,Object? motherNameList = null,Object? birthPlaceList = null,Object? remainingLovs = freezed,}) {
  return _then(_self.copyWith(
accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,motherNameList: null == motherNameList ? _self.motherNameList : motherNameList // ignore: cast_nullable_to_non_nullable
as List<String>,birthPlaceList: null == birthPlaceList ? _self.birthPlaceList : birthPlaceList // ignore: cast_nullable_to_non_nullable
as List<String>,remainingLovs: freezed == remainingLovs ? _self.remainingLovs : remainingLovs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckAccountData].
extension CheckAccountDataPatterns on CheckAccountData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckAccountData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckAccountData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckAccountData value)  $default,){
final _that = this;
switch (_that) {
case _CheckAccountData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckAccountData value)?  $default,){
final _that = this;
switch (_that) {
case _CheckAccountData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accountStatus,  String verificationToken,  List<String> motherNameList,  List<String> birthPlaceList,  int? remainingLovs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckAccountData() when $default != null:
return $default(_that.accountStatus,_that.verificationToken,_that.motherNameList,_that.birthPlaceList,_that.remainingLovs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accountStatus,  String verificationToken,  List<String> motherNameList,  List<String> birthPlaceList,  int? remainingLovs)  $default,) {final _that = this;
switch (_that) {
case _CheckAccountData():
return $default(_that.accountStatus,_that.verificationToken,_that.motherNameList,_that.birthPlaceList,_that.remainingLovs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accountStatus,  String verificationToken,  List<String> motherNameList,  List<String> birthPlaceList,  int? remainingLovs)?  $default,) {final _that = this;
switch (_that) {
case _CheckAccountData() when $default != null:
return $default(_that.accountStatus,_that.verificationToken,_that.motherNameList,_that.birthPlaceList,_that.remainingLovs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckAccountData implements CheckAccountData {
  const _CheckAccountData({required this.accountStatus, required this.verificationToken, final  List<String> motherNameList = const [], final  List<String> birthPlaceList = const [], this.remainingLovs}): _motherNameList = motherNameList,_birthPlaceList = birthPlaceList;
  factory _CheckAccountData.fromJson(Map<String, dynamic> json) => _$CheckAccountDataFromJson(json);

@override final  String accountStatus;
@override final  String verificationToken;
 final  List<String> _motherNameList;
@override@JsonKey() List<String> get motherNameList {
  if (_motherNameList is EqualUnmodifiableListView) return _motherNameList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_motherNameList);
}

 final  List<String> _birthPlaceList;
@override@JsonKey() List<String> get birthPlaceList {
  if (_birthPlaceList is EqualUnmodifiableListView) return _birthPlaceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_birthPlaceList);
}

@override final  int? remainingLovs;

/// Create a copy of CheckAccountData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckAccountDataCopyWith<_CheckAccountData> get copyWith => __$CheckAccountDataCopyWithImpl<_CheckAccountData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckAccountDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAccountData&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&const DeepCollectionEquality().equals(other._motherNameList, _motherNameList)&&const DeepCollectionEquality().equals(other._birthPlaceList, _birthPlaceList)&&(identical(other.remainingLovs, remainingLovs) || other.remainingLovs == remainingLovs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountStatus,verificationToken,const DeepCollectionEquality().hash(_motherNameList),const DeepCollectionEquality().hash(_birthPlaceList),remainingLovs);

@override
String toString() {
  return 'CheckAccountData(accountStatus: $accountStatus, verificationToken: $verificationToken, motherNameList: $motherNameList, birthPlaceList: $birthPlaceList, remainingLovs: $remainingLovs)';
}


}

/// @nodoc
abstract mixin class _$CheckAccountDataCopyWith<$Res> implements $CheckAccountDataCopyWith<$Res> {
  factory _$CheckAccountDataCopyWith(_CheckAccountData value, $Res Function(_CheckAccountData) _then) = __$CheckAccountDataCopyWithImpl;
@override @useResult
$Res call({
 String accountStatus, String verificationToken, List<String> motherNameList, List<String> birthPlaceList, int? remainingLovs
});




}
/// @nodoc
class __$CheckAccountDataCopyWithImpl<$Res>
    implements _$CheckAccountDataCopyWith<$Res> {
  __$CheckAccountDataCopyWithImpl(this._self, this._then);

  final _CheckAccountData _self;
  final $Res Function(_CheckAccountData) _then;

/// Create a copy of CheckAccountData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountStatus = null,Object? verificationToken = null,Object? motherNameList = null,Object? birthPlaceList = null,Object? remainingLovs = freezed,}) {
  return _then(_CheckAccountData(
accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,motherNameList: null == motherNameList ? _self._motherNameList : motherNameList // ignore: cast_nullable_to_non_nullable
as List<String>,birthPlaceList: null == birthPlaceList ? _self._birthPlaceList : birthPlaceList // ignore: cast_nullable_to_non_nullable
as List<String>,remainingLovs: freezed == remainingLovs ? _self.remainingLovs : remainingLovs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
