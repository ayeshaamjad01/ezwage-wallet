// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_wallet_limits_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetWalletLimitsResponseDto {

 String get dailyLimit; String get monthlyLimit; String get yearlyLimit; String get remainingDailyLimit; String get remainingMonthlyLimit; String get remainingYearlyLimit;
/// Create a copy of GetWalletLimitsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWalletLimitsResponseDtoCopyWith<GetWalletLimitsResponseDto> get copyWith => _$GetWalletLimitsResponseDtoCopyWithImpl<GetWalletLimitsResponseDto>(this as GetWalletLimitsResponseDto, _$identity);

  /// Serializes this GetWalletLimitsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWalletLimitsResponseDto&&(identical(other.dailyLimit, dailyLimit) || other.dailyLimit == dailyLimit)&&(identical(other.monthlyLimit, monthlyLimit) || other.monthlyLimit == monthlyLimit)&&(identical(other.yearlyLimit, yearlyLimit) || other.yearlyLimit == yearlyLimit)&&(identical(other.remainingDailyLimit, remainingDailyLimit) || other.remainingDailyLimit == remainingDailyLimit)&&(identical(other.remainingMonthlyLimit, remainingMonthlyLimit) || other.remainingMonthlyLimit == remainingMonthlyLimit)&&(identical(other.remainingYearlyLimit, remainingYearlyLimit) || other.remainingYearlyLimit == remainingYearlyLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dailyLimit,monthlyLimit,yearlyLimit,remainingDailyLimit,remainingMonthlyLimit,remainingYearlyLimit);

@override
String toString() {
  return 'GetWalletLimitsResponseDto(dailyLimit: $dailyLimit, monthlyLimit: $monthlyLimit, yearlyLimit: $yearlyLimit, remainingDailyLimit: $remainingDailyLimit, remainingMonthlyLimit: $remainingMonthlyLimit, remainingYearlyLimit: $remainingYearlyLimit)';
}


}

/// @nodoc
abstract mixin class $GetWalletLimitsResponseDtoCopyWith<$Res>  {
  factory $GetWalletLimitsResponseDtoCopyWith(GetWalletLimitsResponseDto value, $Res Function(GetWalletLimitsResponseDto) _then) = _$GetWalletLimitsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String dailyLimit, String monthlyLimit, String yearlyLimit, String remainingDailyLimit, String remainingMonthlyLimit, String remainingYearlyLimit
});




}
/// @nodoc
class _$GetWalletLimitsResponseDtoCopyWithImpl<$Res>
    implements $GetWalletLimitsResponseDtoCopyWith<$Res> {
  _$GetWalletLimitsResponseDtoCopyWithImpl(this._self, this._then);

  final GetWalletLimitsResponseDto _self;
  final $Res Function(GetWalletLimitsResponseDto) _then;

/// Create a copy of GetWalletLimitsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dailyLimit = null,Object? monthlyLimit = null,Object? yearlyLimit = null,Object? remainingDailyLimit = null,Object? remainingMonthlyLimit = null,Object? remainingYearlyLimit = null,}) {
  return _then(_self.copyWith(
dailyLimit: null == dailyLimit ? _self.dailyLimit : dailyLimit // ignore: cast_nullable_to_non_nullable
as String,monthlyLimit: null == monthlyLimit ? _self.monthlyLimit : monthlyLimit // ignore: cast_nullable_to_non_nullable
as String,yearlyLimit: null == yearlyLimit ? _self.yearlyLimit : yearlyLimit // ignore: cast_nullable_to_non_nullable
as String,remainingDailyLimit: null == remainingDailyLimit ? _self.remainingDailyLimit : remainingDailyLimit // ignore: cast_nullable_to_non_nullable
as String,remainingMonthlyLimit: null == remainingMonthlyLimit ? _self.remainingMonthlyLimit : remainingMonthlyLimit // ignore: cast_nullable_to_non_nullable
as String,remainingYearlyLimit: null == remainingYearlyLimit ? _self.remainingYearlyLimit : remainingYearlyLimit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWalletLimitsResponseDto].
extension GetWalletLimitsResponseDtoPatterns on GetWalletLimitsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWalletLimitsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWalletLimitsResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWalletLimitsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _GetWalletLimitsResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWalletLimitsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetWalletLimitsResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dailyLimit,  String monthlyLimit,  String yearlyLimit,  String remainingDailyLimit,  String remainingMonthlyLimit,  String remainingYearlyLimit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetWalletLimitsResponseDto() when $default != null:
return $default(_that.dailyLimit,_that.monthlyLimit,_that.yearlyLimit,_that.remainingDailyLimit,_that.remainingMonthlyLimit,_that.remainingYearlyLimit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dailyLimit,  String monthlyLimit,  String yearlyLimit,  String remainingDailyLimit,  String remainingMonthlyLimit,  String remainingYearlyLimit)  $default,) {final _that = this;
switch (_that) {
case _GetWalletLimitsResponseDto():
return $default(_that.dailyLimit,_that.monthlyLimit,_that.yearlyLimit,_that.remainingDailyLimit,_that.remainingMonthlyLimit,_that.remainingYearlyLimit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dailyLimit,  String monthlyLimit,  String yearlyLimit,  String remainingDailyLimit,  String remainingMonthlyLimit,  String remainingYearlyLimit)?  $default,) {final _that = this;
switch (_that) {
case _GetWalletLimitsResponseDto() when $default != null:
return $default(_that.dailyLimit,_that.monthlyLimit,_that.yearlyLimit,_that.remainingDailyLimit,_that.remainingMonthlyLimit,_that.remainingYearlyLimit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetWalletLimitsResponseDto implements GetWalletLimitsResponseDto {
  const _GetWalletLimitsResponseDto({required this.dailyLimit, required this.monthlyLimit, required this.yearlyLimit, required this.remainingDailyLimit, required this.remainingMonthlyLimit, required this.remainingYearlyLimit});
  factory _GetWalletLimitsResponseDto.fromJson(Map<String, dynamic> json) => _$GetWalletLimitsResponseDtoFromJson(json);

@override final  String dailyLimit;
@override final  String monthlyLimit;
@override final  String yearlyLimit;
@override final  String remainingDailyLimit;
@override final  String remainingMonthlyLimit;
@override final  String remainingYearlyLimit;

/// Create a copy of GetWalletLimitsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWalletLimitsResponseDtoCopyWith<_GetWalletLimitsResponseDto> get copyWith => __$GetWalletLimitsResponseDtoCopyWithImpl<_GetWalletLimitsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetWalletLimitsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWalletLimitsResponseDto&&(identical(other.dailyLimit, dailyLimit) || other.dailyLimit == dailyLimit)&&(identical(other.monthlyLimit, monthlyLimit) || other.monthlyLimit == monthlyLimit)&&(identical(other.yearlyLimit, yearlyLimit) || other.yearlyLimit == yearlyLimit)&&(identical(other.remainingDailyLimit, remainingDailyLimit) || other.remainingDailyLimit == remainingDailyLimit)&&(identical(other.remainingMonthlyLimit, remainingMonthlyLimit) || other.remainingMonthlyLimit == remainingMonthlyLimit)&&(identical(other.remainingYearlyLimit, remainingYearlyLimit) || other.remainingYearlyLimit == remainingYearlyLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dailyLimit,monthlyLimit,yearlyLimit,remainingDailyLimit,remainingMonthlyLimit,remainingYearlyLimit);

@override
String toString() {
  return 'GetWalletLimitsResponseDto(dailyLimit: $dailyLimit, monthlyLimit: $monthlyLimit, yearlyLimit: $yearlyLimit, remainingDailyLimit: $remainingDailyLimit, remainingMonthlyLimit: $remainingMonthlyLimit, remainingYearlyLimit: $remainingYearlyLimit)';
}


}

/// @nodoc
abstract mixin class _$GetWalletLimitsResponseDtoCopyWith<$Res> implements $GetWalletLimitsResponseDtoCopyWith<$Res> {
  factory _$GetWalletLimitsResponseDtoCopyWith(_GetWalletLimitsResponseDto value, $Res Function(_GetWalletLimitsResponseDto) _then) = __$GetWalletLimitsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String dailyLimit, String monthlyLimit, String yearlyLimit, String remainingDailyLimit, String remainingMonthlyLimit, String remainingYearlyLimit
});




}
/// @nodoc
class __$GetWalletLimitsResponseDtoCopyWithImpl<$Res>
    implements _$GetWalletLimitsResponseDtoCopyWith<$Res> {
  __$GetWalletLimitsResponseDtoCopyWithImpl(this._self, this._then);

  final _GetWalletLimitsResponseDto _self;
  final $Res Function(_GetWalletLimitsResponseDto) _then;

/// Create a copy of GetWalletLimitsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dailyLimit = null,Object? monthlyLimit = null,Object? yearlyLimit = null,Object? remainingDailyLimit = null,Object? remainingMonthlyLimit = null,Object? remainingYearlyLimit = null,}) {
  return _then(_GetWalletLimitsResponseDto(
dailyLimit: null == dailyLimit ? _self.dailyLimit : dailyLimit // ignore: cast_nullable_to_non_nullable
as String,monthlyLimit: null == monthlyLimit ? _self.monthlyLimit : monthlyLimit // ignore: cast_nullable_to_non_nullable
as String,yearlyLimit: null == yearlyLimit ? _self.yearlyLimit : yearlyLimit // ignore: cast_nullable_to_non_nullable
as String,remainingDailyLimit: null == remainingDailyLimit ? _self.remainingDailyLimit : remainingDailyLimit // ignore: cast_nullable_to_non_nullable
as String,remainingMonthlyLimit: null == remainingMonthlyLimit ? _self.remainingMonthlyLimit : remainingMonthlyLimit // ignore: cast_nullable_to_non_nullable
as String,remainingYearlyLimit: null == remainingYearlyLimit ? _self.remainingYearlyLimit : remainingYearlyLimit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
