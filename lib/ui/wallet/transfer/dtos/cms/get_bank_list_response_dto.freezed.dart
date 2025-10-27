// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bank_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBankListResponseDto {

 String get statusCode; String get statusMessage; List<BankItemDto> get data;
/// Create a copy of GetBankListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBankListResponseDtoCopyWith<GetBankListResponseDto> get copyWith => _$GetBankListResponseDtoCopyWithImpl<GetBankListResponseDto>(this as GetBankListResponseDto, _$identity);

  /// Serializes this GetBankListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBankListResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetBankListResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetBankListResponseDtoCopyWith<$Res>  {
  factory $GetBankListResponseDtoCopyWith(GetBankListResponseDto value, $Res Function(GetBankListResponseDto) _then) = _$GetBankListResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, List<BankItemDto> data
});




}
/// @nodoc
class _$GetBankListResponseDtoCopyWithImpl<$Res>
    implements $GetBankListResponseDtoCopyWith<$Res> {
  _$GetBankListResponseDtoCopyWithImpl(this._self, this._then);

  final GetBankListResponseDto _self;
  final $Res Function(GetBankListResponseDto) _then;

/// Create a copy of GetBankListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BankItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBankListResponseDto].
extension GetBankListResponseDtoPatterns on GetBankListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBankListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBankListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBankListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetBankListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBankListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetBankListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<BankItemDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBankListResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<BankItemDto> data)  $default,) {final _that = this;
switch (_that) {
case _GetBankListResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  List<BankItemDto> data)?  $default,) {final _that = this;
switch (_that) {
case _GetBankListResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBankListResponseDto implements GetBankListResponseDto {
  const _GetBankListResponseDto({required this.statusCode, required this.statusMessage, required final  List<BankItemDto> data}): _data = data;
  factory _GetBankListResponseDto.fromJson(Map<String, dynamic> json) => _$GetBankListResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
 final  List<BankItemDto> _data;
@override List<BankItemDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetBankListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBankListResponseDtoCopyWith<_GetBankListResponseDto> get copyWith => __$GetBankListResponseDtoCopyWithImpl<_GetBankListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBankListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBankListResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetBankListResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetBankListResponseDtoCopyWith<$Res> implements $GetBankListResponseDtoCopyWith<$Res> {
  factory _$GetBankListResponseDtoCopyWith(_GetBankListResponseDto value, $Res Function(_GetBankListResponseDto) _then) = __$GetBankListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, List<BankItemDto> data
});




}
/// @nodoc
class __$GetBankListResponseDtoCopyWithImpl<$Res>
    implements _$GetBankListResponseDtoCopyWith<$Res> {
  __$GetBankListResponseDtoCopyWithImpl(this._self, this._then);

  final _GetBankListResponseDto _self;
  final $Res Function(_GetBankListResponseDto) _then;

/// Create a copy of GetBankListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_GetBankListResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BankItemDto>,
  ));
}


}


/// @nodoc
mixin _$BankItemDto {

 int get bankId; String get bankName; String get bankLogo;
/// Create a copy of BankItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankItemDtoCopyWith<BankItemDto> get copyWith => _$BankItemDtoCopyWithImpl<BankItemDto>(this as BankItemDto, _$identity);

  /// Serializes this BankItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankItemDto&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankLogo, bankLogo) || other.bankLogo == bankLogo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankId,bankName,bankLogo);

@override
String toString() {
  return 'BankItemDto(bankId: $bankId, bankName: $bankName, bankLogo: $bankLogo)';
}


}

/// @nodoc
abstract mixin class $BankItemDtoCopyWith<$Res>  {
  factory $BankItemDtoCopyWith(BankItemDto value, $Res Function(BankItemDto) _then) = _$BankItemDtoCopyWithImpl;
@useResult
$Res call({
 int bankId, String bankName, String bankLogo
});




}
/// @nodoc
class _$BankItemDtoCopyWithImpl<$Res>
    implements $BankItemDtoCopyWith<$Res> {
  _$BankItemDtoCopyWithImpl(this._self, this._then);

  final BankItemDto _self;
  final $Res Function(BankItemDto) _then;

/// Create a copy of BankItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankId = null,Object? bankName = null,Object? bankLogo = null,}) {
  return _then(_self.copyWith(
bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankLogo: null == bankLogo ? _self.bankLogo : bankLogo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BankItemDto].
extension BankItemDtoPatterns on BankItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankItemDto value)  $default,){
final _that = this;
switch (_that) {
case _BankItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _BankItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bankId,  String bankName,  String bankLogo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankItemDto() when $default != null:
return $default(_that.bankId,_that.bankName,_that.bankLogo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bankId,  String bankName,  String bankLogo)  $default,) {final _that = this;
switch (_that) {
case _BankItemDto():
return $default(_that.bankId,_that.bankName,_that.bankLogo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bankId,  String bankName,  String bankLogo)?  $default,) {final _that = this;
switch (_that) {
case _BankItemDto() when $default != null:
return $default(_that.bankId,_that.bankName,_that.bankLogo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankItemDto implements BankItemDto {
  const _BankItemDto({required this.bankId, required this.bankName, required this.bankLogo});
  factory _BankItemDto.fromJson(Map<String, dynamic> json) => _$BankItemDtoFromJson(json);

@override final  int bankId;
@override final  String bankName;
@override final  String bankLogo;

/// Create a copy of BankItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankItemDtoCopyWith<_BankItemDto> get copyWith => __$BankItemDtoCopyWithImpl<_BankItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankItemDto&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankLogo, bankLogo) || other.bankLogo == bankLogo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankId,bankName,bankLogo);

@override
String toString() {
  return 'BankItemDto(bankId: $bankId, bankName: $bankName, bankLogo: $bankLogo)';
}


}

/// @nodoc
abstract mixin class _$BankItemDtoCopyWith<$Res> implements $BankItemDtoCopyWith<$Res> {
  factory _$BankItemDtoCopyWith(_BankItemDto value, $Res Function(_BankItemDto) _then) = __$BankItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int bankId, String bankName, String bankLogo
});




}
/// @nodoc
class __$BankItemDtoCopyWithImpl<$Res>
    implements _$BankItemDtoCopyWith<$Res> {
  __$BankItemDtoCopyWithImpl(this._self, this._then);

  final _BankItemDto _self;
  final $Res Function(_BankItemDto) _then;

/// Create a copy of BankItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankId = null,Object? bankName = null,Object? bankLogo = null,}) {
  return _then(_BankItemDto(
bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankLogo: null == bankLogo ? _self.bankLogo : bankLogo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
