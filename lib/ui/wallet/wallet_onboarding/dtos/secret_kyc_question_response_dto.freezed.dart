// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secret_kyc_question_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecretKycQuestionResponseDto {

 List<String> get motherNameList; List<String> get birthPlaceList; String get triesLeft;
/// Create a copy of SecretKycQuestionResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecretKycQuestionResponseDtoCopyWith<SecretKycQuestionResponseDto> get copyWith => _$SecretKycQuestionResponseDtoCopyWithImpl<SecretKycQuestionResponseDto>(this as SecretKycQuestionResponseDto, _$identity);

  /// Serializes this SecretKycQuestionResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecretKycQuestionResponseDto&&const DeepCollectionEquality().equals(other.motherNameList, motherNameList)&&const DeepCollectionEquality().equals(other.birthPlaceList, birthPlaceList)&&(identical(other.triesLeft, triesLeft) || other.triesLeft == triesLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(motherNameList),const DeepCollectionEquality().hash(birthPlaceList),triesLeft);

@override
String toString() {
  return 'SecretKycQuestionResponseDto(motherNameList: $motherNameList, birthPlaceList: $birthPlaceList, triesLeft: $triesLeft)';
}


}

/// @nodoc
abstract mixin class $SecretKycQuestionResponseDtoCopyWith<$Res>  {
  factory $SecretKycQuestionResponseDtoCopyWith(SecretKycQuestionResponseDto value, $Res Function(SecretKycQuestionResponseDto) _then) = _$SecretKycQuestionResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<String> motherNameList, List<String> birthPlaceList, String triesLeft
});




}
/// @nodoc
class _$SecretKycQuestionResponseDtoCopyWithImpl<$Res>
    implements $SecretKycQuestionResponseDtoCopyWith<$Res> {
  _$SecretKycQuestionResponseDtoCopyWithImpl(this._self, this._then);

  final SecretKycQuestionResponseDto _self;
  final $Res Function(SecretKycQuestionResponseDto) _then;

/// Create a copy of SecretKycQuestionResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? motherNameList = null,Object? birthPlaceList = null,Object? triesLeft = null,}) {
  return _then(_self.copyWith(
motherNameList: null == motherNameList ? _self.motherNameList : motherNameList // ignore: cast_nullable_to_non_nullable
as List<String>,birthPlaceList: null == birthPlaceList ? _self.birthPlaceList : birthPlaceList // ignore: cast_nullable_to_non_nullable
as List<String>,triesLeft: null == triesLeft ? _self.triesLeft : triesLeft // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SecretKycQuestionResponseDto].
extension SecretKycQuestionResponseDtoPatterns on SecretKycQuestionResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecretKycQuestionResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecretKycQuestionResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecretKycQuestionResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SecretKycQuestionResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecretKycQuestionResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SecretKycQuestionResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> motherNameList,  List<String> birthPlaceList,  String triesLeft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecretKycQuestionResponseDto() when $default != null:
return $default(_that.motherNameList,_that.birthPlaceList,_that.triesLeft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> motherNameList,  List<String> birthPlaceList,  String triesLeft)  $default,) {final _that = this;
switch (_that) {
case _SecretKycQuestionResponseDto():
return $default(_that.motherNameList,_that.birthPlaceList,_that.triesLeft);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> motherNameList,  List<String> birthPlaceList,  String triesLeft)?  $default,) {final _that = this;
switch (_that) {
case _SecretKycQuestionResponseDto() when $default != null:
return $default(_that.motherNameList,_that.birthPlaceList,_that.triesLeft);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecretKycQuestionResponseDto implements SecretKycQuestionResponseDto {
  const _SecretKycQuestionResponseDto({final  List<String> motherNameList = const [], final  List<String> birthPlaceList = const [], required this.triesLeft}): _motherNameList = motherNameList,_birthPlaceList = birthPlaceList;
  factory _SecretKycQuestionResponseDto.fromJson(Map<String, dynamic> json) => _$SecretKycQuestionResponseDtoFromJson(json);

 final  List<String> _motherNameList;
@override@JsonKey() List<String> get motherNameList {
  if (_motherNameList is EqualUnmodifiableListView) return _motherNameList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_motherNameList);
}

 final  List<String> _birthPlaceList;
@override@JsonKey() List<String> get birthPlaceList {
  if (_birthPlaceList is EqualUnmodifiableListView) return _birthPlaceList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_birthPlaceList);
}

@override final  String triesLeft;

/// Create a copy of SecretKycQuestionResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecretKycQuestionResponseDtoCopyWith<_SecretKycQuestionResponseDto> get copyWith => __$SecretKycQuestionResponseDtoCopyWithImpl<_SecretKycQuestionResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecretKycQuestionResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecretKycQuestionResponseDto&&const DeepCollectionEquality().equals(other._motherNameList, _motherNameList)&&const DeepCollectionEquality().equals(other._birthPlaceList, _birthPlaceList)&&(identical(other.triesLeft, triesLeft) || other.triesLeft == triesLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_motherNameList),const DeepCollectionEquality().hash(_birthPlaceList),triesLeft);

@override
String toString() {
  return 'SecretKycQuestionResponseDto(motherNameList: $motherNameList, birthPlaceList: $birthPlaceList, triesLeft: $triesLeft)';
}


}

/// @nodoc
abstract mixin class _$SecretKycQuestionResponseDtoCopyWith<$Res> implements $SecretKycQuestionResponseDtoCopyWith<$Res> {
  factory _$SecretKycQuestionResponseDtoCopyWith(_SecretKycQuestionResponseDto value, $Res Function(_SecretKycQuestionResponseDto) _then) = __$SecretKycQuestionResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> motherNameList, List<String> birthPlaceList, String triesLeft
});




}
/// @nodoc
class __$SecretKycQuestionResponseDtoCopyWithImpl<$Res>
    implements _$SecretKycQuestionResponseDtoCopyWith<$Res> {
  __$SecretKycQuestionResponseDtoCopyWithImpl(this._self, this._then);

  final _SecretKycQuestionResponseDto _self;
  final $Res Function(_SecretKycQuestionResponseDto) _then;

/// Create a copy of SecretKycQuestionResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? motherNameList = null,Object? birthPlaceList = null,Object? triesLeft = null,}) {
  return _then(_SecretKycQuestionResponseDto(
motherNameList: null == motherNameList ? _self._motherNameList : motherNameList // ignore: cast_nullable_to_non_nullable
as List<String>,birthPlaceList: null == birthPlaceList ? _self._birthPlaceList : birthPlaceList // ignore: cast_nullable_to_non_nullable
as List<String>,triesLeft: null == triesLeft ? _self.triesLeft : triesLeft // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
