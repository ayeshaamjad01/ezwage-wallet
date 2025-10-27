// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_linking_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountLinkingInquiryRequestDto {

 String get cnic; Map<String, dynamic> get extInfo;
/// Create a copy of AccountLinkingInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountLinkingInquiryRequestDtoCopyWith<AccountLinkingInquiryRequestDto> get copyWith => _$AccountLinkingInquiryRequestDtoCopyWithImpl<AccountLinkingInquiryRequestDto>(this as AccountLinkingInquiryRequestDto, _$identity);

  /// Serializes this AccountLinkingInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountLinkingInquiryRequestDto&&(identical(other.cnic, cnic) || other.cnic == cnic)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnic,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'AccountLinkingInquiryRequestDto(cnic: $cnic, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $AccountLinkingInquiryRequestDtoCopyWith<$Res>  {
  factory $AccountLinkingInquiryRequestDtoCopyWith(AccountLinkingInquiryRequestDto value, $Res Function(AccountLinkingInquiryRequestDto) _then) = _$AccountLinkingInquiryRequestDtoCopyWithImpl;
@useResult
$Res call({
 String cnic, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$AccountLinkingInquiryRequestDtoCopyWithImpl<$Res>
    implements $AccountLinkingInquiryRequestDtoCopyWith<$Res> {
  _$AccountLinkingInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final AccountLinkingInquiryRequestDto _self;
  final $Res Function(AccountLinkingInquiryRequestDto) _then;

/// Create a copy of AccountLinkingInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cnic = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
cnic: null == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountLinkingInquiryRequestDto].
extension AccountLinkingInquiryRequestDtoPatterns on AccountLinkingInquiryRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountLinkingInquiryRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountLinkingInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountLinkingInquiryRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _AccountLinkingInquiryRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountLinkingInquiryRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _AccountLinkingInquiryRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cnic,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountLinkingInquiryRequestDto() when $default != null:
return $default(_that.cnic,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cnic,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _AccountLinkingInquiryRequestDto():
return $default(_that.cnic,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cnic,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _AccountLinkingInquiryRequestDto() when $default != null:
return $default(_that.cnic,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountLinkingInquiryRequestDto implements AccountLinkingInquiryRequestDto {
  const _AccountLinkingInquiryRequestDto({required this.cnic, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _AccountLinkingInquiryRequestDto.fromJson(Map<String, dynamic> json) => _$AccountLinkingInquiryRequestDtoFromJson(json);

@override final  String cnic;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of AccountLinkingInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountLinkingInquiryRequestDtoCopyWith<_AccountLinkingInquiryRequestDto> get copyWith => __$AccountLinkingInquiryRequestDtoCopyWithImpl<_AccountLinkingInquiryRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountLinkingInquiryRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountLinkingInquiryRequestDto&&(identical(other.cnic, cnic) || other.cnic == cnic)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cnic,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'AccountLinkingInquiryRequestDto(cnic: $cnic, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$AccountLinkingInquiryRequestDtoCopyWith<$Res> implements $AccountLinkingInquiryRequestDtoCopyWith<$Res> {
  factory _$AccountLinkingInquiryRequestDtoCopyWith(_AccountLinkingInquiryRequestDto value, $Res Function(_AccountLinkingInquiryRequestDto) _then) = __$AccountLinkingInquiryRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String cnic, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$AccountLinkingInquiryRequestDtoCopyWithImpl<$Res>
    implements _$AccountLinkingInquiryRequestDtoCopyWith<$Res> {
  __$AccountLinkingInquiryRequestDtoCopyWithImpl(this._self, this._then);

  final _AccountLinkingInquiryRequestDto _self;
  final $Res Function(_AccountLinkingInquiryRequestDto) _then;

/// Create a copy of AccountLinkingInquiryRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cnic = null,Object? extInfo = null,}) {
  return _then(_AccountLinkingInquiryRequestDto(
cnic: null == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
