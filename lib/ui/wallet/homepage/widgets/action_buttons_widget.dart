
import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/transfer/controller/bank_transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/controller/transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/controller/wallet_transfer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_images.dart';
import '../../custom_widgets/app_bottom_sheet.dart';
import '../../topup_and_request/view/topup_options_page.dart';
import '../../transfer/view/transfer_page.dart';
import 'main_menu_bottom_sheet.dart';

class ActionButtonsWidget extends StatelessWidget {
  const ActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _ActionItem(imagePath: AppImages.transferColoredIcon, label: "Transfer", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TransferPage(),),);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (_) => MultiProvider(
              //       providers: [
              //         ChangeNotifierProvider(create: (_) => TransferProvider()),
              //         ChangeNotifierProvider(create: (_) => BankTransferProvider()),
              //         ChangeNotifierProvider(create: (_) => WalletTransferProvider()),
              //       ],
              //       child: const TransferPage(),
              //     ),
              //   ),
              // );

            },),
            _ActionItem(imagePath: AppImages.topUp, label: "Top Up", onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopUpOptionsPage(),)
              );
            },),
            _ActionItem(imagePath: AppImages.withdrawIcon, label: "Withdraw", onTap: (){},),
            _ActionItem(imagePath: AppImages.moreIcon, label: "More", onTap: (){
              showAppBottomSheet(
                context: context,
                child: MainMenuBottomSheet(),
              );

            },),
          ],
        ),
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final Function onTap;

  const _ActionItem({required this.imagePath, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          CustomSvgImage(assetPath: imagePath),
          SizedBox(height: 4.h),
          Text(label, style: TextStyle(fontSize: 12.sp)),
        ],
      ),
    );
  }
}
