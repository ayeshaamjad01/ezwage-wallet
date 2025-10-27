import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: "indicator")
enum TeleCosBillType {
  prepaid(indicator: "1"),
  postpaid(indicator: "2"),
  bundle(indicator: "3");

  final String indicator;

  const TeleCosBillType({required this.indicator});
}
