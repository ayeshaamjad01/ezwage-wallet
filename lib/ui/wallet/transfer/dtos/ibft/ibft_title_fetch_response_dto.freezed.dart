// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibft_title_fetch_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IbftTitleFetchResponseDto {

 String get verificationToken; String get verificationMethod; IbftTitleFetchDataDto get data;
/// Create a copy of IbftTitleFetchResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftTitleFetchResponseDtoCopyWith<IbftTitleFetchResponseDto> get copyWith => _$IbftTitleFetchResponseDtoCopyWithImpl<IbftTitleFetchResponseDto>(this as IbftTitleFetchResponseDto, _$identity);

  /// Serializes this IbftTitleFetchResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftTitleFetchResponseDto&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'IbftTitleFetchResponseDto(verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class $IbftTitleFetchResponseDtoCopyWith<$Res>  {
  factory $IbftTitleFetchResponseDtoCopyWith(IbftTitleFetchResponseDto value, $Res Function(IbftTitleFetchResponseDto) _then) = _$IbftTitleFetchResponseDtoCopyWithImpl;
@useResult
$Res call({
 String verificationToken, String verificationMethod, IbftTitleFetchDataDto data
});


$IbftTitleFetchDataDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$IbftTitleFetchResponseDtoCopyWithImpl<$Res>
    implements $IbftTitleFetchResponseDtoCopyWith<$Res> {
  _$IbftTitleFetchResponseDtoCopyWithImpl(this._self, this._then);

  final IbftTitleFetchResponseDto _self;
  final $Res Function(IbftTitleFetchResponseDto) _then;

/// Create a copy of IbftTitleFetchResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationToken = null,Object? verificationMethod = null,Object? data = null,}) {
  return _then(_self.copyWith(
verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IbftTitleFetchDataDto,
  ));
}
/// Create a copy of IbftTitleFetchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IbftTitleFetchDataDtoCopyWith<$Res> get data {
  
  return $IbftTitleFetchDataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [IbftTitleFetchResponseDto].
extension IbftTitleFetchResponseDtoPatterns on IbftTitleFetchResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftTitleFetchResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftTitleFetchResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftTitleFetchResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _IbftTitleFetchResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftTitleFetchResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _IbftTitleFetchResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String verificationToken,  String verificationMethod,  IbftTitleFetchDataDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftTitleFetchResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String verificationToken,  String verificationMethod,  IbftTitleFetchDataDto data)  $default,) {final _that = this;
switch (_that) {
case _IbftTitleFetchResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String verificationToken,  String verificationMethod,  IbftTitleFetchDataDto data)?  $default,) {final _that = this;
switch (_that) {
case _IbftTitleFetchResponseDto() when $default != null:
return $default(_that.verificationToken,_that.verificationMethod,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftTitleFetchResponseDto implements IbftTitleFetchResponseDto {
  const _IbftTitleFetchResponseDto({required this.verificationToken, required this.verificationMethod, required this.data});
  factory _IbftTitleFetchResponseDto.fromJson(Map<String, dynamic> json) => _$IbftTitleFetchResponseDtoFromJson(json);

@override final  String verificationToken;
@override final  String verificationMethod;
@override final  IbftTitleFetchDataDto data;

/// Create a copy of IbftTitleFetchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftTitleFetchResponseDtoCopyWith<_IbftTitleFetchResponseDto> get copyWith => __$IbftTitleFetchResponseDtoCopyWithImpl<_IbftTitleFetchResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftTitleFetchResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftTitleFetchResponseDto&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'IbftTitleFetchResponseDto(verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class _$IbftTitleFetchResponseDtoCopyWith<$Res> implements $IbftTitleFetchResponseDtoCopyWith<$Res> {
  factory _$IbftTitleFetchResponseDtoCopyWith(_IbftTitleFetchResponseDto value, $Res Function(_IbftTitleFetchResponseDto) _then) = __$IbftTitleFetchResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String verificationToken, String verificationMethod, IbftTitleFetchDataDto data
});


@override $IbftTitleFetchDataDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$IbftTitleFetchResponseDtoCopyWithImpl<$Res>
    implements _$IbftTitleFetchResponseDtoCopyWith<$Res> {
  __$IbftTitleFetchResponseDtoCopyWithImpl(this._self, this._then);

  final _IbftTitleFetchResponseDto _self;
  final $Res Function(_IbftTitleFetchResponseDto) _then;

/// Create a copy of IbftTitleFetchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationToken = null,Object? verificationMethod = null,Object? data = null,}) {
  return _then(_IbftTitleFetchResponseDto(
verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as IbftTitleFetchDataDto,
  ));
}

/// Create a copy of IbftTitleFetchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IbftTitleFetchDataDtoCopyWith<$Res> get data {
  
  return $IbftTitleFetchDataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$IbftTitleFetchDataDto {

// required int otpLength,
 String get totalAmount; String get amount; String get beneficiaryAccTitle; String get beneficiaryIBAN; String get branchName; int get otpExpiryIn; String get bankName; int get otpResendTries;@JsonKey(unknownEnumValue: IBFTVMethod.NONE) IBFTVMethod get verificationMethod; String get taxAndFee;@JsonKey(name: "receiverAccount") String get accountNumber;
/// Create a copy of IbftTitleFetchDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbftTitleFetchDataDtoCopyWith<IbftTitleFetchDataDto> get copyWith => _$IbftTitleFetchDataDtoCopyWithImpl<IbftTitleFetchDataDto>(this as IbftTitleFetchDataDto, _$identity);

  /// Serializes this IbftTitleFetchDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbftTitleFetchDataDto&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.beneficiaryAccTitle, beneficiaryAccTitle) || other.beneficiaryAccTitle == beneficiaryAccTitle)&&(identical(other.beneficiaryIBAN, beneficiaryIBAN) || other.beneficiaryIBAN == beneficiaryIBAN)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.otpExpiryIn, otpExpiryIn) || other.otpExpiryIn == otpExpiryIn)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.otpResendTries, otpResendTries) || other.otpResendTries == otpResendTries)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.taxAndFee, taxAndFee) || other.taxAndFee == taxAndFee)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAmount,amount,beneficiaryAccTitle,beneficiaryIBAN,branchName,otpExpiryIn,bankName,otpResendTries,verificationMethod,taxAndFee,accountNumber);

@override
String toString() {
  return 'IbftTitleFetchDataDto(totalAmount: $totalAmount, amount: $amount, beneficiaryAccTitle: $beneficiaryAccTitle, beneficiaryIBAN: $beneficiaryIBAN, branchName: $branchName, otpExpiryIn: $otpExpiryIn, bankName: $bankName, otpResendTries: $otpResendTries, verificationMethod: $verificationMethod, taxAndFee: $taxAndFee, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class $IbftTitleFetchDataDtoCopyWith<$Res>  {
  factory $IbftTitleFetchDataDtoCopyWith(IbftTitleFetchDataDto value, $Res Function(IbftTitleFetchDataDto) _then) = _$IbftTitleFetchDataDtoCopyWithImpl;
@useResult
$Res call({
 String totalAmount, String amount, String beneficiaryAccTitle, String beneficiaryIBAN, String branchName, int otpExpiryIn, String bankName, int otpResendTries,@JsonKey(unknownEnumValue: IBFTVMethod.NONE) IBFTVMethod verificationMethod, String taxAndFee,@JsonKey(name: "receiverAccount") String accountNumber
});




}
/// @nodoc
class _$IbftTitleFetchDataDtoCopyWithImpl<$Res>
    implements $IbftTitleFetchDataDtoCopyWith<$Res> {
  _$IbftTitleFetchDataDtoCopyWithImpl(this._self, this._then);

  final IbftTitleFetchDataDto _self;
  final $Res Function(IbftTitleFetchDataDto) _then;

/// Create a copy of IbftTitleFetchDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAmount = null,Object? amount = null,Object? beneficiaryAccTitle = null,Object? beneficiaryIBAN = null,Object? branchName = null,Object? otpExpiryIn = null,Object? bankName = null,Object? otpResendTries = null,Object? verificationMethod = null,Object? taxAndFee = null,Object? accountNumber = null,}) {
  return _then(_self.copyWith(
totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,beneficiaryAccTitle: null == beneficiaryAccTitle ? _self.beneficiaryAccTitle : beneficiaryAccTitle // ignore: cast_nullable_to_non_nullable
as String,beneficiaryIBAN: null == beneficiaryIBAN ? _self.beneficiaryIBAN : beneficiaryIBAN // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,otpExpiryIn: null == otpExpiryIn ? _self.otpExpiryIn : otpExpiryIn // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,otpResendTries: null == otpResendTries ? _self.otpResendTries : otpResendTries // ignore: cast_nullable_to_non_nullable
as int,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as IBFTVMethod,taxAndFee: null == taxAndFee ? _self.taxAndFee : taxAndFee // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IbftTitleFetchDataDto].
extension IbftTitleFetchDataDtoPatterns on IbftTitleFetchDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IbftTitleFetchDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IbftTitleFetchDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IbftTitleFetchDataDto value)  $default,){
final _that = this;
switch (_that) {
case _IbftTitleFetchDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IbftTitleFetchDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _IbftTitleFetchDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String totalAmount,  String amount,  String beneficiaryAccTitle,  String beneficiaryIBAN,  String branchName,  int otpExpiryIn,  String bankName,  int otpResendTries, @JsonKey(unknownEnumValue: IBFTVMethod.NONE)  IBFTVMethod verificationMethod,  String taxAndFee, @JsonKey(name: "receiverAccount")  String accountNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IbftTitleFetchDataDto() when $default != null:
return $default(_that.totalAmount,_that.amount,_that.beneficiaryAccTitle,_that.beneficiaryIBAN,_that.branchName,_that.otpExpiryIn,_that.bankName,_that.otpResendTries,_that.verificationMethod,_that.taxAndFee,_that.accountNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String totalAmount,  String amount,  String beneficiaryAccTitle,  String beneficiaryIBAN,  String branchName,  int otpExpiryIn,  String bankName,  int otpResendTries, @JsonKey(unknownEnumValue: IBFTVMethod.NONE)  IBFTVMethod verificationMethod,  String taxAndFee, @JsonKey(name: "receiverAccount")  String accountNumber)  $default,) {final _that = this;
switch (_that) {
case _IbftTitleFetchDataDto():
return $default(_that.totalAmount,_that.amount,_that.beneficiaryAccTitle,_that.beneficiaryIBAN,_that.branchName,_that.otpExpiryIn,_that.bankName,_that.otpResendTries,_that.verificationMethod,_that.taxAndFee,_that.accountNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String totalAmount,  String amount,  String beneficiaryAccTitle,  String beneficiaryIBAN,  String branchName,  int otpExpiryIn,  String bankName,  int otpResendTries, @JsonKey(unknownEnumValue: IBFTVMethod.NONE)  IBFTVMethod verificationMethod,  String taxAndFee, @JsonKey(name: "receiverAccount")  String accountNumber)?  $default,) {final _that = this;
switch (_that) {
case _IbftTitleFetchDataDto() when $default != null:
return $default(_that.totalAmount,_that.amount,_that.beneficiaryAccTitle,_that.beneficiaryIBAN,_that.branchName,_that.otpExpiryIn,_that.bankName,_that.otpResendTries,_that.verificationMethod,_that.taxAndFee,_that.accountNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IbftTitleFetchDataDto implements IbftTitleFetchDataDto {
  const _IbftTitleFetchDataDto({required this.totalAmount, required this.amount, required this.beneficiaryAccTitle, required this.beneficiaryIBAN, required this.branchName, this.otpExpiryIn = 0, required this.bankName, this.otpResendTries = 0, @JsonKey(unknownEnumValue: IBFTVMethod.NONE) required this.verificationMethod, required this.taxAndFee, @JsonKey(name: "receiverAccount") required this.accountNumber});
  factory _IbftTitleFetchDataDto.fromJson(Map<String, dynamic> json) => _$IbftTitleFetchDataDtoFromJson(json);

// required int otpLength,
@override final  String totalAmount;
@override final  String amount;
@override final  String beneficiaryAccTitle;
@override final  String beneficiaryIBAN;
@override final  String branchName;
@override@JsonKey() final  int otpExpiryIn;
@override final  String bankName;
@override@JsonKey() final  int otpResendTries;
@override@JsonKey(unknownEnumValue: IBFTVMethod.NONE) final  IBFTVMethod verificationMethod;
@override final  String taxAndFee;
@override@JsonKey(name: "receiverAccount") final  String accountNumber;

/// Create a copy of IbftTitleFetchDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IbftTitleFetchDataDtoCopyWith<_IbftTitleFetchDataDto> get copyWith => __$IbftTitleFetchDataDtoCopyWithImpl<_IbftTitleFetchDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IbftTitleFetchDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IbftTitleFetchDataDto&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.beneficiaryAccTitle, beneficiaryAccTitle) || other.beneficiaryAccTitle == beneficiaryAccTitle)&&(identical(other.beneficiaryIBAN, beneficiaryIBAN) || other.beneficiaryIBAN == beneficiaryIBAN)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.otpExpiryIn, otpExpiryIn) || other.otpExpiryIn == otpExpiryIn)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.otpResendTries, otpResendTries) || other.otpResendTries == otpResendTries)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.taxAndFee, taxAndFee) || other.taxAndFee == taxAndFee)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAmount,amount,beneficiaryAccTitle,beneficiaryIBAN,branchName,otpExpiryIn,bankName,otpResendTries,verificationMethod,taxAndFee,accountNumber);

@override
String toString() {
  return 'IbftTitleFetchDataDto(totalAmount: $totalAmount, amount: $amount, beneficiaryAccTitle: $beneficiaryAccTitle, beneficiaryIBAN: $beneficiaryIBAN, branchName: $branchName, otpExpiryIn: $otpExpiryIn, bankName: $bankName, otpResendTries: $otpResendTries, verificationMethod: $verificationMethod, taxAndFee: $taxAndFee, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class _$IbftTitleFetchDataDtoCopyWith<$Res> implements $IbftTitleFetchDataDtoCopyWith<$Res> {
  factory _$IbftTitleFetchDataDtoCopyWith(_IbftTitleFetchDataDto value, $Res Function(_IbftTitleFetchDataDto) _then) = __$IbftTitleFetchDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String totalAmount, String amount, String beneficiaryAccTitle, String beneficiaryIBAN, String branchName, int otpExpiryIn, String bankName, int otpResendTries,@JsonKey(unknownEnumValue: IBFTVMethod.NONE) IBFTVMethod verificationMethod, String taxAndFee,@JsonKey(name: "receiverAccount") String accountNumber
});




}
/// @nodoc
class __$IbftTitleFetchDataDtoCopyWithImpl<$Res>
    implements _$IbftTitleFetchDataDtoCopyWith<$Res> {
  __$IbftTitleFetchDataDtoCopyWithImpl(this._self, this._then);

  final _IbftTitleFetchDataDto _self;
  final $Res Function(_IbftTitleFetchDataDto) _then;

/// Create a copy of IbftTitleFetchDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAmount = null,Object? amount = null,Object? beneficiaryAccTitle = null,Object? beneficiaryIBAN = null,Object? branchName = null,Object? otpExpiryIn = null,Object? bankName = null,Object? otpResendTries = null,Object? verificationMethod = null,Object? taxAndFee = null,Object? accountNumber = null,}) {
  return _then(_IbftTitleFetchDataDto(
totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,beneficiaryAccTitle: null == beneficiaryAccTitle ? _self.beneficiaryAccTitle : beneficiaryAccTitle // ignore: cast_nullable_to_non_nullable
as String,beneficiaryIBAN: null == beneficiaryIBAN ? _self.beneficiaryIBAN : beneficiaryIBAN // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,otpExpiryIn: null == otpExpiryIn ? _self.otpExpiryIn : otpExpiryIn // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,otpResendTries: null == otpResendTries ? _self.otpResendTries : otpResendTries // ignore: cast_nullable_to_non_nullable
as int,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as IBFTVMethod,taxAndFee: null == taxAndFee ? _self.taxAndFee : taxAndFee // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
