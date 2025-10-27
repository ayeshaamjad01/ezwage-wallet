// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cities_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCitiesListResponseDto {

 List<CityItemDto> get data;
/// Create a copy of GetCitiesListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCitiesListResponseDtoCopyWith<GetCitiesListResponseDto> get copyWith => _$GetCitiesListResponseDtoCopyWithImpl<GetCitiesListResponseDto>(this as GetCitiesListResponseDto, _$identity);

  /// Serializes this GetCitiesListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCitiesListResponseDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetCitiesListResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetCitiesListResponseDtoCopyWith<$Res>  {
  factory $GetCitiesListResponseDtoCopyWith(GetCitiesListResponseDto value, $Res Function(GetCitiesListResponseDto) _then) = _$GetCitiesListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<CityItemDto> data
});




}
/// @nodoc
class _$GetCitiesListResponseDtoCopyWithImpl<$Res>
    implements $GetCitiesListResponseDtoCopyWith<$Res> {
  _$GetCitiesListResponseDtoCopyWithImpl(this._self, this._then);

  final GetCitiesListResponseDto _self;
  final $Res Function(GetCitiesListResponseDto) _then;

/// Create a copy of GetCitiesListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CityItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCitiesListResponseDto].
extension GetCitiesListResponseDtoPatterns on GetCitiesListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCitiesListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCitiesListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCitiesListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetCitiesListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCitiesListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetCitiesListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CityItemDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCitiesListResponseDto() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CityItemDto> data)  $default,) {final _that = this;
switch (_that) {
case _GetCitiesListResponseDto():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CityItemDto> data)?  $default,) {final _that = this;
switch (_that) {
case _GetCitiesListResponseDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCitiesListResponseDto implements GetCitiesListResponseDto {
  const _GetCitiesListResponseDto({required final  List<CityItemDto> data}): _data = data;
  factory _GetCitiesListResponseDto.fromJson(Map<String, dynamic> json) => _$GetCitiesListResponseDtoFromJson(json);

 final  List<CityItemDto> _data;
@override List<CityItemDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetCitiesListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCitiesListResponseDtoCopyWith<_GetCitiesListResponseDto> get copyWith => __$GetCitiesListResponseDtoCopyWithImpl<_GetCitiesListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCitiesListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCitiesListResponseDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetCitiesListResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetCitiesListResponseDtoCopyWith<$Res> implements $GetCitiesListResponseDtoCopyWith<$Res> {
  factory _$GetCitiesListResponseDtoCopyWith(_GetCitiesListResponseDto value, $Res Function(_GetCitiesListResponseDto) _then) = __$GetCitiesListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<CityItemDto> data
});




}
/// @nodoc
class __$GetCitiesListResponseDtoCopyWithImpl<$Res>
    implements _$GetCitiesListResponseDtoCopyWith<$Res> {
  __$GetCitiesListResponseDtoCopyWithImpl(this._self, this._then);

  final _GetCitiesListResponseDto _self;
  final $Res Function(_GetCitiesListResponseDto) _then;

/// Create a copy of GetCitiesListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_GetCitiesListResponseDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CityItemDto>,
  ));
}


}


/// @nodoc
mixin _$CityItemDto {

 int get cityId; String get cityName;
/// Create a copy of CityItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityItemDtoCopyWith<CityItemDto> get copyWith => _$CityItemDtoCopyWithImpl<CityItemDto>(this as CityItemDto, _$identity);

  /// Serializes this CityItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityItemDto&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityId,cityName);

@override
String toString() {
  return 'CityItemDto(cityId: $cityId, cityName: $cityName)';
}


}

/// @nodoc
abstract mixin class $CityItemDtoCopyWith<$Res>  {
  factory $CityItemDtoCopyWith(CityItemDto value, $Res Function(CityItemDto) _then) = _$CityItemDtoCopyWithImpl;
@useResult
$Res call({
 int cityId, String cityName
});




}
/// @nodoc
class _$CityItemDtoCopyWithImpl<$Res>
    implements $CityItemDtoCopyWith<$Res> {
  _$CityItemDtoCopyWithImpl(this._self, this._then);

  final CityItemDto _self;
  final $Res Function(CityItemDto) _then;

/// Create a copy of CityItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityId = null,Object? cityName = null,}) {
  return _then(_self.copyWith(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CityItemDto].
extension CityItemDtoPatterns on CityItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityItemDto value)  $default,){
final _that = this;
switch (_that) {
case _CityItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _CityItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cityId,  String cityName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityItemDto() when $default != null:
return $default(_that.cityId,_that.cityName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cityId,  String cityName)  $default,) {final _that = this;
switch (_that) {
case _CityItemDto():
return $default(_that.cityId,_that.cityName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cityId,  String cityName)?  $default,) {final _that = this;
switch (_that) {
case _CityItemDto() when $default != null:
return $default(_that.cityId,_that.cityName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityItemDto implements CityItemDto {
  const _CityItemDto({required this.cityId, required this.cityName});
  factory _CityItemDto.fromJson(Map<String, dynamic> json) => _$CityItemDtoFromJson(json);

@override final  int cityId;
@override final  String cityName;

/// Create a copy of CityItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityItemDtoCopyWith<_CityItemDto> get copyWith => __$CityItemDtoCopyWithImpl<_CityItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityItemDto&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityId,cityName);

@override
String toString() {
  return 'CityItemDto(cityId: $cityId, cityName: $cityName)';
}


}

/// @nodoc
abstract mixin class _$CityItemDtoCopyWith<$Res> implements $CityItemDtoCopyWith<$Res> {
  factory _$CityItemDtoCopyWith(_CityItemDto value, $Res Function(_CityItemDto) _then) = __$CityItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int cityId, String cityName
});




}
/// @nodoc
class __$CityItemDtoCopyWithImpl<$Res>
    implements _$CityItemDtoCopyWith<$Res> {
  __$CityItemDtoCopyWithImpl(this._self, this._then);

  final _CityItemDto _self;
  final $Res Function(_CityItemDto) _then;

/// Create a copy of CityItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityId = null,Object? cityName = null,}) {
  return _then(_CityItemDto(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
