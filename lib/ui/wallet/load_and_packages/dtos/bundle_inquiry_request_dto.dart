import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundle_inquiry_request_dto.freezed.dart';
part 'bundle_inquiry_request_dto.g.dart';

@freezed
abstract class BundleInquiryRequestDto with _$BundleInquiryRequestDto {
  const factory BundleInquiryRequestDto({
    required String bundleId,
    required String accountNumber,
    required String consumerNumber,
    required String customerId,
    @Default("v1") String version,
  }) = _BundleInquiryRequestDto;

  factory BundleInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BundleInquiryRequestDtoFromJson(json);
}
