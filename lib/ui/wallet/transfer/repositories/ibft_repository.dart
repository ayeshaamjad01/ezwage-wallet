import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_title_fetch_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_title_fetch_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_transfer_validation_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_transfer_validation_response_dto.dart';

abstract class IbftRepository {
  Future<Result<IbftTitleFetchResponseDto>> titleFetch(
    IbftTitleFetchRequestDto request,
  );

  Future<Result<IbftTransferValidationResponseDto>> transferValidation(
    IbftTransferValidationRequestDto request,
  );

  Future<Result<IbftPaymentResponseDto>> payment(IbftPaymentRequestDto request);
}
