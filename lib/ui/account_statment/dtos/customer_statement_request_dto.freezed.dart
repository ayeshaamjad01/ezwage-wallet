// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_statement_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerStatementRequestDto {

 String get mobile; String get version; String get startDate; String get endDate; Map<String, dynamic> get extInfo;
/// Create a copy of CustomerStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerStatementRequestDtoCopyWith<CustomerStatementRequestDto> get copyWith => _$CustomerStatementRequestDtoCopyWithImpl<CustomerStatementRequestDto>(this as CustomerStatementRequestDto, _$identity);

  /// Serializes this CustomerStatementRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerStatementRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.version, version) || other.version == version)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,version,startDate,endDate,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'CustomerStatementRequestDto(mobile: $mobile, version: $version, startDate: $startDate, endDate: $endDate, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $CustomerStatementRequestDtoCopyWith<$Res>  {
  factory $CustomerStatementRequestDtoCopyWith(CustomerStatementRequestDto value, $Res Function(CustomerStatementRequestDto) _then) = _$CustomerStatementRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobile, String version, String startDate, String endDate, Map<String, dynamic> extInfo
});




}
/// @nodoc
class _$CustomerStatementRequestDtoCopyWithImpl<$Res>
    implements $CustomerStatementRequestDtoCopyWith<$Res> {
  _$CustomerStatementRequestDtoCopyWithImpl(this._self, this._then);

  final CustomerStatementRequestDto _self;
  final $Res Function(CustomerStatementRequestDto) _then;

/// Create a copy of CustomerStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobile = null,Object? version = null,Object? startDate = null,Object? endDate = null,Object? extInfo = null,}) {
  return _then(_self.copyWith(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerStatementRequestDto].
extension CustomerStatementRequestDtoPatterns on CustomerStatementRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerStatementRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerStatementRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerStatementRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerStatementRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerStatementRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobile,  String version,  String startDate,  String endDate,  Map<String, dynamic> extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerStatementRequestDto() when $default != null:
return $default(_that.mobile,_that.version,_that.startDate,_that.endDate,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobile,  String version,  String startDate,  String endDate,  Map<String, dynamic> extInfo)  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementRequestDto():
return $default(_that.mobile,_that.version,_that.startDate,_that.endDate,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobile,  String version,  String startDate,  String endDate,  Map<String, dynamic> extInfo)?  $default,) {final _that = this;
switch (_that) {
case _CustomerStatementRequestDto() when $default != null:
return $default(_that.mobile,_that.version,_that.startDate,_that.endDate,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerStatementRequestDto implements CustomerStatementRequestDto {
  const _CustomerStatementRequestDto({required this.mobile, this.version = "v1", required this.startDate, required this.endDate, final  Map<String, dynamic> extInfo = const {}}): _extInfo = extInfo;
  factory _CustomerStatementRequestDto.fromJson(Map<String, dynamic> json) => _$CustomerStatementRequestDtoFromJson(json);

@override final  String mobile;
@override@JsonKey() final  String version;
@override final  String startDate;
@override final  String endDate;
 final  Map<String, dynamic> _extInfo;
@override@JsonKey() Map<String, dynamic> get extInfo {
  if (_extInfo is EqualUnmodifiableMapView) return _extInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extInfo);
}


/// Create a copy of CustomerStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerStatementRequestDtoCopyWith<_CustomerStatementRequestDto> get copyWith => __$CustomerStatementRequestDtoCopyWithImpl<_CustomerStatementRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerStatementRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerStatementRequestDto&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.version, version) || other.version == version)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._extInfo, _extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobile,version,startDate,endDate,const DeepCollectionEquality().hash(_extInfo));

@override
String toString() {
  return 'CustomerStatementRequestDto(mobile: $mobile, version: $version, startDate: $startDate, endDate: $endDate, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$CustomerStatementRequestDtoCopyWith<$Res> implements $CustomerStatementRequestDtoCopyWith<$Res> {
  factory _$CustomerStatementRequestDtoCopyWith(_CustomerStatementRequestDto value, $Res Function(_CustomerStatementRequestDto) _then) = __$CustomerStatementRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobile, String version, String startDate, String endDate, Map<String, dynamic> extInfo
});




}
/// @nodoc
class __$CustomerStatementRequestDtoCopyWithImpl<$Res>
    implements _$CustomerStatementRequestDtoCopyWith<$Res> {
  __$CustomerStatementRequestDtoCopyWithImpl(this._self, this._then);

  final _CustomerStatementRequestDto _self;
  final $Res Function(_CustomerStatementRequestDto) _then;

/// Create a copy of CustomerStatementRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobile = null,Object? version = null,Object? startDate = null,Object? endDate = null,Object? extInfo = null,}) {
  return _then(_CustomerStatementRequestDto(
mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,extInfo: null == extInfo ? _self._extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
