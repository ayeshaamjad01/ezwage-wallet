// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_gl_statement_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetGlStatementResponseDto {

 List<GlTransactionDto>? get transactionList;
/// Create a copy of GetGlStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGlStatementResponseDtoCopyWith<GetGlStatementResponseDto> get copyWith => _$GetGlStatementResponseDtoCopyWithImpl<GetGlStatementResponseDto>(this as GetGlStatementResponseDto, _$identity);

  /// Serializes this GetGlStatementResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGlStatementResponseDto&&const DeepCollectionEquality().equals(other.transactionList, transactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactionList));

@override
String toString() {
  return 'GetGlStatementResponseDto(transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class $GetGlStatementResponseDtoCopyWith<$Res>  {
  factory $GetGlStatementResponseDtoCopyWith(GetGlStatementResponseDto value, $Res Function(GetGlStatementResponseDto) _then) = _$GetGlStatementResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<GlTransactionDto>? transactionList
});




}
/// @nodoc
class _$GetGlStatementResponseDtoCopyWithImpl<$Res>
    implements $GetGlStatementResponseDtoCopyWith<$Res> {
  _$GetGlStatementResponseDtoCopyWithImpl(this._self, this._then);

  final GetGlStatementResponseDto _self;
  final $Res Function(GetGlStatementResponseDto) _then;

/// Create a copy of GetGlStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionList = freezed,}) {
  return _then(_self.copyWith(
transactionList: freezed == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as List<GlTransactionDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGlStatementResponseDto].
extension GetGlStatementResponseDtoPatterns on GetGlStatementResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGlStatementResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGlStatementResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGlStatementResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetGlStatementResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGlStatementResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetGlStatementResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GlTransactionDto>? transactionList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGlStatementResponseDto() when $default != null:
return $default(_that.transactionList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GlTransactionDto>? transactionList)  $default,) {final _that = this;
switch (_that) {
case _GetGlStatementResponseDto():
return $default(_that.transactionList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GlTransactionDto>? transactionList)?  $default,) {final _that = this;
switch (_that) {
case _GetGlStatementResponseDto() when $default != null:
return $default(_that.transactionList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetGlStatementResponseDto implements GetGlStatementResponseDto {
  const _GetGlStatementResponseDto({final  List<GlTransactionDto>? transactionList}): _transactionList = transactionList;
  factory _GetGlStatementResponseDto.fromJson(Map<String, dynamic> json) => _$GetGlStatementResponseDtoFromJson(json);

 final  List<GlTransactionDto>? _transactionList;
@override List<GlTransactionDto>? get transactionList {
  final value = _transactionList;
  if (value == null) return null;
  if (_transactionList is EqualUnmodifiableListView) return _transactionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetGlStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGlStatementResponseDtoCopyWith<_GetGlStatementResponseDto> get copyWith => __$GetGlStatementResponseDtoCopyWithImpl<_GetGlStatementResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetGlStatementResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGlStatementResponseDto&&const DeepCollectionEquality().equals(other._transactionList, _transactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactionList));

@override
String toString() {
  return 'GetGlStatementResponseDto(transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class _$GetGlStatementResponseDtoCopyWith<$Res> implements $GetGlStatementResponseDtoCopyWith<$Res> {
  factory _$GetGlStatementResponseDtoCopyWith(_GetGlStatementResponseDto value, $Res Function(_GetGlStatementResponseDto) _then) = __$GetGlStatementResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<GlTransactionDto>? transactionList
});




}
/// @nodoc
class __$GetGlStatementResponseDtoCopyWithImpl<$Res>
    implements _$GetGlStatementResponseDtoCopyWith<$Res> {
  __$GetGlStatementResponseDtoCopyWithImpl(this._self, this._then);

  final _GetGlStatementResponseDto _self;
  final $Res Function(_GetGlStatementResponseDto) _then;

/// Create a copy of GetGlStatementResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionList = freezed,}) {
  return _then(_GetGlStatementResponseDto(
transactionList: freezed == transactionList ? _self._transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as List<GlTransactionDto>?,
  ));
}


}


/// @nodoc
mixin _$GlTransactionDto {

 String get taxAndFee; String get mobileNo; String get customerId; String get accountTitle; dynamic get extInfo;
/// Create a copy of GlTransactionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlTransactionDtoCopyWith<GlTransactionDto> get copyWith => _$GlTransactionDtoCopyWithImpl<GlTransactionDto>(this as GlTransactionDto, _$identity);

  /// Serializes this GlTransactionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlTransactionDto&&(identical(other.taxAndFee, taxAndFee) || other.taxAndFee == taxAndFee)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxAndFee,mobileNo,customerId,accountTitle,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'GlTransactionDto(taxAndFee: $taxAndFee, mobileNo: $mobileNo, customerId: $customerId, accountTitle: $accountTitle, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class $GlTransactionDtoCopyWith<$Res>  {
  factory $GlTransactionDtoCopyWith(GlTransactionDto value, $Res Function(GlTransactionDto) _then) = _$GlTransactionDtoCopyWithImpl;
@useResult
$Res call({
 String taxAndFee, String mobileNo, String customerId, String accountTitle, dynamic extInfo
});




}
/// @nodoc
class _$GlTransactionDtoCopyWithImpl<$Res>
    implements $GlTransactionDtoCopyWith<$Res> {
  _$GlTransactionDtoCopyWithImpl(this._self, this._then);

  final GlTransactionDto _self;
  final $Res Function(GlTransactionDto) _then;

/// Create a copy of GlTransactionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taxAndFee = null,Object? mobileNo = null,Object? customerId = null,Object? accountTitle = null,Object? extInfo = freezed,}) {
  return _then(_self.copyWith(
taxAndFee: null == taxAndFee ? _self.taxAndFee : taxAndFee // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,accountTitle: null == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String,extInfo: freezed == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [GlTransactionDto].
extension GlTransactionDtoPatterns on GlTransactionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlTransactionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlTransactionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlTransactionDto value)  $default,){
final _that = this;
switch (_that) {
case _GlTransactionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlTransactionDto value)?  $default,){
final _that = this;
switch (_that) {
case _GlTransactionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String taxAndFee,  String mobileNo,  String customerId,  String accountTitle,  dynamic extInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlTransactionDto() when $default != null:
return $default(_that.taxAndFee,_that.mobileNo,_that.customerId,_that.accountTitle,_that.extInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String taxAndFee,  String mobileNo,  String customerId,  String accountTitle,  dynamic extInfo)  $default,) {final _that = this;
switch (_that) {
case _GlTransactionDto():
return $default(_that.taxAndFee,_that.mobileNo,_that.customerId,_that.accountTitle,_that.extInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String taxAndFee,  String mobileNo,  String customerId,  String accountTitle,  dynamic extInfo)?  $default,) {final _that = this;
switch (_that) {
case _GlTransactionDto() when $default != null:
return $default(_that.taxAndFee,_that.mobileNo,_that.customerId,_that.accountTitle,_that.extInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GlTransactionDto implements GlTransactionDto {
  const _GlTransactionDto({required this.taxAndFee, required this.mobileNo, required this.customerId, required this.accountTitle, this.extInfo = const {}});
  factory _GlTransactionDto.fromJson(Map<String, dynamic> json) => _$GlTransactionDtoFromJson(json);

@override final  String taxAndFee;
@override final  String mobileNo;
@override final  String customerId;
@override final  String accountTitle;
@override@JsonKey() final  dynamic extInfo;

/// Create a copy of GlTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlTransactionDtoCopyWith<_GlTransactionDto> get copyWith => __$GlTransactionDtoCopyWithImpl<_GlTransactionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GlTransactionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlTransactionDto&&(identical(other.taxAndFee, taxAndFee) || other.taxAndFee == taxAndFee)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.accountTitle, accountTitle) || other.accountTitle == accountTitle)&&const DeepCollectionEquality().equals(other.extInfo, extInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxAndFee,mobileNo,customerId,accountTitle,const DeepCollectionEquality().hash(extInfo));

@override
String toString() {
  return 'GlTransactionDto(taxAndFee: $taxAndFee, mobileNo: $mobileNo, customerId: $customerId, accountTitle: $accountTitle, extInfo: $extInfo)';
}


}

/// @nodoc
abstract mixin class _$GlTransactionDtoCopyWith<$Res> implements $GlTransactionDtoCopyWith<$Res> {
  factory _$GlTransactionDtoCopyWith(_GlTransactionDto value, $Res Function(_GlTransactionDto) _then) = __$GlTransactionDtoCopyWithImpl;
@override @useResult
$Res call({
 String taxAndFee, String mobileNo, String customerId, String accountTitle, dynamic extInfo
});




}
/// @nodoc
class __$GlTransactionDtoCopyWithImpl<$Res>
    implements _$GlTransactionDtoCopyWith<$Res> {
  __$GlTransactionDtoCopyWithImpl(this._self, this._then);

  final _GlTransactionDto _self;
  final $Res Function(_GlTransactionDto) _then;

/// Create a copy of GlTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taxAndFee = null,Object? mobileNo = null,Object? customerId = null,Object? accountTitle = null,Object? extInfo = freezed,}) {
  return _then(_GlTransactionDto(
taxAndFee: null == taxAndFee ? _self.taxAndFee : taxAndFee // ignore: cast_nullable_to_non_nullable
as String,mobileNo: null == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,accountTitle: null == accountTitle ? _self.accountTitle : accountTitle // ignore: cast_nullable_to_non_nullable
as String,extInfo: freezed == extInfo ? _self.extInfo : extInfo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
