// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_account_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FetchAccountRequestDto {

 String get mobileNo;
/// Create a copy of FetchAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchAccountRequestDtoCopyWith<FetchAccountRequestDto> get copyWith => _$FetchAccountRequestDtoCopyWithImpl<FetchAccountRequestDto>(this as FetchAccountRequestDto, _$identity);

  /// Serializes this FetchAccountRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchAccountRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo);

@override
String toString() {
  return 'FetchAccountRequestDto(mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class $FetchAccountRequestDtoCopyWith<$Res>  {
  factory $FetchAccountRequestDtoCopyWith(FetchAccountRequestDto value, $Res Function(FetchAccountRequestDto) _then) = _$FetchAccountRequestDtoCopyWithImpl;
@useResult
$Res call({
 String mobileNo
});




}
/// @nodoc
class _$FetchAccountRequestDtoCopyWithImpl<$Res>
    implements $FetchAccountRequestDtoCopyWith<$Res> {
  _$FetchAccountRequestDtoCopyWithImpl(this._self, this._then);

  final FetchAccountRequestDto _self;
  final $Res Function(FetchAccountRequestDto) _then;

/// Create a copy of FetchAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNo = null,}) {
  return _then(_self.copyWith(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FetchAccountRequestDto].
extension FetchAccountRequestDtoPatterns on FetchAccountRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FetchAccountRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchAccountRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FetchAccountRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _FetchAccountRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FetchAccountRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _FetchAccountRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchAccountRequestDto() when $default != null:
return $default(_that.mobileNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileNo)  $default,) {final _that = this;
switch (_that) {
case _FetchAccountRequestDto():
return $default(_that.mobileNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileNo)?  $default,) {final _that = this;
switch (_that) {
case _FetchAccountRequestDto() when $default != null:
return $default(_that.mobileNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FetchAccountRequestDto implements FetchAccountRequestDto {
  const _FetchAccountRequestDto({required this.mobileNo});
  factory _FetchAccountRequestDto.fromJson(Map<String, dynamic> json) => _$FetchAccountRequestDtoFromJson(json);

@override final  String mobileNo;

/// Create a copy of FetchAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchAccountRequestDtoCopyWith<_FetchAccountRequestDto> get copyWith => __$FetchAccountRequestDtoCopyWithImpl<_FetchAccountRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FetchAccountRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchAccountRequestDto&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNo);

@override
String toString() {
  return 'FetchAccountRequestDto(mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class _$FetchAccountRequestDtoCopyWith<$Res> implements $FetchAccountRequestDtoCopyWith<$Res> {
  factory _$FetchAccountRequestDtoCopyWith(_FetchAccountRequestDto value, $Res Function(_FetchAccountRequestDto) _then) = __$FetchAccountRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String mobileNo
});




}
/// @nodoc
class __$FetchAccountRequestDtoCopyWithImpl<$Res>
    implements _$FetchAccountRequestDtoCopyWith<$Res> {
  __$FetchAccountRequestDtoCopyWithImpl(this._self, this._then);

  final _FetchAccountRequestDto _self;
  final $Res Function(_FetchAccountRequestDto) _then;

/// Create a copy of FetchAccountRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNo = null,}) {
  return _then(_FetchAccountRequestDto(
mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
