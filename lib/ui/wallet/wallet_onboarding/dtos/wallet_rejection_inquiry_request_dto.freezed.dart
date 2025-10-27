// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_rejection_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletRejectionInquiryRequestDto {

 String get cnicNo; String get mobileNo;
/// Create a copy of WalletRejectionInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletRejectionInquiryRequestDtoCopyWith<WalletRejectionInquiryRequestDto> get copyWith => _$WalletRejectionInquiryRequestDtoCopyWithImpl<WalletRejectionInquiryRequestDto>(this as WalletRejectionInquiryRequestDto, _$identity);

  /// Serializes this WalletRejectionInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletRejectionInquiryRequestDto&&(identical(other.cnicNo, cnicNo) || other.cnicNo == cnicNo)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnicNo,mobileNo);

@override
String toString() {
  return 'WalletRejectionInquiryRequestDto(cnicNo: $cnicNo, mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class $WalletRejectionInquiryRequestDtoCopyWith<$Res>  {
  factory $WalletRejectionInquiryRequestDtoCopyWith(WalletRejectionInquiryRequestDto value, $Res Function(WalletRejectionInquiryRequestDto) _then) = _$WalletRejectionInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String cnicNo, String mobileNo
});




}
/// @nodoc
class _$WalletRejectionInquiryRequestDtoCopyWithImpl<$Res>
    implements $WalletRejectionInquiryRequestDtoCopyWith<$Res> {
  _$WalletRejectionInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final WalletRejectionInquiryRequestDto _self;
  final $Res Function(WalletRejectionInquiryRequestDto) _then;

/// Create a copy of WalletRejectionInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cnicNo = null,Object? mobileNo = null,}) {
  return _then(_self.copyWith(
cnicNo: null == cnicNo ? _self.cnicNo : cnicNo // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletRejectionInquiryRequestDto].
extension WalletRejectionInquiryRequestDtoPatterns on WalletRejectionInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletRejectionInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletRejectionInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletRejectionInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _WalletRejectionInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletRejectionInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _WalletRejectionInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cnicNo,  String mobileNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletRejectionInquiryRequestDto() when $default != null:
return $default(_that.cnicNo,_that.mobileNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cnicNo,  String mobileNo)  $default,) {final _that = this;
switch (_that) {
case _WalletRejectionInquiryRequestDto():
return $default(_that.cnicNo,_that.mobileNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cnicNo,  String mobileNo)?  $default,) {final _that = this;
switch (_that) {
case _WalletRejectionInquiryRequestDto() when $default != null:
return $default(_that.cnicNo,_that.mobileNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletRejectionInquiryRequestDto implements WalletRejectionInquiryRequestDto {
  const _WalletRejectionInquiryRequestDto({required this.cnicNo, required this.mobileNo});
  factory _WalletRejectionInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$WalletRejectionInquiryRequestDtoFromJson(json);

@override final  String cnicNo;
@override final  String mobileNo;

/// Create a copy of WalletRejectionInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletRejectionInquiryRequestDtoCopyWith<_WalletRejectionInquiryRequestDto> get copyWith => __$WalletRejectionInquiryRequestDtoCopyWithImpl<_WalletRejectionInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletRejectionInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletRejectionInquiryRequestDto&&(identical(other.cnicNo, cnicNo) || other.cnicNo == cnicNo)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnicNo,mobileNo);

@override
String toString() {
  return 'WalletRejectionInquiryRequestDto(cnicNo: $cnicNo, mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class _$WalletRejectionInquiryRequestDtoCopyWith<$Res> implements $WalletRejectionInquiryRequestDtoCopyWith<$Res> {
  factory _$WalletRejectionInquiryRequestDtoCopyWith(_WalletRejectionInquiryRequestDto value, $Res Function(_WalletRejectionInquiryRequestDto) _then) = __$WalletRejectionInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String cnicNo, String mobileNo
});




}
/// @nodoc
class __$WalletRejectionInquiryRequestDtoCopyWithImpl<$Res>
    implements _$WalletRejectionInquiryRequestDtoCopyWith<$Res> {
  __$WalletRejectionInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _WalletRejectionInquiryRequestDto _self;
  final $Res Function(_WalletRejectionInquiryRequestDto) _then;

/// Create a copy of WalletRejectionInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cnicNo = null,Object? mobileNo = null,}) {
  return _then(_WalletRejectionInquiryRequestDto(
cnicNo: null == cnicNo ? _self.cnicNo : cnicNo // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
