// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_purpose_of_payment_list_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetPurposeOfPaymentListRequestDto {

 String get offset; String get limit;@SearchRequestConverter() String? get search; String get version;
/// Create a copy of GetPurposeOfPaymentListRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPurposeOfPaymentListRequestDtoCopyWith<GetPurposeOfPaymentListRequestDto> get copyWith => _$GetPurposeOfPaymentListRequestDtoCopyWithImpl<GetPurposeOfPaymentListRequestDto>(this as GetPurposeOfPaymentListRequestDto, _$identity);

  /// Serializes this GetPurposeOfPaymentListRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPurposeOfPaymentListRequestDto&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit,search,version);

@override
String toString() {
  return 'GetPurposeOfPaymentListRequestDto(offset: $offset, limit: $limit, search: $search, version: $version)';
}


}

/// @nodoc
abstract mixin class $GetPurposeOfPaymentListRequestDtoCopyWith<$Res>  {
  factory $GetPurposeOfPaymentListRequestDtoCopyWith(GetPurposeOfPaymentListRequestDto value, $Res Function(GetPurposeOfPaymentListRequestDto) _then) = _$GetPurposeOfPaymentListRequestDtoCopyWithImpl;
@useResult
$Res call({
 String offset, String limit,@SearchRequestConverter() String? search, String version
});




}
/// @nodoc
class _$GetPurposeOfPaymentListRequestDtoCopyWithImpl<$Res>
    implements $GetPurposeOfPaymentListRequestDtoCopyWith<$Res> {
  _$GetPurposeOfPaymentListRequestDtoCopyWithImpl(this._self, this._then);

  final GetPurposeOfPaymentListRequestDto _self;
  final $Res Function(GetPurposeOfPaymentListRequestDto) _then;

/// Create a copy of GetPurposeOfPaymentListRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = null,Object? search = freezed,Object? version = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPurposeOfPaymentListRequestDto].
extension GetPurposeOfPaymentListRequestDtoPatterns on GetPurposeOfPaymentListRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPurposeOfPaymentListRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPurposeOfPaymentListRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPurposeOfPaymentListRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String offset,  String limit, @SearchRequestConverter()  String? search,  String version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListRequestDto() when $default != null:
return $default(_that.offset,_that.limit,_that.search,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String offset,  String limit, @SearchRequestConverter()  String? search,  String version)  $default,) {final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListRequestDto():
return $default(_that.offset,_that.limit,_that.search,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String offset,  String limit, @SearchRequestConverter()  String? search,  String version)?  $default,) {final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListRequestDto() when $default != null:
return $default(_that.offset,_that.limit,_that.search,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetPurposeOfPaymentListRequestDto implements GetPurposeOfPaymentListRequestDto {
  const _GetPurposeOfPaymentListRequestDto({required this.offset, required this.limit, @SearchRequestConverter() this.search, this.version = "v1"});
  factory _GetPurposeOfPaymentListRequestDto.fromJson(Map<String, dynamic> json) => _$GetPurposeOfPaymentListRequestDtoFromJson(json);

@override final  String offset;
@override final  String limit;
@override@SearchRequestConverter() final  String? search;
@override@JsonKey() final  String version;

/// Create a copy of GetPurposeOfPaymentListRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPurposeOfPaymentListRequestDtoCopyWith<_GetPurposeOfPaymentListRequestDto> get copyWith => __$GetPurposeOfPaymentListRequestDtoCopyWithImpl<_GetPurposeOfPaymentListRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetPurposeOfPaymentListRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPurposeOfPaymentListRequestDto&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit,search,version);

@override
String toString() {
  return 'GetPurposeOfPaymentListRequestDto(offset: $offset, limit: $limit, search: $search, version: $version)';
}


}

/// @nodoc
abstract mixin class _$GetPurposeOfPaymentListRequestDtoCopyWith<$Res> implements $GetPurposeOfPaymentListRequestDtoCopyWith<$Res> {
  factory _$GetPurposeOfPaymentListRequestDtoCopyWith(_GetPurposeOfPaymentListRequestDto value, $Res Function(_GetPurposeOfPaymentListRequestDto) _then) = __$GetPurposeOfPaymentListRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String offset, String limit,@SearchRequestConverter() String? search, String version
});




}
/// @nodoc
class __$GetPurposeOfPaymentListRequestDtoCopyWithImpl<$Res>
    implements _$GetPurposeOfPaymentListRequestDtoCopyWith<$Res> {
  __$GetPurposeOfPaymentListRequestDtoCopyWithImpl(this._self, this._then);

  final _GetPurposeOfPaymentListRequestDto _self;
  final $Res Function(_GetPurposeOfPaymentListRequestDto) _then;

/// Create a copy of GetPurposeOfPaymentListRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,Object? search = freezed,Object? version = null,}) {
  return _then(_GetPurposeOfPaymentListRequestDto(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
