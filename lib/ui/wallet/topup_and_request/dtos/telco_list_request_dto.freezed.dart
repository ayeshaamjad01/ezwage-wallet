// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telco_list_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelcoListRequestDto {

 String get offset; String get limit;@SearchRequestConverter() String? get search; String get version; TeleCosBillType get type;
/// Create a copy of TelcoListRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelcoListRequestDtoCopyWith<TelcoListRequestDto> get copyWith => _$TelcoListRequestDtoCopyWithImpl<TelcoListRequestDto>(this as TelcoListRequestDto, _$identity);

  /// Serializes this TelcoListRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelcoListRequestDto&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.version, version) || other.version == version)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit,search,version,type);

@override
String toString() {
  return 'TelcoListRequestDto(offset: $offset, limit: $limit, search: $search, version: $version, type: $type)';
}


}

/// @nodoc
abstract mixin class $TelcoListRequestDtoCopyWith<$Res>  {
  factory $TelcoListRequestDtoCopyWith(TelcoListRequestDto value, $Res Function(TelcoListRequestDto) _then) = _$TelcoListRequestDtoCopyWithImpl;
@useResult
$Res call({
 String offset, String limit,@SearchRequestConverter() String? search, String version, TeleCosBillType type
});




}
/// @nodoc
class _$TelcoListRequestDtoCopyWithImpl<$Res>
    implements $TelcoListRequestDtoCopyWith<$Res> {
  _$TelcoListRequestDtoCopyWithImpl(this._self, this._then);

  final TelcoListRequestDto _self;
  final $Res Function(TelcoListRequestDto) _then;

/// Create a copy of TelcoListRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = null,Object? search = freezed,Object? version = null,Object? type = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TeleCosBillType,
  ));
}

}


/// Adds pattern-matching-related methods to [TelcoListRequestDto].
extension TelcoListRequestDtoPatterns on TelcoListRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelcoListRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelcoListRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelcoListRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _TelcoListRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelcoListRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelcoListRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String offset,  String limit, @SearchRequestConverter()  String? search,  String version,  TeleCosBillType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelcoListRequestDto() when $default != null:
return $default(_that.offset,_that.limit,_that.search,_that.version,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String offset,  String limit, @SearchRequestConverter()  String? search,  String version,  TeleCosBillType type)  $default,) {final _that = this;
switch (_that) {
case _TelcoListRequestDto():
return $default(_that.offset,_that.limit,_that.search,_that.version,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String offset,  String limit, @SearchRequestConverter()  String? search,  String version,  TeleCosBillType type)?  $default,) {final _that = this;
switch (_that) {
case _TelcoListRequestDto() when $default != null:
return $default(_that.offset,_that.limit,_that.search,_that.version,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelcoListRequestDto implements TelcoListRequestDto {
  const _TelcoListRequestDto({required this.offset, required this.limit, @SearchRequestConverter() required this.search, this.version = "v1", required this.type});
  factory _TelcoListRequestDto.fromJson(Map<String, dynamic> json) => _$TelcoListRequestDtoFromJson(json);

@override final  String offset;
@override final  String limit;
@override@SearchRequestConverter() final  String? search;
@override@JsonKey() final  String version;
@override final  TeleCosBillType type;

/// Create a copy of TelcoListRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelcoListRequestDtoCopyWith<_TelcoListRequestDto> get copyWith => __$TelcoListRequestDtoCopyWithImpl<_TelcoListRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelcoListRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelcoListRequestDto&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.search, search) || other.search == search)&&(identical(other.version, version) || other.version == version)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit,search,version,type);

@override
String toString() {
  return 'TelcoListRequestDto(offset: $offset, limit: $limit, search: $search, version: $version, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TelcoListRequestDtoCopyWith<$Res> implements $TelcoListRequestDtoCopyWith<$Res> {
  factory _$TelcoListRequestDtoCopyWith(_TelcoListRequestDto value, $Res Function(_TelcoListRequestDto) _then) = __$TelcoListRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String offset, String limit,@SearchRequestConverter() String? search, String version, TeleCosBillType type
});




}
/// @nodoc
class __$TelcoListRequestDtoCopyWithImpl<$Res>
    implements _$TelcoListRequestDtoCopyWith<$Res> {
  __$TelcoListRequestDtoCopyWithImpl(this._self, this._then);

  final _TelcoListRequestDto _self;
  final $Res Function(_TelcoListRequestDto) _then;

/// Create a copy of TelcoListRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,Object? search = freezed,Object? version = null,Object? type = null,}) {
  return _then(_TelcoListRequestDto(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as String,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TeleCosBillType,
  ));
}


}

// dart format on
