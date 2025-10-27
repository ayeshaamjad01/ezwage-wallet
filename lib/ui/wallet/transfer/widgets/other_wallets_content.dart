import 'package:ezwage/ui/wallet/transfer/controller/transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/widgets/set_amount_wallet_sheet.dart';
import 'package:ezwage/ui/wallet/transfer/widgets/set_amount_wallet_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/app_bottom_sheet.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../controller/wallet_transfer_provider.dart';

class WalletsContentWidget extends StatelessWidget {
  WalletsContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final transferPro = Provider.of<TransferProvider>(context);
    final walletTransferPro = Provider.of<WalletTransferProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Other Wallets",
          fontWeight: FontWeight.w700,
          size: 18.sp,
        ),
        12.verticalSpace,
        TextField(
          controller: transferPro.walletController,
          onChanged: (value) => walletTransferPro.updateSearch(value),
          decoration: InputDecoration(
            hintText: 'Search Wallet',
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Colors.black26,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Colors.black26,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Colors.black38,
                width: 1.2,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
          ),
        ),
        12.verticalSpace,
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(), // Important!
          itemCount: walletTransferPro.filteredIcons.length,
          itemBuilder: (context, index) {
            final iconData = walletTransferPro.filteredIcons[index];

            return ListTile(
              leading: ClipOval(
                child: Container(
                  color: Colors.grey[200],
                  width: 48, // diameter
                  height: 48,
                  padding: EdgeInsets.all(8),
                  child: CustomSvgImage(
                    assetPath: AppImages.bankIcon,
                  ),
                ),
              ),
              contentPadding: EdgeInsets.zero,
              title: Text(iconData.title),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // walletTransferPro.
                walletTransferPro.selectContact(null);
                walletTransferPro.refresh();
                showAppBottomSheet(
                  context: context,
                  child: SetAmountWalletSheet(sheetType: AmountSheetType.bank),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
