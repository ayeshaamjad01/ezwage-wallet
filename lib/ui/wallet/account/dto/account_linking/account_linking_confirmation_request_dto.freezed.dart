// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_linking_confirmation_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountLinkingConfirmationRequestDto {

 String get mobileNo; String get cnic; String get otp; String get verificationToken; Map get extInfo;
/// Create a copy of AccountLinkingConfirmationRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountLinkingConfirmationRequestDtoCopyWith<AccountLinkingConfirmationRequestDto> get copyWith => _$AccountLinkingConfirmationRequestDtoCopyWithImpl<AccountLinkingConfirmationRequestDto>(this as AccountLinkingConfirmationRequestDto, _$identity);

  /// Serializes this AccountLinkingConfirmationRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountLinkingConfirmationRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,cnic,otp,verificationToken,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'AccountLinkingConfirmationRequestDto(mobileNo: $mobileNo, cnic: $cnic, otp: $otp, verificationToken: $verificationToken, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $AccountLinkingConfirmationRequestDtoCopyWith<$Res>  {
  factory $AccountLinkingConfirmationRequestDtoCopyWith(AccountLinkingConfirmationRequestDto value, $Res Function(AccountLinkingConfirmationRequestDto) _then) = _$AccountLinkingConfirmationRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobileNo, String cnic, String otp, String verificationToken, Map extInfo
});




}
/// @nodoc
class _$AccountLinkingConfirmationRequestDtoCopyWithImpl<$Res>
    implements $AccountLinkingConfirmationRequestDtoCopyWith<$Res> {
  _$AccountLinkingConfirmationRequestDtoCopyWithImpl(this._self, this._then);

  final AccountLinkingConfirmationRequestDto _self;
  final $Res Function(AccountLinkingConfirmationRequestDto) _then;

/// Create a copy of AccountLinkingConfirmationRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNo = null,Object? cnic = null,Object? otp = null,Object? verificationToken = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,cnic: null == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountLinkingConfirmationRequestDto].
extension AccountLinkingConfirmationRequestDtoPatterns on AccountLinkingConfirmationRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountLinkingConfirmationRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountLinkingConfirmationRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountLinkingConfirmationRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _AccountLinkingConfirmationRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountLinkingConfirmationRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _AccountLinkingConfirmationRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileNo,  String cnic,  String otp,  String verificationToken,  Map extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountLinkingConfirmationRequestDto() when $default != null:
return $default(_that.mobileNo,_that.cnic,_that.otp,_that.verificationToken,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileNo,  String cnic,  String otp,  String verificationToken,  Map extInfo)  $default,) {final _that = this;
switch (_that) {
case _AccountLinkingConfirmationRequestDto():
return $default(_that.mobileNo,_that.cnic,_that.otp,_that.verificationToken,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileNo,  String cnic,  String otp,  String verificationToken,  Map extInfo)?  $default,) {final _that = this;
switch (_that) {
case _AccountLinkingConfirmationRequestDto() when $default != null:
return $default(_that.mobileNo,_that.cnic,_that.otp,_that.verificationToken,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountLinkingConfirmationRequestDto implements AccountLinkingConfirmationRequestDto {
  const _AccountLinkingConfirmationRequestDto({required this.mobileNo, required this.cnic, required this.otp, required this.verificationToken, final  Map extInfo = const {}}): _extInfo = extInfo;
  factory _AccountLinkingConfirmationRequestDto.fromJson(Map<String, dynamic> json) => _$AccountLinkingConfirmationRequestDtoFromJson(json);

@override final  String mobileNo;
@override final  String cnic;
@override final  String otp;
@override final  String verificationToken;
 final  Map _extInfo;
@override@JsonKey() Map get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of AccountLinkingConfirmationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountLinkingConfirmationRequestDtoCopyWith<_AccountLinkingConfirmationRequestDto> get copyWith => __$AccountLinkingConfirmationRequestDtoCopyWithImpl<_AccountLinkingConfirmationRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountLinkingConfirmationRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountLinkingConfirmationRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo,cnic,otp,verificationToken,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'AccountLinkingConfirmationRequestDto(mobileNo: $mobileNo, cnic: $cnic, otp: $otp, verificationToken: $verificationToken, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$AccountLinkingConfirmationRequestDtoCopyWith<$Res> implements $AccountLinkingConfirmationRequestDtoCopyWith<$Res> {
  factory _$AccountLinkingConfirmationRequestDtoCopyWith(_AccountLinkingConfirmationRequestDto value, $Res Function(_AccountLinkingConfirmationRequestDto) _then) = __$AccountLinkingConfirmationRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobileNo, String cnic, String otp, String verificationToken, Map extInfo
});




}
/// @nodoc
class __$AccountLinkingConfirmationRequestDtoCopyWithImpl<$Res>
    implements _$AccountLinkingConfirmationRequestDtoCopyWith<$Res> {
  __$AccountLinkingConfirmationRequestDtoCopyWithImpl(this._self, this._then);

  final _AccountLinkingConfirmationRequestDto _self;
  final $Res Function(_AccountLinkingConfirmationRequestDto) _then;

/// Create a copy of AccountLinkingConfirmationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNo = null,Object? cnic = null,Object? otp = null,Object? verificationToken = null,Object? extInfo = null,}) {
  return _then(_AccountLinkingConfirmationRequestDto(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,cnic: null == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map,
  ));
}


}

// dart format on
