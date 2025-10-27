// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telco_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelcoListResponseDto {

 String get statusCode; String get statusMessage; List<TelcoDataDto>? get data;
/// Create a copy of TelcoListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelcoListResponseDtoCopyWith<TelcoListResponseDto> get copyWith => _$TelcoListResponseDtoCopyWithImpl<TelcoListResponseDto>(this as TelcoListResponseDto, _$identity);

  /// Serializes this TelcoListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelcoListResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TelcoListResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $TelcoListResponseDtoCopyWith<$Res>  {
  factory $TelcoListResponseDtoCopyWith(TelcoListResponseDto value, $Res Function(TelcoListResponseDto) _then) = _$TelcoListResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, List<TelcoDataDto>? data
});




}
/// @nodoc
class _$TelcoListResponseDtoCopyWithImpl<$Res>
    implements $TelcoListResponseDtoCopyWith<$Res> {
  _$TelcoListResponseDtoCopyWithImpl(this._self, this._then);

  final TelcoListResponseDto _self;
  final $Res Function(TelcoListResponseDto) _then;

/// Create a copy of TelcoListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<TelcoDataDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TelcoListResponseDto].
extension TelcoListResponseDtoPatterns on TelcoListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelcoListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelcoListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelcoListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TelcoListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelcoListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelcoListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<TelcoDataDto>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelcoListResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<TelcoDataDto>? data)  $default,) {final _that = this;
switch (_that) {
case _TelcoListResponseDto():
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  List<TelcoDataDto>? data)?  $default,) {final _that = this;
switch (_that) {
case _TelcoListResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelcoListResponseDto implements TelcoListResponseDto {
  const _TelcoListResponseDto({required this.statusCode, required this.statusMessage, final  List<TelcoDataDto>? data}): _data = data;
  factory _TelcoListResponseDto.fromJson(Map<String, dynamic> json) => _$TelcoListResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
 final  List<TelcoDataDto>? _data;
@override List<TelcoDataDto>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TelcoListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelcoListResponseDtoCopyWith<_TelcoListResponseDto> get copyWith => __$TelcoListResponseDtoCopyWithImpl<_TelcoListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelcoListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelcoListResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TelcoListResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TelcoListResponseDtoCopyWith<$Res> implements $TelcoListResponseDtoCopyWith<$Res> {
  factory _$TelcoListResponseDtoCopyWith(_TelcoListResponseDto value, $Res Function(_TelcoListResponseDto) _then) = __$TelcoListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, List<TelcoDataDto>? data
});




}
/// @nodoc
class __$TelcoListResponseDtoCopyWithImpl<$Res>
    implements _$TelcoListResponseDtoCopyWith<$Res> {
  __$TelcoListResponseDtoCopyWithImpl(this._self, this._then);

  final _TelcoListResponseDto _self;
  final $Res Function(_TelcoListResponseDto) _then;

/// Create a copy of TelcoListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = freezed,}) {
  return _then(_TelcoListResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<TelcoDataDto>?,
  ));
}


}


/// @nodoc
mixin _$TelcoDataDto {

 int? get telcoId; String? get telcoName; String? get image;
/// Create a copy of TelcoDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelcoDataDtoCopyWith<TelcoDataDto> get copyWith => _$TelcoDataDtoCopyWithImpl<TelcoDataDto>(this as TelcoDataDto, _$identity);

  /// Serializes this TelcoDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelcoDataDto&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.telcoName, telcoName) || other.telcoName == telcoName)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,telcoId,telcoName,image);

@override
String toString() {
  return 'TelcoDataDto(telcoId: $telcoId, telcoName: $telcoName, image: $image)';
}


}

/// @nodoc
abstract mixin class $TelcoDataDtoCopyWith<$Res>  {
  factory $TelcoDataDtoCopyWith(TelcoDataDto value, $Res Function(TelcoDataDto) _then) = _$TelcoDataDtoCopyWithImpl;
@useResult
$Res call({
 int? telcoId, String? telcoName, String? image
});




}
/// @nodoc
class _$TelcoDataDtoCopyWithImpl<$Res>
    implements $TelcoDataDtoCopyWith<$Res> {
  _$TelcoDataDtoCopyWithImpl(this._self, this._then);

  final TelcoDataDto _self;
  final $Res Function(TelcoDataDto) _then;

/// Create a copy of TelcoDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? telcoId = freezed,Object? telcoName = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
telcoId: freezed == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as int?,telcoName: freezed == telcoName ? _self.telcoName : telcoName // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TelcoDataDto].
extension TelcoDataDtoPatterns on TelcoDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelcoDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelcoDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelcoDataDto value)  $default,){
final _that = this;
switch (_that) {
case _TelcoDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelcoDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelcoDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? telcoId,  String? telcoName,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelcoDataDto() when $default != null:
return $default(_that.telcoId,_that.telcoName,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? telcoId,  String? telcoName,  String? image)  $default,) {final _that = this;
switch (_that) {
case _TelcoDataDto():
return $default(_that.telcoId,_that.telcoName,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? telcoId,  String? telcoName,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _TelcoDataDto() when $default != null:
return $default(_that.telcoId,_that.telcoName,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelcoDataDto implements TelcoDataDto {
  const _TelcoDataDto({this.telcoId, this.telcoName, this.image});
  factory _TelcoDataDto.fromJson(Map<String, dynamic> json) => _$TelcoDataDtoFromJson(json);

@override final  int? telcoId;
@override final  String? telcoName;
@override final  String? image;

/// Create a copy of TelcoDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelcoDataDtoCopyWith<_TelcoDataDto> get copyWith => __$TelcoDataDtoCopyWithImpl<_TelcoDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelcoDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelcoDataDto&&(identical(other.telcoId, telcoId) || other.telcoId == telcoId)&&(identical(other.telcoName, telcoName) || other.telcoName == telcoName)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,telcoId,telcoName,image);

@override
String toString() {
  return 'TelcoDataDto(telcoId: $telcoId, telcoName: $telcoName, image: $image)';
}


}

/// @nodoc
abstract mixin class _$TelcoDataDtoCopyWith<$Res> implements $TelcoDataDtoCopyWith<$Res> {
  factory _$TelcoDataDtoCopyWith(_TelcoDataDto value, $Res Function(_TelcoDataDto) _then) = __$TelcoDataDtoCopyWithImpl;
@override @useResult
$Res call({
 int? telcoId, String? telcoName, String? image
});




}
/// @nodoc
class __$TelcoDataDtoCopyWithImpl<$Res>
    implements _$TelcoDataDtoCopyWith<$Res> {
  __$TelcoDataDtoCopyWithImpl(this._self, this._then);

  final _TelcoDataDto _self;
  final $Res Function(_TelcoDataDto) _then;

/// Create a copy of TelcoDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? telcoId = freezed,Object? telcoName = freezed,Object? image = freezed,}) {
  return _then(_TelcoDataDto(
telcoId: freezed == telcoId ? _self.telcoId : telcoId // ignore: cast_nullable_to_non_nullable
as int?,telcoName: freezed == telcoName ? _self.telcoName : telcoName // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
