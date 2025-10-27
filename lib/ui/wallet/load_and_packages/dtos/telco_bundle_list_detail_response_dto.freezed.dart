// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telco_bundle_list_detail_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelcoBundleListDetailResponseDto {

 String get statusCode; String get statusMessage; List<BundleDetailDto> get data;
/// Create a copy of TelcoBundleListDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelcoBundleListDetailResponseDtoCopyWith<TelcoBundleListDetailResponseDto> get copyWith => _$TelcoBundleListDetailResponseDtoCopyWithImpl<TelcoBundleListDetailResponseDto>(this as TelcoBundleListDetailResponseDto, _$identity);

  /// Serializes this TelcoBundleListDetailResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelcoBundleListDetailResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TelcoBundleListDetailResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class $TelcoBundleListDetailResponseDtoCopyWith<$Res>  {
  factory $TelcoBundleListDetailResponseDtoCopyWith(TelcoBundleListDetailResponseDto value, $Res Function(TelcoBundleListDetailResponseDto) _then) = _$TelcoBundleListDetailResponseDtoCopyWithImpl;
@useResult
$Res call({
 String statusCode, String statusMessage, List<BundleDetailDto> data
});




}
/// @nodoc
class _$TelcoBundleListDetailResponseDtoCopyWithImpl<$Res>
    implements $TelcoBundleListDetailResponseDtoCopyWith<$Res> {
  _$TelcoBundleListDetailResponseDtoCopyWithImpl(this._self, this._then);

  final TelcoBundleListDetailResponseDto _self;
  final $Res Function(TelcoBundleListDetailResponseDto) _then;

/// Create a copy of TelcoBundleListDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BundleDetailDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TelcoBundleListDetailResponseDto].
extension TelcoBundleListDetailResponseDtoPatterns on TelcoBundleListDetailResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelcoBundleListDetailResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelcoBundleListDetailResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelcoBundleListDetailResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TelcoBundleListDetailResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelcoBundleListDetailResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelcoBundleListDetailResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<BundleDetailDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelcoBundleListDetailResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusCode,  String statusMessage,  List<BundleDetailDto> data)  $default,) {final _that = this;
switch (_that) {
case _TelcoBundleListDetailResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusCode,  String statusMessage,  List<BundleDetailDto> data)?  $default,) {final _that = this;
switch (_that) {
case _TelcoBundleListDetailResponseDto() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelcoBundleListDetailResponseDto implements TelcoBundleListDetailResponseDto {
  const _TelcoBundleListDetailResponseDto({required this.statusCode, required this.statusMessage, final  List<BundleDetailDto> data = const []}): _data = data;
  factory _TelcoBundleListDetailResponseDto.fromJson(Map<String, dynamic> json) => _$TelcoBundleListDetailResponseDtoFromJson(json);

@override final  String statusCode;
@override final  String statusMessage;
 final  List<BundleDetailDto> _data;
@override@JsonKey() List<BundleDetailDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of TelcoBundleListDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelcoBundleListDetailResponseDtoCopyWith<_TelcoBundleListDetailResponseDto> get copyWith => __$TelcoBundleListDetailResponseDtoCopyWithImpl<_TelcoBundleListDetailResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelcoBundleListDetailResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelcoBundleListDetailResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TelcoBundleListDetailResponseDto(statusCode: $statusCode, statusMessage: $statusMessage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TelcoBundleListDetailResponseDtoCopyWith<$Res> implements $TelcoBundleListDetailResponseDtoCopyWith<$Res> {
  factory _$TelcoBundleListDetailResponseDtoCopyWith(_TelcoBundleListDetailResponseDto value, $Res Function(_TelcoBundleListDetailResponseDto) _then) = __$TelcoBundleListDetailResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String statusCode, String statusMessage, List<BundleDetailDto> data
});




}
/// @nodoc
class __$TelcoBundleListDetailResponseDtoCopyWithImpl<$Res>
    implements _$TelcoBundleListDetailResponseDtoCopyWith<$Res> {
  __$TelcoBundleListDetailResponseDtoCopyWithImpl(this._self, this._then);

  final _TelcoBundleListDetailResponseDto _self;
  final $Res Function(_TelcoBundleListDetailResponseDto) _then;

/// Create a copy of TelcoBundleListDetailResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? statusMessage = null,Object? data = null,}) {
  return _then(_TelcoBundleListDetailResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BundleDetailDto>,
  ));
}


}


/// @nodoc
mixin _$BundleDetailDto {

 int get id; String? get validity; String? get discount; String? get price; String? get description; String? get data; int? get sms; String? get displayName; String? get bundleType; String? get oldPrice; int? get onMin; int? get offMin; int? get allMin;
/// Create a copy of BundleDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BundleDetailDtoCopyWith<BundleDetailDto> get copyWith => _$BundleDetailDtoCopyWithImpl<BundleDetailDto>(this as BundleDetailDto, _$identity);

  /// Serializes this BundleDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BundleDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.validity, validity) || other.validity == validity)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.data, data) || other.data == data)&&(identical(other.sms, sms) || other.sms == sms)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.bundleType, bundleType) || other.bundleType == bundleType)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.onMin, onMin) || other.onMin == onMin)&&(identical(other.offMin, offMin) || other.offMin == offMin)&&(identical(other.allMin, allMin) || other.allMin == allMin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,validity,discount,price,description,data,sms,displayName,bundleType,oldPrice,onMin,offMin,allMin);

@override
String toString() {
  return 'BundleDetailDto(id: $id, validity: $validity, discount: $discount, price: $price, description: $description, data: $data, sms: $sms, displayName: $displayName, bundleType: $bundleType, oldPrice: $oldPrice, onMin: $onMin, offMin: $offMin, allMin: $allMin)';
}


}

/// @nodoc
abstract mixin class $BundleDetailDtoCopyWith<$Res>  {
  factory $BundleDetailDtoCopyWith(BundleDetailDto value, $Res Function(BundleDetailDto) _then) = _$BundleDetailDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? validity, String? discount, String? price, String? description, String? data, int? sms, String? displayName, String? bundleType, String? oldPrice, int? onMin, int? offMin, int? allMin
});




}
/// @nodoc
class _$BundleDetailDtoCopyWithImpl<$Res>
    implements $BundleDetailDtoCopyWith<$Res> {
  _$BundleDetailDtoCopyWithImpl(this._self, this._then);

  final BundleDetailDto _self;
  final $Res Function(BundleDetailDto) _then;

/// Create a copy of BundleDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? validity = freezed,Object? discount = freezed,Object? price = freezed,Object? description = freezed,Object? data = freezed,Object? sms = freezed,Object? displayName = freezed,Object? bundleType = freezed,Object? oldPrice = freezed,Object? onMin = freezed,Object? offMin = freezed,Object? allMin = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,validity: freezed == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,sms: freezed == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as int?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,bundleType: freezed == bundleType ? _self.bundleType : bundleType // ignore: cast_nullable_to_non_nullable
as String?,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as String?,onMin: freezed == onMin ? _self.onMin : onMin // ignore: cast_nullable_to_non_nullable
as int?,offMin: freezed == offMin ? _self.offMin : offMin // ignore: cast_nullable_to_non_nullable
as int?,allMin: freezed == allMin ? _self.allMin : allMin // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BundleDetailDto].
extension BundleDetailDtoPatterns on BundleDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BundleDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BundleDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BundleDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _BundleDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BundleDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _BundleDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? validity,  String? discount,  String? price,  String? description,  String? data,  int? sms,  String? displayName,  String? bundleType,  String? oldPrice,  int? onMin,  int? offMin,  int? allMin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BundleDetailDto() when $default != null:
return $default(_that.id,_that.validity,_that.discount,_that.price,_that.description,_that.data,_that.sms,_that.displayName,_that.bundleType,_that.oldPrice,_that.onMin,_that.offMin,_that.allMin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? validity,  String? discount,  String? price,  String? description,  String? data,  int? sms,  String? displayName,  String? bundleType,  String? oldPrice,  int? onMin,  int? offMin,  int? allMin)  $default,) {final _that = this;
switch (_that) {
case _BundleDetailDto():
return $default(_that.id,_that.validity,_that.discount,_that.price,_that.description,_that.data,_that.sms,_that.displayName,_that.bundleType,_that.oldPrice,_that.onMin,_that.offMin,_that.allMin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? validity,  String? discount,  String? price,  String? description,  String? data,  int? sms,  String? displayName,  String? bundleType,  String? oldPrice,  int? onMin,  int? offMin,  int? allMin)?  $default,) {final _that = this;
switch (_that) {
case _BundleDetailDto() when $default != null:
return $default(_that.id,_that.validity,_that.discount,_that.price,_that.description,_that.data,_that.sms,_that.displayName,_that.bundleType,_that.oldPrice,_that.onMin,_that.offMin,_that.allMin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BundleDetailDto implements BundleDetailDto {
  const _BundleDetailDto({required this.id, this.validity, this.discount, this.price, this.description, this.data, this.sms, this.displayName, this.bundleType, this.oldPrice, this.onMin, this.offMin, this.allMin});
  factory _BundleDetailDto.fromJson(Map<String, dynamic> json) => _$BundleDetailDtoFromJson(json);

@override final  int id;
@override final  String? validity;
@override final  String? discount;
@override final  String? price;
@override final  String? description;
@override final  String? data;
@override final  int? sms;
@override final  String? displayName;
@override final  String? bundleType;
@override final  String? oldPrice;
@override final  int? onMin;
@override final  int? offMin;
@override final  int? allMin;

/// Create a copy of BundleDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BundleDetailDtoCopyWith<_BundleDetailDto> get copyWith => __$BundleDetailDtoCopyWithImpl<_BundleDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BundleDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BundleDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.validity, validity) || other.validity == validity)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.data, data) || other.data == data)&&(identical(other.sms, sms) || other.sms == sms)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.bundleType, bundleType) || other.bundleType == bundleType)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.onMin, onMin) || other.onMin == onMin)&&(identical(other.offMin, offMin) || other.offMin == offMin)&&(identical(other.allMin, allMin) || other.allMin == allMin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,validity,discount,price,description,data,sms,displayName,bundleType,oldPrice,onMin,offMin,allMin);

@override
String toString() {
  return 'BundleDetailDto(id: $id, validity: $validity, discount: $discount, price: $price, description: $description, data: $data, sms: $sms, displayName: $displayName, bundleType: $bundleType, oldPrice: $oldPrice, onMin: $onMin, offMin: $offMin, allMin: $allMin)';
}


}

/// @nodoc
abstract mixin class _$BundleDetailDtoCopyWith<$Res> implements $BundleDetailDtoCopyWith<$Res> {
  factory _$BundleDetailDtoCopyWith(_BundleDetailDto value, $Res Function(_BundleDetailDto) _then) = __$BundleDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? validity, String? discount, String? price, String? description, String? data, int? sms, String? displayName, String? bundleType, String? oldPrice, int? onMin, int? offMin, int? allMin
});




}
/// @nodoc
class __$BundleDetailDtoCopyWithImpl<$Res>
    implements _$BundleDetailDtoCopyWith<$Res> {
  __$BundleDetailDtoCopyWithImpl(this._self, this._then);

  final _BundleDetailDto _self;
  final $Res Function(_BundleDetailDto) _then;

/// Create a copy of BundleDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? validity = freezed,Object? discount = freezed,Object? price = freezed,Object? description = freezed,Object? data = freezed,Object? sms = freezed,Object? displayName = freezed,Object? bundleType = freezed,Object? oldPrice = freezed,Object? onMin = freezed,Object? offMin = freezed,Object? allMin = freezed,}) {
  return _then(_BundleDetailDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,validity: freezed == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,sms: freezed == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as int?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,bundleType: freezed == bundleType ? _self.bundleType : bundleType // ignore: cast_nullable_to_non_nullable
as String?,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as String?,onMin: freezed == onMin ? _self.onMin : onMin // ignore: cast_nullable_to_non_nullable
as int?,offMin: freezed == offMin ? _self.offMin : offMin // ignore: cast_nullable_to_non_nullable
as int?,allMin: freezed == allMin ? _self.allMin : allMin // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
