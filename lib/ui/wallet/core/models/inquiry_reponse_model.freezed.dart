// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inquiry_reponse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InquiryResponseModel {

 String get verificationToken; VerificationMethod get verificationMethod;
/// Create a copy of InquiryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InquiryResponseModelCopyWith<InquiryResponseModel> get copyWith => _$InquiryResponseModelCopyWithImpl<InquiryResponseModel>(this as InquiryResponseModel, _$identity);

  /// Serializes this InquiryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InquiryResponseModel&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationToken,verificationMethod);

@override
String toString() {
  return 'InquiryResponseModel(verificationToken: $verificationToken, verificationMethod: $verificationMethod)';
}


}

/// @nodoc
abstract mixin class $InquiryResponseModelCopyWith<$Res>  {
  factory $InquiryResponseModelCopyWith(InquiryResponseModel value, $Res Function(InquiryResponseModel) _then) = _$InquiryResponseModelCopyWithImpl;
@useResult
$Res call({
 String verificationToken, VerificationMethod verificationMethod
});




}
/// @nodoc
class _$InquiryResponseModelCopyWithImpl<$Res>
    implements $InquiryResponseModelCopyWith<$Res> {
  _$InquiryResponseModelCopyWithImpl(this._self, this._then);

  final InquiryResponseModel _self;
  final $Res Function(InquiryResponseModel) _then;

/// Create a copy of InquiryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verificationToken = null,Object? verificationMethod = null,}) {
  return _then(_self.copyWith(
verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,
  ));
}

}


/// Adds pattern-matching-related methods to [InquiryResponseModel].
extension InquiryResponseModelPatterns on InquiryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InquiryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InquiryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InquiryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _InquiryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InquiryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _InquiryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String verificationToken,  VerificationMethod verificationMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InquiryResponseModel() when $default != null:
return $default(_that.verificationToken,_that.verificationMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String verificationToken,  VerificationMethod verificationMethod)  $default,) {final _that = this;
switch (_that) {
case _InquiryResponseModel():
return $default(_that.verificationToken,_that.verificationMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String verificationToken,  VerificationMethod verificationMethod)?  $default,) {final _that = this;
switch (_that) {
case _InquiryResponseModel() when $default != null:
return $default(_that.verificationToken,_that.verificationMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InquiryResponseModel implements InquiryResponseModel {
  const _InquiryResponseModel({required this.verificationToken, this.verificationMethod = VerificationMethod.otp});
  factory _InquiryResponseModel.fromJson(Map<String, dynamic> json) => _$InquiryResponseModelFromJson(json);

@override final  String verificationToken;
@override@JsonKey() final  VerificationMethod verificationMethod;

/// Create a copy of InquiryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InquiryResponseModelCopyWith<_InquiryResponseModel> get copyWith => __$InquiryResponseModelCopyWithImpl<_InquiryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InquiryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InquiryResponseModel&&(identical(other.verificationToken, verificationToken) || other.verificationToken == verificationToken)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verificationToken,verificationMethod);

@override
String toString() {
  return 'InquiryResponseModel(verificationToken: $verificationToken, verificationMethod: $verificationMethod)';
}


}

/// @nodoc
abstract mixin class _$InquiryResponseModelCopyWith<$Res> implements $InquiryResponseModelCopyWith<$Res> {
  factory _$InquiryResponseModelCopyWith(_InquiryResponseModel value, $Res Function(_InquiryResponseModel) _then) = __$InquiryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String verificationToken, VerificationMethod verificationMethod
});




}
/// @nodoc
class __$InquiryResponseModelCopyWithImpl<$Res>
    implements _$InquiryResponseModelCopyWith<$Res> {
  __$InquiryResponseModelCopyWithImpl(this._self, this._then);

  final _InquiryResponseModel _self;
  final $Res Function(_InquiryResponseModel) _then;

/// Create a copy of InquiryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verificationToken = null,Object? verificationMethod = null,}) {
  return _then(_InquiryResponseModel(
verificationToken: null == verificationToken ? _self.verificationToken : verificationToken // ignore: cast_nullable_to_non_nullable
as String,verificationMethod: null == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod,
  ));
}


}

// dart format on
