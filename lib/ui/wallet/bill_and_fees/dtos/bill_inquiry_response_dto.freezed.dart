// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillInquiryResponseDto {

 String get statusCode; String get statusMessage;/// Wraps verificationToken + verificationMethod
 String get verificationToken; VerificationMethod get verificationMethod; BillInquiryDataDto? get data;
/// Create a copy of BillInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillInquiryResponseDtoCopyWith<BillInquiryResponseDto> get copyWith => _$BillInquiryResponseDtoCopyWithImpl<BillInquiryResponseDto>(this as BillInquiryResponseDto, _$identity);

  /// Serializes this BillInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'BillInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class $BillInquiryResponseDtoCopyWith<$Res>  {
  factory $BillInquiryResponseDtoCopyWith(BillInquiryResponseDto value, $Res Function(BillInquiryResponseDto) _then) = _$BillInquiryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, String verificationToken, VerificationMethod verificationMethod, BillInquiryDataDto? data
});


$BillInquiryDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$BillInquiryResponseDtoCopyWithImpl<$Res>
    implements $BillInquiryResponseDtoCopyWith<$Res> {
  _$BillInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final BillInquiryResponseDto _self;
  final $Res Function(BillInquiryResponseDto) _then;

/// Create a copy of BillInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? verificationToken = null,Object? verificationMethod = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BillInquiryDataDto?,
  ));
}
/// Create a copy of BillInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillInquiryDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BillInquiryDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BillInquiryResponseDto].
extension BillInquiryResponseDtoPatterns on BillInquiryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillInquiryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillInquiryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BillInquiryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillInquiryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  BillInquiryDataDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillInquiryResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  BillInquiryDataDto? data)  $default,) {final _that = this;
switch (_that) {
case _BillInquiryResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  String verificationToken,  VerificationMethod verificationMethod,  BillInquiryDataDto? data)?  $default,) {final _that = this;
switch (_that) {
case _BillInquiryResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.verificationToken,_that.verificationMethod,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillInquiryResponseDto implements BillInquiryResponseDto {
  const _BillInquiryResponseDto({required this.statusCode, required this.statusMessage, required this.verificationToken, this.verificationMethod = VerificationMethod.otp, this.data});
  factory _BillInquiryResponseDto.fromJson(Map<String, dynamic> json) => _$BillInquiryResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
/// Wraps verificationToken + verificationMethod
@override final  String verificationToken;
@override@JsonKey() final  VerificationMethod verificationMethod;
@override final  BillInquiryDataDto? data;

/// Create a copy of BillInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillInquiryResponseDtoCopyWith<_BillInquiryResponseDto> get copyWith => __$BillInquiryResponseDtoCopyWithImpl<_BillInquiryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillInquiryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillInquiryResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,verificationToken,verificationMethod,data);

@override
String toString() {
  return 'BillInquiryResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, verificationToken: $verificationToken, verificationMethod: $verificationMethod, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BillInquiryResponseDtoCopyWith<$Res> implements $BillInquiryResponseDtoCopyWith<$Res> {
  factory _$BillInquiryResponseDtoCopyWith(_BillInquiryResponseDto value, $Res Function(_BillInquiryResponseDto) _then) = __$BillInquiryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, String verificationToken, VerificationMethod verificationMethod, BillInquiryDataDto? data
});


@override $BillInquiryDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$BillInquiryResponseDtoCopyWithImpl<$Res>
    implements _$BillInquiryResponseDtoCopyWith<$Res> {
  __$BillInquiryResponseDtoCopyWithImpl(this._self, this._then);

  final _BillInquiryResponseDto _self;
  final $Res Function(_BillInquiryResponseDto) _then;

/// Create a copy of BillInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? verificationToken = null,Object? verificationMethod = null,Object? data = freezed,}) {
  return _then(_BillInquiryResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BillInquiryDataDto?,
  ));
}

/// Create a copy of BillInquiryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillInquiryDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BillInquiryDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BillInquiryDataDto {

 String? get totalAmount; String? get billMonth; String? get amountBeforeDueDate; String? get billStatus; String? get billIssueDate; String? get consumerNumber; String? get billerName; String? get billDueDate; String? get amountAfterDueDate; String? get consumerName;
/// Create a copy of BillInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillInquiryDataDtoCopyWith<BillInquiryDataDto> get copyWith => _$BillInquiryDataDtoCopyWithImpl<BillInquiryDataDto>(this as BillInquiryDataDto, _$identity);

  /// Serializes this BillInquiryDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillInquiryDataDto&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.amountBeforeDueDate, amountBeforeDueDate) || other.amountBeforeDueDate == amountBeforeDueDate)&&(identical(other.billStatus, billStatus) || other.billStatus == billStatus)&&(identical(other.billIssueDate, billIssueDate) || other.billIssueDate == billIssueDate)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.billerName, billerName) || other.billerName == billerName)&&(identical(other.billDueDate, billDueDate) || other.billDueDate == billDueDate)&&(identical(other.amountAfterDueDate, amountAfterDueDate) || other.amountAfterDueDate == amountAfterDueDate)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAmount,billMonth,amountBeforeDueDate,billStatus,billIssueDate,consumerNumber,billerName,billDueDate,amountAfterDueDate,consumerName);

@override
String toString() {
  return 'BillInquiryDataDto(totalAmount: $totalAmount, billMonth: $billMonth, amountBeforeDueDate: $amountBeforeDueDate, billStatus: $billStatus, billIssueDate: $billIssueDate, consumerNumber: $consumerNumber, billerName: $billerName, billDueDate: $billDueDate, amountAfterDueDate: $amountAfterDueDate, consumerName: $consumerName)';
}


}

/// @nodoc
abstract mixin class $BillInquiryDataDtoCopyWith<$Res>  {
  factory $BillInquiryDataDtoCopyWith(BillInquiryDataDto value, $Res Function(BillInquiryDataDto) _then) = _$BillInquiryDataDtoCopyWithImpl;
@useResult
$Res call({
 String? totalAmount, String? billMonth, String? amountBeforeDueDate, String? billStatus, String? billIssueDate, String? consumerNumber, String? billerName, String? billDueDate, String? amountAfterDueDate, String? consumerName
});




}
/// @nodoc
class _$BillInquiryDataDtoCopyWithImpl<$Res>
    implements $BillInquiryDataDtoCopyWith<$Res> {
  _$BillInquiryDataDtoCopyWithImpl(this._self, this._then);

  final BillInquiryDataDto _self;
  final $Res Function(BillInquiryDataDto) _then;

/// Create a copy of BillInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAmount = freezed,Object? billMonth = freezed,Object? amountBeforeDueDate = freezed,Object? billStatus = freezed,Object? billIssueDate = freezed,Object? consumerNumber = freezed,Object? billerName = freezed,Object? billDueDate = freezed,Object? amountAfterDueDate = freezed,Object? consumerName = freezed,}) {
  return _then(_self.copyWith(
totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,billMonth: freezed == billMonth ? _self.billMonth : billMonth // ignore: cast_nullable_to_non_nullable
as String?,amountBeforeDueDate: freezed == amountBeforeDueDate ? _self.amountBeforeDueDate : amountBeforeDueDate // ignore: cast_nullable_to_non_nullable
as String?,billStatus: freezed == billStatus ? _self.billStatus : billStatus // ignore: cast_nullable_to_non_nullable
as String?,billIssueDate: freezed == billIssueDate ? _self.billIssueDate : billIssueDate // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,billerName: freezed == billerName ? _self.billerName : billerName // ignore: cast_nullable_to_non_nullable
as String?,billDueDate: freezed == billDueDate ? _self.billDueDate : billDueDate // ignore: cast_nullable_to_non_nullable
as String?,amountAfterDueDate: freezed == amountAfterDueDate ? _self.amountAfterDueDate : amountAfterDueDate // ignore: cast_nullable_to_non_nullable
as String?,consumerName: freezed == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BillInquiryDataDto].
extension BillInquiryDataDtoPatterns on BillInquiryDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillInquiryDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillInquiryDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillInquiryDataDto value)  $default,){
final _that = this;
switch (_that) {
case _BillInquiryDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillInquiryDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillInquiryDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? totalAmount,  String? billMonth,  String? amountBeforeDueDate,  String? billStatus,  String? billIssueDate,  String? consumerNumber,  String? billerName,  String? billDueDate,  String? amountAfterDueDate,  String? consumerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillInquiryDataDto() when $default != null:
return $default(_that.totalAmount,_that.billMonth,_that.amountBeforeDueDate,_that.billStatus,_that.billIssueDate,_that.consumerNumber,_that.billerName,_that.billDueDate,_that.amountAfterDueDate,_that.consumerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? totalAmount,  String? billMonth,  String? amountBeforeDueDate,  String? billStatus,  String? billIssueDate,  String? consumerNumber,  String? billerName,  String? billDueDate,  String? amountAfterDueDate,  String? consumerName)  $default,) {final _that = this;
switch (_that) {
case _BillInquiryDataDto():
return $default(_that.totalAmount,_that.billMonth,_that.amountBeforeDueDate,_that.billStatus,_that.billIssueDate,_that.consumerNumber,_that.billerName,_that.billDueDate,_that.amountAfterDueDate,_that.consumerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? totalAmount,  String? billMonth,  String? amountBeforeDueDate,  String? billStatus,  String? billIssueDate,  String? consumerNumber,  String? billerName,  String? billDueDate,  String? amountAfterDueDate,  String? consumerName)?  $default,) {final _that = this;
switch (_that) {
case _BillInquiryDataDto() when $default != null:
return $default(_that.totalAmount,_that.billMonth,_that.amountBeforeDueDate,_that.billStatus,_that.billIssueDate,_that.consumerNumber,_that.billerName,_that.billDueDate,_that.amountAfterDueDate,_that.consumerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillInquiryDataDto implements BillInquiryDataDto {
  const _BillInquiryDataDto({this.totalAmount, this.billMonth, this.amountBeforeDueDate, this.billStatus, this.billIssueDate, this.consumerNumber, this.billerName, this.billDueDate, this.amountAfterDueDate, this.consumerName});
  factory _BillInquiryDataDto.fromJson(Map<String, dynamic> json) => _$BillInquiryDataDtoFromJson(json);

@override final  String? totalAmount;
@override final  String? billMonth;
@override final  String? amountBeforeDueDate;
@override final  String? billStatus;
@override final  String? billIssueDate;
@override final  String? consumerNumber;
@override final  String? billerName;
@override final  String? billDueDate;
@override final  String? amountAfterDueDate;
@override final  String? consumerName;

/// Create a copy of BillInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillInquiryDataDtoCopyWith<_BillInquiryDataDto> get copyWith => __$BillInquiryDataDtoCopyWithImpl<_BillInquiryDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillInquiryDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillInquiryDataDto&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.billMonth, billMonth) || other.billMonth == billMonth)&&(identical(other.amountBeforeDueDate, amountBeforeDueDate) || other.amountBeforeDueDate == amountBeforeDueDate)&&(identical(other.billStatus, billStatus) || other.billStatus == billStatus)&&(identical(other.billIssueDate, billIssueDate) || other.billIssueDate == billIssueDate)&&(identical(other.consumerNumber, consumerNumber) || other.consumerNumber == consumerNumber)&&(identical(other.billerName, billerName) || other.billerName == billerName)&&(identical(other.billDueDate, billDueDate) || other.billDueDate == billDueDate)&&(identical(other.amountAfterDueDate, amountAfterDueDate) || other.amountAfterDueDate == amountAfterDueDate)&&(identical(other.consumerName, consumerName) || other.consumerName == consumerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAmount,billMonth,amountBeforeDueDate,billStatus,billIssueDate,consumerNumber,billerName,billDueDate,amountAfterDueDate,consumerName);

@override
String toString() {
  return 'BillInquiryDataDto(totalAmount: $totalAmount, billMonth: $billMonth, amountBeforeDueDate: $amountBeforeDueDate, billStatus: $billStatus, billIssueDate: $billIssueDate, consumerNumber: $consumerNumber, billerName: $billerName, billDueDate: $billDueDate, amountAfterDueDate: $amountAfterDueDate, consumerName: $consumerName)';
}


}

/// @nodoc
abstract mixin class _$BillInquiryDataDtoCopyWith<$Res> implements $BillInquiryDataDtoCopyWith<$Res> {
  factory _$BillInquiryDataDtoCopyWith(_BillInquiryDataDto value, $Res Function(_BillInquiryDataDto) _then) = __$BillInquiryDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? totalAmount, String? billMonth, String? amountBeforeDueDate, String? billStatus, String? billIssueDate, String? consumerNumber, String? billerName, String? billDueDate, String? amountAfterDueDate, String? consumerName
});




}
/// @nodoc
class __$BillInquiryDataDtoCopyWithImpl<$Res>
    implements _$BillInquiryDataDtoCopyWith<$Res> {
  __$BillInquiryDataDtoCopyWithImpl(this._self, this._then);

  final _BillInquiryDataDto _self;
  final $Res Function(_BillInquiryDataDto) _then;

/// Create a copy of BillInquiryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAmount = freezed,Object? billMonth = freezed,Object? amountBeforeDueDate = freezed,Object? billStatus = freezed,Object? billIssueDate = freezed,Object? consumerNumber = freezed,Object? billerName = freezed,Object? billDueDate = freezed,Object? amountAfterDueDate = freezed,Object? consumerName = freezed,}) {
  return _then(_BillInquiryDataDto(
totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as String?,billMonth: freezed == billMonth ? _self.billMonth : billMonth // ignore: cast_nullable_to_non_nullable
as String?,amountBeforeDueDate: freezed == amountBeforeDueDate ? _self.amountBeforeDueDate : amountBeforeDueDate // ignore: cast_nullable_to_non_nullable
as String?,billStatus: freezed == billStatus ? _self.billStatus : billStatus // ignore: cast_nullable_to_non_nullable
as String?,billIssueDate: freezed == billIssueDate ? _self.billIssueDate : billIssueDate // ignore: cast_nullable_to_non_nullable
as String?,consumerNumber: freezed == consumerNumber ? _self.consumerNumber : consumerNumber // ignore: cast_nullable_to_non_nullable
as String?,billerName: freezed == billerName ? _self.billerName : billerName // ignore: cast_nullable_to_non_nullable
as String?,billDueDate: freezed == billDueDate ? _self.billDueDate : billDueDate // ignore: cast_nullable_to_non_nullable
as String?,amountAfterDueDate: freezed == amountAfterDueDate ? _self.amountAfterDueDate : amountAfterDueDate // ignore: cast_nullable_to_non_nullable
as String?,consumerName: freezed == consumerName ? _self.consumerName : consumerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
