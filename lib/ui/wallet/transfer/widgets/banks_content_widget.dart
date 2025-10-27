import 'package:ezwage/ui/wallet/transfer/widgets/set_amount_bank_sheet.dart';
import 'package:ezwage/ui/wallet/transfer/widgets/set_amount_wallet_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/app_bottom_sheet.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../controller/bank_transfer_provider.dart';
import '../controller/transfer_provider.dart';
import 'bank_account_number_sheet.dart';
import 'circular_network_image.dart';

class BankContentWidget extends StatelessWidget {
  BankContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final transferPro = Provider.of<TransferProvider>(context);
    final bankTransferPro = Provider.of<BankTransferProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Other Banks",
          fontWeight: FontWeight.w700,
          size: 18.sp,
        ),
        12.verticalSpace,
        TextField(
          controller: transferPro.bankController,
          onChanged: (value) => bankTransferPro.updateSearch(value),
          decoration: InputDecoration(
            hintText: 'Search Bank',
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.black26, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.black26, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.black38, width: 1.2),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
          ),
        ),
        12.verticalSpace,

        ListenableBuilder(
          listenable: bankTransferPro.command,
          builder: (context, bankPro) {
            return bankTransferPro.command.running
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:
                        bankTransferPro.filteredBankList.length ??
                        0,
                    itemBuilder: (context, index) {
                      // final iconData = bankTransferPro.filteredBankIcons[index];
                      final bank =
                          bankTransferPro.filteredBankList[index];
                      return ListTile(
                        leading: CircularNetworkImage(
                          imageUrl: bank.bankLogo,
                          placeholder: AppImages.bankIcon,
                          size: 48.h,
                        ),
                        // ClipOval(
                        //   child: Container(
                        //     color: Colors.grey[200],
                        //     width: 48,
                        //     height: 48,
                        //     child: Image.network(
                        //       bank.bankLogo,
                        //       fit: BoxFit.cover,
                        //       errorBuilder: (context, error, stackTrace) {
                        //         return Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Image.asset(
                        //             AppImages.bankIcon,
                        //           ), // fallback asset
                        //         );
                        //       },
                        //       loadingBuilder:
                        //           (context, child, loadingProgress) {
                        //             if (loadingProgress == null) return child;
                        //             return Center(
                        //               child: CircularProgressIndicator(
                        //                 strokeWidth: 2,
                        //               ),
                        //             );
                        //           },
                        //     ),
                        //   ),
                        // ),

                        contentPadding: EdgeInsets.zero,
                        title: Text(bank.bankName ?? ""),
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          bankTransferPro.selectBank(bank);
                          showAppBottomSheet(
                            context: context,
                            child: BankAccountNumberSheet(),
                          );
                        },
                      );
                    },
                  );
          },
        ),
      ],
    );
  }
}
