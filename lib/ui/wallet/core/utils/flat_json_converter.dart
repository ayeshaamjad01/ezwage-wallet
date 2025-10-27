import 'package:freezed_annotation/freezed_annotation.dart';

class FlatJsonConverter<T> implements JsonConverter<T, Map<String, dynamic>> {
  final T Function(Map<String, dynamic>) fromJsonFn;
  final Map<String, dynamic> Function(T) toJsonFn;

  const FlatJsonConverter({required this.fromJsonFn, required this.toJsonFn});

  @override
  T fromJson(Map<String, dynamic> json) => fromJsonFn(json);

  @override
  Map<String, dynamic> toJson(T object) => toJsonFn(object);
}
