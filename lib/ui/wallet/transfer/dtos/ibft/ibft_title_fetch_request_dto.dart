import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibft_title_fetch_request_dto.freezed.dart';

part 'ibft_title_fetch_request_dto.g.dart';

@freezed
abstract class IbftTitleFetchRequestDto with _$IbftTitleFetchRequestDto {
  const factory IbftTitleFetchRequestDto({
    required String receiverAccount,
    required String senderAccount,
    required String customerId,
    required String purposeId,
    required String bankId,
    required String amount,
    @Default("v1") String version,
    required Map<String, dynamic> extInfo,
  }) = _IbftTitleFetchRequestDto;

  factory IbftTitleFetchRequestDto.fromJson(Map<String, dynamic> json) =>
      _$IbftTitleFetchRequestDtoFromJson(json);
}
