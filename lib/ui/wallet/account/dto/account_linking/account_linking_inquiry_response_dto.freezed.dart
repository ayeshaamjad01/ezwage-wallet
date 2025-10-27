// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_linking_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountLinkingInquiryResponseDto {

 String get mobileNo; String get cnic; String get accountStatus; String get otpRetryLimit; Map get extInfo;
/// Create a copy of AccountLinkingInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountLinkingInquiryResponseDtoCopyWith<AccountLinkingInquiryResponseDto> get copyWith => _$AccountLinkingInquiryResponseDtoCopyWithImpl<AccountLinkingInquiryResponseDto>(this as AccountLinkingInquiryResponseDto, _$identity);

  /// Serializes this AccountLinkingInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountLinkingInquiryResponseDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.otpRetryLimit, otpRetryLimit) || other.otpRetryLimit == otpRetryLimit)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,cnic,accountStatus,otpRetryLimit,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'AccountLinkingInquiryResponseDto(mobileNo: $mobileNo, cnic: $cnic, accountStatus: $accountStatus, otpRetryLimit: $otpRetryLimit, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $AccountLinkingInquiryResponseDtoCopyWith<$Res>  {
  factory $AccountLinkingInquiryResponseDtoCopyWith(AccountLinkingInquiryResponseDto value, $Res Function(AccountLinkingInquiryResponseDto) _then) = _$AccountLinkingInquiryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String mobileNo, String cnic, String accountStatus, String otpRetryLimit, Map extInfo
});




}
/// @nodoc
class _$AccountLinkingInquiryResponseDtoCopyWithImpl<$Res>
    implements $AccountLinkingInquiryResponseDtoCopyWith<$Res> {
  _$AccountLinkingInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final AccountLinkingInquiryResponseDto _self;
  final $Res Function(AccountLinkingInquiryResponseDto) _then;

/// Create a copy of AccountLinkingInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNo = null,Object? cnic = null,Object? accountStatus = null,Object? otpRetryLimit = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,cnic: null == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,otpRetryLimit: null == otpRetryLimit ? _self.otpRetryLimit : otpRetryLimit // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountLinkingInquiryResponseDto].
extension AccountLinkingInquiryResponseDtoPatterns on AccountLinkingInquiryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountLinkingInquiryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountLinkingInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountLinkingInquiryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AccountLinkingInquiryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountLinkingInquiryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AccountLinkingInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileNo,  String cnic,  String accountStatus,  String otpRetryLimit,  Map extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountLinkingInquiryResponseDto() when $default != null:
return $default(_that.mobileNo,_that.cnic,_that.accountStatus,_that.otpRetryLimit,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileNo,  String cnic,  String accountStatus,  String otpRetryLimit,  Map extInfo)  $default,) {final _that = this;
switch (_that) {
case _AccountLinkingInquiryResponseDto():
return $default(_that.mobileNo,_that.cnic,_that.accountStatus,_that.otpRetryLimit,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileNo,  String cnic,  String accountStatus,  String otpRetryLimit,  Map extInfo)?  $default,) {final _that = this;
switch (_that) {
case _AccountLinkingInquiryResponseDto() when $default != null:
return $default(_that.mobileNo,_that.cnic,_that.accountStatus,_that.otpRetryLimit,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountLinkingInquiryResponseDto implements AccountLinkingInquiryResponseDto {
  const _AccountLinkingInquiryResponseDto({required this.mobileNo, required this.cnic, required this.accountStatus, this.otpRetryLimit = "0", final  Map extInfo = const {}}): _extInfo = extInfo;
  factory _AccountLinkingInquiryResponseDto.fromJson(Map<String, dynamic> json) => _$AccountLinkingInquiryResponseDtoFromJson(json);

@override final  String mobileNo;
@override final  String cnic;
@override final  String accountStatus;
@override@JsonKey() final  String otpRetryLimit;
 final  Map _extInfo;
@override@JsonKey() Map get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of AccountLinkingInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountLinkingInquiryResponseDtoCopyWith<_AccountLinkingInquiryResponseDto> get copyWith => __$AccountLinkingInquiryResponseDtoCopyWithImpl<_AccountLinkingInquiryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountLinkingInquiryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountLinkingInquiryResponseDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.otpRetryLimit, otpRetryLimit) || other.otpRetryLimit == otpRetryLimit)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,cnic,accountStatus,otpRetryLimit,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'AccountLinkingInquiryResponseDto(mobileNo: $mobileNo, cnic: $cnic, accountStatus: $accountStatus, otpRetryLimit: $otpRetryLimit, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$AccountLinkingInquiryResponseDtoCopyWith<$Res> implements $AccountLinkingInquiryResponseDtoCopyWith<$Res> {
  factory _$AccountLinkingInquiryResponseDtoCopyWith(_AccountLinkingInquiryResponseDto value, $Res Function(_AccountLinkingInquiryResponseDto) _then) = __$AccountLinkingInquiryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobileNo, String cnic, String accountStatus, String otpRetryLimit, Map extInfo
});




}
/// @nodoc
class __$AccountLinkingInquiryResponseDtoCopyWithImpl<$Res>
    implements _$AccountLinkingInquiryResponseDtoCopyWith<$Res> {
  __$AccountLinkingInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final _AccountLinkingInquiryResponseDto _self;
  final $Res Function(_AccountLinkingInquiryResponseDto) _then;

/// Create a copy of AccountLinkingInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNo = null,Object? cnic = null,Object? accountStatus = null,Object? otpRetryLimit = null,Object? extInfo = null,}) {
  return _then(_AccountLinkingInquiryResponseDto(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,cnic: null == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,otpRetryLimit: null == otpRetryLimit ? _self.otpRetryLimit : otpRetryLimit // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}


}

// dart format on
