// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileModel {

 int? get customerId; String? get accountTitle; String? get email; String? get mobileNo; String? get cnic; String? get currentAddress; String? get permanentAddress; String? get iban; String? get accountBalance; String? get accountStatus; String? get accountType; String? get gender; Map<String, dynamic>? get extInfo;
/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<UserProfileModel> get copyWith => _$UserProfileModelCopyWithImpl<UserProfileModel>(this as UserProfileModel, _$identity);

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.permanentAddress, permanentAddress) || other.permanentAddress == permanentAddress)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.accountBalance, accountBalance) || other.accountBalance == accountBalance)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,accountTitle,email,mobileNo,cnic,currentAddress,permanentAddress,iban,accountBalance,accountStatus,accountType,gender,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'UserProfileModel(customerId: $customerId, accountTitle: $accountTitle, email: $email, mobileNo: $mobileNo, cnic: $cnic, currentAddress: $currentAddress, permanentAddress: $permanentAddress, iban: $iban, accountBalance: $accountBalance, accountStatus: $accountStatus, accountType: $accountType, gender: $gender, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $UserProfileModelCopyWith<$Res>  {
  factory $UserProfileModelCopyWith(UserProfileModel value, $Res Function(UserProfileModel) _then) = _$UserProfileModelCopyWithImpl;
@useResult
$Res call({
 int? customerId, String? accountTitle, String? email, String? mobileNo, String? cnic, String? currentAddress, String? permanentAddress, String? iban, String? accountBalance, String? accountStatus, String? accountType, String? gender, Map<String, dynamic>? extInfo
});




}
/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._self, this._then);

  final UserProfileModel _self;
  final $Res Function(UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = freezed,Object? accountTitle = freezed,Object? email = freezed,Object? mobileNo = freezed,Object? cnic = freezed,Object? currentAddress = freezed,Object? permanentAddress = freezed,Object? iban = freezed,Object? accountBalance = freezed,Object? accountStatus = freezed,Object? accountType = freezed,Object? gender = freezed,Object? extInfo = freezed,}) {
  return _then(_self.copyWith(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,accountTitle: freezed == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,permanentAddress: freezed == permanentAddress ? _self.permanentAddress : permanentAddress // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,accountBalance: freezed == accountBalance ? _self.accountBalance : accountBalance // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,extInfo: freezed == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileModel].
extension UserProfileModelPatterns on UserProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? customerId,  String? accountTitle,  String? email,  String? mobileNo,  String? cnic,  String? currentAddress,  String? permanentAddress,  String? iban,  String? accountBalance,  String? accountStatus,  String? accountType,  String? gender,  Map<String, dynamic>? extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.customerId,_that.accountTitle,_that.email,_that.mobileNo,_that.cnic,_that.currentAddress,_that.permanentAddress,_that.iban,_that.accountBalance,_that.accountStatus,_that.accountType,_that.gender,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? customerId,  String? accountTitle,  String? email,  String? mobileNo,  String? cnic,  String? currentAddress,  String? permanentAddress,  String? iban,  String? accountBalance,  String? accountStatus,  String? accountType,  String? gender,  Map<String, dynamic>? extInfo)  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel():
return $default(_that.customerId,_that.accountTitle,_that.email,_that.mobileNo,_that.cnic,_that.currentAddress,_that.permanentAddress,_that.iban,_that.accountBalance,_that.accountStatus,_that.accountType,_that.gender,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? customerId,  String? accountTitle,  String? email,  String? mobileNo,  String? cnic,  String? currentAddress,  String? permanentAddress,  String? iban,  String? accountBalance,  String? accountStatus,  String? accountType,  String? gender,  Map<String, dynamic>? extInfo)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.customerId,_that.accountTitle,_that.email,_that.mobileNo,_that.cnic,_that.currentAddress,_that.permanentAddress,_that.iban,_that.accountBalance,_that.accountStatus,_that.accountType,_that.gender,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileModel implements UserProfileModel {
  const _UserProfileModel({this.customerId, this.accountTitle, this.email, this.mobileNo, this.cnic, this.currentAddress, this.permanentAddress, this.iban, this.accountBalance, this.accountStatus, this.accountType, this.gender, final  Map<String, dynamic>? extInfo}): _extInfo = extInfo;
  factory _UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);

@override final  int? customerId;
@override final  String? accountTitle;
@override final  String? email;
@override final  String? mobileNo;
@override final  String? cnic;
@override final  String? currentAddress;
@override final  String? permanentAddress;
@override final  String? iban;
@override final  String? accountBalance;
@override final  String? accountStatus;
@override final  String? accountType;
@override final  String? gender;
 final  Map<String, dynamic>? _extInfo;
@override Map<String, dynamic>? get extInfo {
  final value = _extInfo;
  if (value == null) return null;
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileModelCopyWith<_UserProfileModel> get copyWith => __$UserProfileModelCopyWithImpl<_UserProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.permanentAddress, permanentAddress) || other.permanentAddress == permanentAddress)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.accountBalance, accountBalance) || other.accountBalance == accountBalance)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,accountTitle,email,mobileNo,cnic,currentAddress,permanentAddress,iban,accountBalance,accountStatus,accountType,gender,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'UserProfileModel(customerId: $customerId, accountTitle: $accountTitle, email: $email, mobileNo: $mobileNo, cnic: $cnic, currentAddress: $currentAddress, permanentAddress: $permanentAddress, iban: $iban, accountBalance: $accountBalance, accountStatus: $accountStatus, accountType: $accountType, gender: $gender, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$UserProfileModelCopyWith<$Res> implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(_UserProfileModel value, $Res Function(_UserProfileModel) _then) = __$UserProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int? customerId, String? accountTitle, String? email, String? mobileNo, String? cnic, String? currentAddress, String? permanentAddress, String? iban, String? accountBalance, String? accountStatus, String? accountType, String? gender, Map<String, dynamic>? extInfo
});




}
/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(this._self, this._then);

  final _UserProfileModel _self;
  final $Res Function(_UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = freezed,Object? accountTitle = freezed,Object? email = freezed,Object? mobileNo = freezed,Object? cnic = freezed,Object? currentAddress = freezed,Object? permanentAddress = freezed,Object? iban = freezed,Object? accountBalance = freezed,Object? accountStatus = freezed,Object? accountType = freezed,Object? gender = freezed,Object? extInfo = freezed,}) {
  return _then(_UserProfileModel(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,accountTitle: freezed == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,permanentAddress: freezed == permanentAddress ? _self.permanentAddress : permanentAddress // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,accountBalance: freezed == accountBalance ? _self.accountBalance : accountBalance // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,extInfo: freezed == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
