// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillListResponseDto {

 String get statusCode; String get statusMessage; List<BillerDto> get data;
/// Create a copy of BillListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillListResponseDtoCopyWith<BillListResponseDto> get copyWith => _$BillListResponseDtoCopyWithImpl<BillListResponseDto>(this as BillListResponseDto, _$identity);

  /// Serializes this BillListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillListResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BillListResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $BillListResponseDtoCopyWith<$Res>  {
  factory $BillListResponseDtoCopyWith(BillListResponseDto value, $Res Function(BillListResponseDto) _then) = _$BillListResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, List<BillerDto> data
});




}
/// @nodoc
class _$BillListResponseDtoCopyWithImpl<$Res>
    implements $BillListResponseDtoCopyWith<$Res> {
  _$BillListResponseDtoCopyWithImpl(this._self, this._then);

  final BillListResponseDto _self;
  final $Res Function(BillListResponseDto) _then;

/// Create a copy of BillListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BillerDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [BillListResponseDto].
extension BillListResponseDtoPatterns on BillListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BillListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<BillerDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillListResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<BillerDto> data)  $default,) {final _that = this;
switch (_that) {
case _BillListResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  List<BillerDto> data)?  $default,) {final _that = this;
switch (_that) {
case _BillListResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillListResponseDto implements BillListResponseDto {
  const _BillListResponseDto({required this.statusCode, required this.statusMessage, final  List<BillerDto> data = const []}): _data = data;
  factory _BillListResponseDto.fromJson(Map<String, dynamic> json) => _$BillListResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
 final  List<BillerDto> _data;
@override@JsonKey() List<BillerDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of BillListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillListResponseDtoCopyWith<_BillListResponseDto> get copyWith => __$BillListResponseDtoCopyWithImpl<_BillListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillListResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BillListResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BillListResponseDtoCopyWith<$Res> implements $BillListResponseDtoCopyWith<$Res> {
  factory _$BillListResponseDtoCopyWith(_BillListResponseDto value, $Res Function(_BillListResponseDto) _then) = __$BillListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, List<BillerDto> data
});




}
/// @nodoc
class __$BillListResponseDtoCopyWithImpl<$Res>
    implements _$BillListResponseDtoCopyWith<$Res> {
  __$BillListResponseDtoCopyWithImpl(this._self, this._then);

  final _BillListResponseDto _self;
  final $Res Function(_BillListResponseDto) _then;

/// Create a copy of BillListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_BillListResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BillerDto>,
  ));
}


}


/// @nodoc
mixin _$BillerDto {

 int? get billerId; String? get billerName; String? get billerLogo; int? get isPartialAllowed;
/// Create a copy of BillerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillerDtoCopyWith<BillerDto> get copyWith => _$BillerDtoCopyWithImpl<BillerDto>(this as BillerDto, _$identity);

  /// Serializes this BillerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillerDto&&(identical(other.billerId, billerId) || other.billerId == billerId)&&(identical(other.billerName, billerName) || other.billerName == billerName)&&(identical(other.billerLogo, billerLogo) || other.billerLogo == billerLogo)&&(identical(other.isPartialAllowed, isPartialAllowed) || other.isPartialAllowed == isPartialAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billerId,billerName,billerLogo,isPartialAllowed);

@override
String toString() {
  return 'BillerDto(billerId: $billerId, billerName: $billerName, billerLogo: $billerLogo, isPartialAllowed: $isPartialAllowed)';
}


}

/// @nodoc
abstract mixin class $BillerDtoCopyWith<$Res>  {
  factory $BillerDtoCopyWith(BillerDto value, $Res Function(BillerDto) _then) = _$BillerDtoCopyWithImpl;
@useResult
$Res call({
 int? billerId, String? billerName, String? billerLogo, int? isPartialAllowed
});




}
/// @nodoc
class _$BillerDtoCopyWithImpl<$Res>
    implements $BillerDtoCopyWith<$Res> {
  _$BillerDtoCopyWithImpl(this._self, this._then);

  final BillerDto _self;
  final $Res Function(BillerDto) _then;

/// Create a copy of BillerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? billerId = freezed,Object? billerName = freezed,Object? billerLogo = freezed,Object? isPartialAllowed = freezed,}) {
  return _then(_self.copyWith(
billerId: freezed == billerId ? _self.billerId : billerId // ignore: cast_nullable_to_non_nullable
as int?,billerName: freezed == billerName ? _self.billerName : billerName // ignore: cast_nullable_to_non_nullable
as String?,billerLogo: freezed == billerLogo ? _self.billerLogo : billerLogo // ignore: cast_nullable_to_non_nullable
as String?,isPartialAllowed: freezed == isPartialAllowed ? _self.isPartialAllowed : isPartialAllowed // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BillerDto].
extension BillerDtoPatterns on BillerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillerDto value)  $default,){
final _that = this;
switch (_that) {
case _BillerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillerDto value)?  $default,){
final _that = this;
switch (_that) {
case _BillerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? billerId,  String? billerName,  String? billerLogo,  int? isPartialAllowed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillerDto() when $default != null:
return $default(_that.billerId,_that.billerName,_that.billerLogo,_that.isPartialAllowed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? billerId,  String? billerName,  String? billerLogo,  int? isPartialAllowed)  $default,) {final _that = this;
switch (_that) {
case _BillerDto():
return $default(_that.billerId,_that.billerName,_that.billerLogo,_that.isPartialAllowed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? billerId,  String? billerName,  String? billerLogo,  int? isPartialAllowed)?  $default,) {final _that = this;
switch (_that) {
case _BillerDto() when $default != null:
return $default(_that.billerId,_that.billerName,_that.billerLogo,_that.isPartialAllowed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillerDto implements BillerDto {
  const _BillerDto({this.billerId, this.billerName, this.billerLogo, this.isPartialAllowed});
  factory _BillerDto.fromJson(Map<String, dynamic> json) => _$BillerDtoFromJson(json);

@override final  int? billerId;
@override final  String? billerName;
@override final  String? billerLogo;
@override final  int? isPartialAllowed;

/// Create a copy of BillerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillerDtoCopyWith<_BillerDto> get copyWith => __$BillerDtoCopyWithImpl<_BillerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillerDto&&(identical(other.billerId, billerId) || other.billerId == billerId)&&(identical(other.billerName, billerName) || other.billerName == billerName)&&(identical(other.billerLogo, billerLogo) || other.billerLogo == billerLogo)&&(identical(other.isPartialAllowed, isPartialAllowed) || other.isPartialAllowed == isPartialAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billerId,billerName,billerLogo,isPartialAllowed);

@override
String toString() {
  return 'BillerDto(billerId: $billerId, billerName: $billerName, billerLogo: $billerLogo, isPartialAllowed: $isPartialAllowed)';
}


}

/// @nodoc
abstract mixin class _$BillerDtoCopyWith<$Res> implements $BillerDtoCopyWith<$Res> {
  factory _$BillerDtoCopyWith(_BillerDto value, $Res Function(_BillerDto) _then) = __$BillerDtoCopyWithImpl;
@override @useResult
$Res call({
 int? billerId, String? billerName, String? billerLogo, int? isPartialAllowed
});




}
/// @nodoc
class __$BillerDtoCopyWithImpl<$Res>
    implements _$BillerDtoCopyWith<$Res> {
  __$BillerDtoCopyWithImpl(this._self, this._then);

  final _BillerDto _self;
  final $Res Function(_BillerDto) _then;

/// Create a copy of BillerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billerId = freezed,Object? billerName = freezed,Object? billerLogo = freezed,Object? isPartialAllowed = freezed,}) {
  return _then(_BillerDto(
billerId: freezed == billerId ? _self.billerId : billerId // ignore: cast_nullable_to_non_nullable
as int?,billerName: freezed == billerName ? _self.billerName : billerName // ignore: cast_nullable_to_non_nullable
as String?,billerLogo: freezed == billerLogo ? _self.billerLogo : billerLogo // ignore: cast_nullable_to_non_nullable
as String?,isPartialAllowed: freezed == isPartialAllowed ? _self.isPartialAllowed : isPartialAllowed // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
