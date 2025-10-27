import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_detail_request_dto.freezed.dart';
part 'customer_detail_request_dto.g.dart';

@freezed
abstract class CustomerDetailRequestDto with _$CustomerDetailRequestDto {
  const factory CustomerDetailRequestDto({
    required String mobileNo,
    @Default("v1") String version,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _CustomerDetailRequestDto;

  factory CustomerDetailRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailRequestDtoFromJson(json);
}
