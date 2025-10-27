

import 'package:ezwage/ui/wallet/core/utils/base_repository.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_payment_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_payment_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_title_fetch_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_title_fetch_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_transfer_validation_request_dto.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/ibft/ibft_transfer_validation_response_dto.dart';
import 'package:ezwage/ui/wallet/transfer/remote_services/ibft_api_service.dart';
import 'package:ezwage/ui/wallet/transfer/repositories/ibft_repository.dart';

class IbftRepositoryImpl extends BaseRepository implements IbftRepository {
  final IbftApiService _api;

  IbftRepositoryImpl(this._api);

  @override
  Future<Result<IbftTitleFetchResponseDto>> titleFetch(IbftTitleFetchRequestDto request) {
    return safeApiCall(
          () => _api.titleFetch(body: request.toJson()),
          (json) => IbftTitleFetchResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<IbftTransferValidationResponseDto>> transferValidation(IbftTransferValidationRequestDto request) {
    return safeApiCall(
          () => _api.transferValidation(body: request.toJson()),
          (json) => IbftTransferValidationResponseDto.fromJson(json),
    );
  }

  @override
  Future<Result<IbftPaymentResponseDto>> payment(IbftPaymentRequestDto request) {
    return safeApiCall(
          () => _api.payment(body: request.toJson()),
          (json) => IbftPaymentResponseDto.fromJson(json),
    );
  }
}
