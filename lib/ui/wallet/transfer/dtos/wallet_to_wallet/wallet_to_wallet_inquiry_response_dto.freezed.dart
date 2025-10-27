// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_to_wallet_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletToWalletInquiryResponseDto {

 String get verificationToken; VerificationMethod get verificationMethod;@JsonKey(name: "data") WalletToWalletInquiryResponseDtoData get data;
/// Create a copy of WalletToWalletInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletToWalletInquiryResponseDtoCopyWith<WalletToWalletInquiryResponseDto> get copyWith => _$WalletToWalletInquiryResponseDtoCopyWithImpl<WalletToWalletInquiryResponseDto>(this as WalletToWalletInquiryResponseDto, _$identity);

  /// Serializes this WalletToWalletInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletToWalletInquiryResponseDto&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'WalletToWalletInquiryResponseDto(verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class $WalletToWalletInquiryResponseDtoCopyWith<$Res>  {
  factory $WalletToWalletInquiryResponseDtoCopyWith(WalletToWalletInquiryResponseDto value, $Res Function(WalletToWalletInquiryResponseDto) _then) = _$WalletToWalletInquiryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String verificationToken, VerificationMethod verificationMethod,@JsonKey(name: "data") WalletToWalletInquiryResponseDtoData data
});


$WalletToWalletInquiryResponseDtoDataCopyWith<$Res> get data;

}
/// @nodoc
class _$WalletToWalletInquiryResponseDtoCopyWithImpl<$Res>
    implements $WalletToWalletInquiryResponseDtoCopyWith<$Res> {
  _$WalletToWalletInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final WalletToWalletInquiryResponseDto _self;
  final $Res Function(WalletToWalletInquiryResponseDto) _then;

/// Create a copy of WalletToWalletInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationToken = null,Object? verificationMethod = null,Object? data = null,}) {
  return _then(_self.copyWith(
verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WalletToWalletInquiryResponseDtoData,
  ));
}
/// Create a copy of WalletToWalletInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletToWalletInquiryResponseDtoDataCopyWith<$Res> get data {
  
  return $WalletToWalletInquiryResponseDtoDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletToWalletInquiryResponseDto].
extension WalletToWalletInquiryResponseDtoPatterns on WalletToWalletInquiryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletToWalletInquiryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletToWalletInquiryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletToWalletInquiryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String verificationToken,  VerificationMethod verificationMethod, @JsonKey(name: "data")  WalletToWalletInquiryResponseDtoData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDto() when $default != null:
return $default(_that.verificationToken,_that.verificationMethod,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String verificationToken,  VerificationMethod verificationMethod, @JsonKey(name: "data")  WalletToWalletInquiryResponseDtoData data)  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDto():
return $default(_that.verificationToken,_that.verificationMethod,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String verificationToken,  VerificationMethod verificationMethod, @JsonKey(name: "data")  WalletToWalletInquiryResponseDtoData data)?  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDto() when $default != null:
return $default(_that.verificationToken,_that.verificationMethod,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletToWalletInquiryResponseDto implements WalletToWalletInquiryResponseDto {
  const _WalletToWalletInquiryResponseDto({required this.verificationToken, this.verificationMethod = VerificationMethod.otp, @JsonKey(name: "data") required this.data});
  factory _WalletToWalletInquiryResponseDto.fromJson(Map<String, dynamic> json) => _$WalletToWalletInquiryResponseDtoFromJson(json);

@override final  String verificationToken;
@override@JsonKey() final  VerificationMethod verificationMethod;
@override@JsonKey(name: "data") final  WalletToWalletInquiryResponseDtoData data;

/// Create a copy of WalletToWalletInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletToWalletInquiryResponseDtoCopyWith<_WalletToWalletInquiryResponseDto> get copyWith => __$WalletToWalletInquiryResponseDtoCopyWithImpl<_WalletToWalletInquiryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletToWalletInquiryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletToWalletInquiryResponseDto&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'WalletToWalletInquiryResponseDto(verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class _$WalletToWalletInquiryResponseDtoCopyWith<$Res> implements $WalletToWalletInquiryResponseDtoCopyWith<$Res> {
  factory _$WalletToWalletInquiryResponseDtoCopyWith(_WalletToWalletInquiryResponseDto value, $Res Function(_WalletToWalletInquiryResponseDto) _then) = __$WalletToWalletInquiryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String verificationToken, VerificationMethod verificationMethod,@JsonKey(name: "data") WalletToWalletInquiryResponseDtoData data
});


@override $WalletToWalletInquiryResponseDtoDataCopyWith<$Res> get data;

}
/// @nodoc
class __$WalletToWalletInquiryResponseDtoCopyWithImpl<$Res>
    implements _$WalletToWalletInquiryResponseDtoCopyWith<$Res> {
  __$WalletToWalletInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final _WalletToWalletInquiryResponseDto _self;
  final $Res Function(_WalletToWalletInquiryResponseDto) _then;

/// Create a copy of WalletToWalletInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationToken = null,Object? verificationMethod = null,Object? data = null,}) {
  return _then(_WalletToWalletInquiryResponseDto(
verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WalletToWalletInquiryResponseDtoData,
  ));
}

/// Create a copy of WalletToWalletInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletToWalletInquiryResponseDtoDataCopyWith<$Res> get data {
  
  return $WalletToWalletInquiryResponseDtoDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$WalletToWalletInquiryResponseDtoData {

 int get taxAndFee; String get mobileNo; int get customerId;@JsonKey(name: "accounttitle") String get accountTitle; Map<String, dynamic> get extInfo;
/// Create a copy of WalletToWalletInquiryResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletToWalletInquiryResponseDtoDataCopyWith<WalletToWalletInquiryResponseDtoData> get copyWith => _$WalletToWalletInquiryResponseDtoDataCopyWithImpl<WalletToWalletInquiryResponseDtoData>(this as WalletToWalletInquiryResponseDtoData, _$identity);

  /// Serializes this WalletToWalletInquiryResponseDtoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletToWalletInquiryResponseDtoData&&(identical(other.taxAndFee, taxAndFee) || other.taxAndFee == taxAndFee)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxAndFee,mobileNo,customerId,accountTitle,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'WalletToWalletInquiryResponseDtoData(taxAndFee: $taxAndFee, mobileNo: $mobileNo, customerId: $customerId, accountTitle: $accountTitle, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $WalletToWalletInquiryResponseDtoDataCopyWith<$Res>  {
  factory $WalletToWalletInquiryResponseDtoDataCopyWith(WalletToWalletInquiryResponseDtoData value, $Res Function(WalletToWalletInquiryResponseDtoData) _then) = _$WalletToWalletInquiryResponseDtoDataCopyWithImpl;
@useResult
$Res call({
 int taxAndFee, String mobileNo, int customerId,@JsonKey(name: "accounttitle") String accountTitle, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$WalletToWalletInquiryResponseDtoDataCopyWithImpl<$Res>
    implements $WalletToWalletInquiryResponseDtoDataCopyWith<$Res> {
  _$WalletToWalletInquiryResponseDtoDataCopyWithImpl(this._self, this._then);

  final WalletToWalletInquiryResponseDtoData _self;
  final $Res Function(WalletToWalletInquiryResponseDtoData) _then;

/// Create a copy of WalletToWalletInquiryResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taxAndFee = null,Object? mobileNo = null,Object? customerId = null,Object? accountTitle = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
taxAndFee: null == taxAndFee ? _self.taxAndFee : taxAndFee // ignore: cast_nullable_to_non_nullable
as int,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,accountTitle: null == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletToWalletInquiryResponseDtoData].
extension WalletToWalletInquiryResponseDtoDataPatterns on WalletToWalletInquiryResponseDtoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletToWalletInquiryResponseDtoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDtoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletToWalletInquiryResponseDtoData value)  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDtoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletToWalletInquiryResponseDtoData value)?  $default,){
final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDtoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int taxAndFee,  String mobileNo,  int customerId, @JsonKey(name: "accounttitle")  String accountTitle,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDtoData() when $default != null:
return $default(_that.taxAndFee,_that.mobileNo,_that.customerId,_that.accountTitle,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int taxAndFee,  String mobileNo,  int customerId, @JsonKey(name: "accounttitle")  String accountTitle,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDtoData():
return $default(_that.taxAndFee,_that.mobileNo,_that.customerId,_that.accountTitle,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int taxAndFee,  String mobileNo,  int customerId, @JsonKey(name: "accounttitle")  String accountTitle,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _WalletToWalletInquiryResponseDtoData() when $default != null:
return $default(_that.taxAndFee,_that.mobileNo,_that.customerId,_that.accountTitle,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletToWalletInquiryResponseDtoData implements WalletToWalletInquiryResponseDtoData {
  const _WalletToWalletInquiryResponseDtoData({required this.taxAndFee, required this.mobileNo, required this.customerId, @JsonKey(name: "accounttitle") required this.accountTitle, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _WalletToWalletInquiryResponseDtoData.fromJson(Map<String, dynamic> json) => _$WalletToWalletInquiryResponseDtoDataFromJson(json);

@override final  int taxAndFee;
@override final  String mobileNo;
@override final  int customerId;
@override@JsonKey(name: "accounttitle") final  String accountTitle;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of WalletToWalletInquiryResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletToWalletInquiryResponseDtoDataCopyWith<_WalletToWalletInquiryResponseDtoData> get copyWith => __$WalletToWalletInquiryResponseDtoDataCopyWithImpl<_WalletToWalletInquiryResponseDtoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletToWalletInquiryResponseDtoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletToWalletInquiryResponseDtoData&&(identical(other.taxAndFee, taxAndFee) || other.taxAndFee == taxAndFee)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxAndFee,mobileNo,customerId,accountTitle,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'WalletToWalletInquiryResponseDtoData(taxAndFee: $taxAndFee, mobileNo: $mobileNo, customerId: $customerId, accountTitle: $accountTitle, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$WalletToWalletInquiryResponseDtoDataCopyWith<$Res> implements $WalletToWalletInquiryResponseDtoDataCopyWith<$Res> {
  factory _$WalletToWalletInquiryResponseDtoDataCopyWith(_WalletToWalletInquiryResponseDtoData value, $Res Function(_WalletToWalletInquiryResponseDtoData) _then) = __$WalletToWalletInquiryResponseDtoDataCopyWithImpl;
@override @useResult
$Res call({
 int taxAndFee, String mobileNo, int customerId,@JsonKey(name: "accounttitle") String accountTitle, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$WalletToWalletInquiryResponseDtoDataCopyWithImpl<$Res>
    implements _$WalletToWalletInquiryResponseDtoDataCopyWith<$Res> {
  __$WalletToWalletInquiryResponseDtoDataCopyWithImpl(this._self, this._then);

  final _WalletToWalletInquiryResponseDtoData _self;
  final $Res Function(_WalletToWalletInquiryResponseDtoData) _then;

/// Create a copy of WalletToWalletInquiryResponseDtoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taxAndFee = null,Object? mobileNo = null,Object? customerId = null,Object? accountTitle = null,Object? extInfo = null,}) {
  return _then(_WalletToWalletInquiryResponseDtoData(
taxAndFee: null == taxAndFee ? _self.taxAndFee : taxAndFee // ignore: cast_nullable_to_non_nullable
as int,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,accountTitle: null == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
