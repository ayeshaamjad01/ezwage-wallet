// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_purpose_of_payment_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetPurposeOfPaymentListResponseDto {

 List<PurposeOfPaymentItemDto> get data;
/// Create a copy of GetPurposeOfPaymentListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPurposeOfPaymentListResponseDtoCopyWith<GetPurposeOfPaymentListResponseDto> get copyWith => _$GetPurposeOfPaymentListResponseDtoCopyWithImpl<GetPurposeOfPaymentListResponseDto>(this as GetPurposeOfPaymentListResponseDto, _$identity);

  /// Serializes this GetPurposeOfPaymentListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPurposeOfPaymentListResponseDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetPurposeOfPaymentListResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetPurposeOfPaymentListResponseDtoCopyWith<$Res>  {
  factory $GetPurposeOfPaymentListResponseDtoCopyWith(GetPurposeOfPaymentListResponseDto value, $Res Function(GetPurposeOfPaymentListResponseDto) _then) = _$GetPurposeOfPaymentListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<PurposeOfPaymentItemDto> data
});




}
/// @nodoc
class _$GetPurposeOfPaymentListResponseDtoCopyWithImpl<$Res>
    implements $GetPurposeOfPaymentListResponseDtoCopyWith<$Res> {
  _$GetPurposeOfPaymentListResponseDtoCopyWithImpl(this._self, this._then);

  final GetPurposeOfPaymentListResponseDto _self;
  final $Res Function(GetPurposeOfPaymentListResponseDto) _then;

/// Create a copy of GetPurposeOfPaymentListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PurposeOfPaymentItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPurposeOfPaymentListResponseDto].
extension GetPurposeOfPaymentListResponseDtoPatterns on GetPurposeOfPaymentListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPurposeOfPaymentListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPurposeOfPaymentListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPurposeOfPaymentListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PurposeOfPaymentItemDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PurposeOfPaymentItemDto> data)  $default,) {final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PurposeOfPaymentItemDto> data)?  $default,) {final _that = this;
switch (_that) {
case _GetPurposeOfPaymentListResponseDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetPurposeOfPaymentListResponseDto implements GetPurposeOfPaymentListResponseDto {
  const _GetPurposeOfPaymentListResponseDto({required final  List<PurposeOfPaymentItemDto> data}): _data = data;
  factory _GetPurposeOfPaymentListResponseDto.fromJson(Map<String, dynamic> json) => _$GetPurposeOfPaymentListResponseDtoFromJson(json);

 final  List<PurposeOfPaymentItemDto> _data;
@override List<PurposeOfPaymentItemDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetPurposeOfPaymentListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPurposeOfPaymentListResponseDtoCopyWith<_GetPurposeOfPaymentListResponseDto> get copyWith => __$GetPurposeOfPaymentListResponseDtoCopyWithImpl<_GetPurposeOfPaymentListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetPurposeOfPaymentListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPurposeOfPaymentListResponseDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetPurposeOfPaymentListResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetPurposeOfPaymentListResponseDtoCopyWith<$Res> implements $GetPurposeOfPaymentListResponseDtoCopyWith<$Res> {
  factory _$GetPurposeOfPaymentListResponseDtoCopyWith(_GetPurposeOfPaymentListResponseDto value, $Res Function(_GetPurposeOfPaymentListResponseDto) _then) = __$GetPurposeOfPaymentListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<PurposeOfPaymentItemDto> data
});




}
/// @nodoc
class __$GetPurposeOfPaymentListResponseDtoCopyWithImpl<$Res>
    implements _$GetPurposeOfPaymentListResponseDtoCopyWith<$Res> {
  __$GetPurposeOfPaymentListResponseDtoCopyWithImpl(this._self, this._then);

  final _GetPurposeOfPaymentListResponseDto _self;
  final $Res Function(_GetPurposeOfPaymentListResponseDto) _then;

/// Create a copy of GetPurposeOfPaymentListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_GetPurposeOfPaymentListResponseDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PurposeOfPaymentItemDto>,
  ));
}


}


/// @nodoc
mixin _$PurposeOfPaymentItemDto {

 int get purposeId; String get purposeName;
/// Create a copy of PurposeOfPaymentItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurposeOfPaymentItemDtoCopyWith<PurposeOfPaymentItemDto> get copyWith => _$PurposeOfPaymentItemDtoCopyWithImpl<PurposeOfPaymentItemDto>(this as PurposeOfPaymentItemDto, _$identity);

  /// Serializes this PurposeOfPaymentItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurposeOfPaymentItemDto&&(identical(other.purposeId, purposeId) || other.purposeId == purposeId)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purposeId,purposeName);

@override
String toString() {
  return 'PurposeOfPaymentItemDto(purposeId: $purposeId, purposeName: $purposeName)';
}


}

/// @nodoc
abstract mixin class $PurposeOfPaymentItemDtoCopyWith<$Res>  {
  factory $PurposeOfPaymentItemDtoCopyWith(PurposeOfPaymentItemDto value, $Res Function(PurposeOfPaymentItemDto) _then) = _$PurposeOfPaymentItemDtoCopyWithImpl;
@useResult
$Res call({
 int purposeId, String purposeName
});




}
/// @nodoc
class _$PurposeOfPaymentItemDtoCopyWithImpl<$Res>
    implements $PurposeOfPaymentItemDtoCopyWith<$Res> {
  _$PurposeOfPaymentItemDtoCopyWithImpl(this._self, this._then);

  final PurposeOfPaymentItemDto _self;
  final $Res Function(PurposeOfPaymentItemDto) _then;

/// Create a copy of PurposeOfPaymentItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purposeId = null,Object? purposeName = null,}) {
  return _then(_self.copyWith(
purposeId: null == purposeId ? _self.purposeId : purposeId // ignore: cast_nullable_to_non_nullable
as int,purposeName: null == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PurposeOfPaymentItemDto].
extension PurposeOfPaymentItemDtoPatterns on PurposeOfPaymentItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurposeOfPaymentItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurposeOfPaymentItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurposeOfPaymentItemDto value)  $default,){
final _that = this;
switch (_that) {
case _PurposeOfPaymentItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurposeOfPaymentItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _PurposeOfPaymentItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int purposeId,  String purposeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurposeOfPaymentItemDto() when $default != null:
return $default(_that.purposeId,_that.purposeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int purposeId,  String purposeName)  $default,) {final _that = this;
switch (_that) {
case _PurposeOfPaymentItemDto():
return $default(_that.purposeId,_that.purposeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int purposeId,  String purposeName)?  $default,) {final _that = this;
switch (_that) {
case _PurposeOfPaymentItemDto() when $default != null:
return $default(_that.purposeId,_that.purposeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurposeOfPaymentItemDto implements PurposeOfPaymentItemDto {
  const _PurposeOfPaymentItemDto({required this.purposeId, required this.purposeName});
  factory _PurposeOfPaymentItemDto.fromJson(Map<String, dynamic> json) => _$PurposeOfPaymentItemDtoFromJson(json);

@override final  int purposeId;
@override final  String purposeName;

/// Create a copy of PurposeOfPaymentItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurposeOfPaymentItemDtoCopyWith<_PurposeOfPaymentItemDto> get copyWith => __$PurposeOfPaymentItemDtoCopyWithImpl<_PurposeOfPaymentItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurposeOfPaymentItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurposeOfPaymentItemDto&&(identical(other.purposeId, purposeId) || other.purposeId == purposeId)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purposeId,purposeName);

@override
String toString() {
  return 'PurposeOfPaymentItemDto(purposeId: $purposeId, purposeName: $purposeName)';
}


}

/// @nodoc
abstract mixin class _$PurposeOfPaymentItemDtoCopyWith<$Res> implements $PurposeOfPaymentItemDtoCopyWith<$Res> {
  factory _$PurposeOfPaymentItemDtoCopyWith(_PurposeOfPaymentItemDto value, $Res Function(_PurposeOfPaymentItemDto) _then) = __$PurposeOfPaymentItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int purposeId, String purposeName
});




}
/// @nodoc
class __$PurposeOfPaymentItemDtoCopyWithImpl<$Res>
    implements _$PurposeOfPaymentItemDtoCopyWith<$Res> {
  __$PurposeOfPaymentItemDtoCopyWithImpl(this._self, this._then);

  final _PurposeOfPaymentItemDto _self;
  final $Res Function(_PurposeOfPaymentItemDto) _then;

/// Create a copy of PurposeOfPaymentItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purposeId = null,Object? purposeName = null,}) {
  return _then(_PurposeOfPaymentItemDto(
purposeId: null == purposeId ? _self.purposeId : purposeId // ignore: cast_nullable_to_non_nullable
as int,purposeName: null == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
