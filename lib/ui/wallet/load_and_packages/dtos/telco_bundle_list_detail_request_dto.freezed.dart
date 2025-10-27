// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telco_bundle_list_detail_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelcoBundleListDetailRequestDto {

 String get version; String get offset; String get limit; String get telcoId;@SearchRequestConverter() String? get search;
/// Create a copy of TelcoBundleListDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelcoBundleListDetailRequestDtoCopyWith<TelcoBundleListDetailRequestDto> get copyWith => _$TelcoBundleListDetailRequestDtoCopyWithImpl<TelcoBundleListDetailRequestDto>(this as TelcoBundleListDetailRequestDto, _$identity);

  /// Serializes this TelcoBundleListDetailRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelcoBundleListDetailRequestDto&&(identical(other.version, version) || other.version == version)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,offset,limit,telcoId,search);

@override
String toString() {
  return 'TelcoBundleListDetailRequestDto(version: $version, offset: $offset, limit: $limit, telcoId: $telcoId, search: $search)';
}


}

/// @nodoc
abstract mixin class $TelcoBundleListDetailRequestDtoCopyWith<$Res>  {
  factory $TelcoBundleListDetailRequestDtoCopyWith(TelcoBundleListDetailRequestDto value, $Res Function(TelcoBundleListDetailRequestDto) _then) = _$TelcoBundleListDetailRequestDtoCopyWithImpl;
@useResult
$Res call({
 String version, String offset, String limit, String telcoId,@SearchRequestConverter() String? search
});




}
/// @nodoc
class _$TelcoBundleListDetailRequestDtoCopyWithImpl<$Res>
    implements $TelcoBundleListDetailRequestDtoCopyWith<$Res> {
  _$TelcoBundleListDetailRequestDtoCopyWithImpl(this._self, this._then);

  final TelcoBundleListDetailRequestDto _self;
  final $Res Function(TelcoBundleListDetailRequestDto) _then;

/// Create a copy of TelcoBundleListDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? offset = null,Object? limit = null,Object? telcoId = null,Object? search = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String,telcoId: null == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TelcoBundleListDetailRequestDto].
extension TelcoBundleListDetailRequestDtoPatterns on TelcoBundleListDetailRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelcoBundleListDetailRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelcoBundleListDetailRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelcoBundleListDetailRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _TelcoBundleListDetailRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelcoBundleListDetailRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelcoBundleListDetailRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  String offset,  String limit,  String telcoId, @SearchRequestConverter()  String? search)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelcoBundleListDetailRequestDto() when $default != null:
return $default(_that.version,_that.offset,_that.limit,_that.telcoId,_that.search);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  String offset,  String limit,  String telcoId, @SearchRequestConverter()  String? search)  $default,) {final _that = this;
switch (_that) {
case _TelcoBundleListDetailRequestDto():
return $default(_that.version,_that.offset,_that.limit,_that.telcoId,_that.search);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  String offset,  String limit,  String telcoId, @SearchRequestConverter()  String? search)?  $default,) {final _that = this;
switch (_that) {
case _TelcoBundleListDetailRequestDto() when $default != null:
return $default(_that.version,_that.offset,_that.limit,_that.telcoId,_that.search);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelcoBundleListDetailRequestDto implements TelcoBundleListDetailRequestDto {
  const _TelcoBundleListDetailRequestDto({this.version = "v1", required this.offset, required this.limit, required this.telcoId, @SearchRequestConverter() this.search});
  factory _TelcoBundleListDetailRequestDto.fromJson(Map<String, dynamic> json) => _$TelcoBundleListDetailRequestDtoFromJson(json);

@override@JsonKey() final  String version;
@override final  String offset;
@override final  String limit;
@override final  String telcoId;
@override@SearchRequestConverter() final  String? search;

/// Create a copy of TelcoBundleListDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelcoBundleListDetailRequestDtoCopyWith<_TelcoBundleListDetailRequestDto> get copyWith => __$TelcoBundleListDetailRequestDtoCopyWithImpl<_TelcoBundleListDetailRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelcoBundleListDetailRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelcoBundleListDetailRequestDto&&(identical(other.version, version) || other.version == version)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,offset,limit,telcoId,search);

@override
String toString() {
  return 'TelcoBundleListDetailRequestDto(version: $version, offset: $offset, limit: $limit, telcoId: $telcoId, search: $search)';
}


}

/// @nodoc
abstract mixin class _$TelcoBundleListDetailRequestDtoCopyWith<$Res> implements $TelcoBundleListDetailRequestDtoCopyWith<$Res> {
  factory _$TelcoBundleListDetailRequestDtoCopyWith(_TelcoBundleListDetailRequestDto value, $Res Function(_TelcoBundleListDetailRequestDto) _then) = __$TelcoBundleListDetailRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String version, String offset, String limit, String telcoId,@SearchRequestConverter() String? search
});




}
/// @nodoc
class __$TelcoBundleListDetailRequestDtoCopyWithImpl<$Res>
    implements _$TelcoBundleListDetailRequestDtoCopyWith<$Res> {
  __$TelcoBundleListDetailRequestDtoCopyWithImpl(this._self, this._then);

  final _TelcoBundleListDetailRequestDto _self;
  final $Res Function(_TelcoBundleListDetailRequestDto) _then;

/// Create a copy of TelcoBundleListDetailRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? offset = null,Object? limit = null,Object? telcoId = null,Object? search = freezed,}) {
  return _then(_TelcoBundleListDetailRequestDto(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String,telcoId: null == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
