import 'package:ezwage/ui/wallet/bill_and_fees/views/select_education_institute_page.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/views/select_electricity_provider_page.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/views/select_internet_provider_page.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/load_and_packages_page.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart' show Provider, ChangeNotifierProvider;

import '../../../../global/utils/colors.dart' as AppColors;
import '../../bill_and_fees/controller/bill_list_provider.dart';
import '../../bill_and_fees/views/bill_payment_page.dart';
import '../../core/constants/app_images.dart';
import '../../topup_and_request/view/topup_options_page.dart';
import '../../transfer/view/transfer_page.dart';
import '../controller/wallet_homepage_provider.dart';
import '../model/IconViewModel.dart';
import 'image_decorated_container.dart';

class MainMenuBottomSheet extends StatelessWidget {
  MainMenuBottomSheet({super.key,});



  @override
  Widget build(BuildContext context) {

    final List<IconViewModel> mainMenuIcons = [
      IconViewModel(title: 'Transfer', imagePath: AppImages.transferColoredIcon,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => TransferPage(),),);

      },),

      IconViewModel(title: 'Top Up', imagePath: AppImages.topUp,onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TopUpOptionsPage(),)
        );
      },),
      IconViewModel(title: 'Load & Packages', imagePath: AppImages.loadAndPackages, onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoadAndPackagesPage(),)
        );
      },),
      IconViewModel(title: 'Request', imagePath: AppImages.request,),
    ];


    final List<IconViewModel> paymentListIcons = [
      IconViewModel(title: 'Mobile Load', imagePath: AppImages.loadAndPackages),
      IconViewModel(title: 'Electricity', imagePath: AppImages.electricity,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (_) => BillListProvider(),
              child: BillPaymentPage(),
            ),
          ),
        );

        // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectElectricityProviderPage(),),);
      },
      ),
      IconViewModel(title: 'Online Ticket', imagePath: AppImages.onlineTicket),
      IconViewModel(title: 'Education', imagePath: AppImages.education,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (_) => BillListProvider(),
                child: BillPaymentPage(),
              ),
            ),
          );
          // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectEducationInstitutePage(),),);
        },),
      IconViewModel(title: 'Insurance', imagePath: AppImages.insurance),
      IconViewModel(title: 'Invest', imagePath: AppImages.invest),
      IconViewModel(title: 'Internet & TV Cable', imagePath: AppImages.internetAndTvCable,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (_) => BillListProvider(),
                child: BillPaymentPage(),
              ),
            ),
          );
          // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectInternetProviderPage(),),);
        },),
      IconViewModel(title: 'Games Voucher', imagePath: AppImages.gamesVoucher),
      IconViewModel(title: 'E-Money', imagePath: AppImages.eMoney),
      IconViewModel(title: 'Water', imagePath: AppImages.water),
      IconViewModel(title: 'E-Commerce', imagePath: AppImages.ecommerce),
      IconViewModel(title: 'Streaming', imagePath: AppImages.streaming),
    ];
    return Container(
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          14.verticalSpace,
          buildRow("  Main Menu", "Edit Menu"),

          GridView.builder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: mainMenuIcons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              final item = mainMenuIcons[index];
              return InkWell(
                onTap: () {
                  if(mainMenuIcons[index].onTap != null)
                    mainMenuIcons[index].onTap!();
                },
                child: Column(
                  children: [
                    ImageDecoratedContainer(imagePath: item.imagePath),
                    const SizedBox(height: 8),
                    CustomText(text: item.title, size: 12.sp, textAlign: TextAlign.center, maxLines: 2,),

                  ],
                ),
              );
            },
          ),
        // SizedBox(
          //   height: 90.h,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     itemCount: mainMenuIcons.length,
          //     itemBuilder: (context, index) {
          //       final option = mainMenuIcons[index];
          //       return Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 8.w),
          //         child: InkWell(
          //           onTap: () {
          //             if(option.onTap != null)
          //             option.onTap!();
          //           },
          //           child: Column(
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               ImageDecoratedContainer(imagePath: option.imagePath),
          //
          //               const SizedBox(height: 6),
          //               Text(
          //                 option.title,
          //                 style: const TextStyle(fontSize: 12),
          //                 textAlign: TextAlign.center,
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          CustomText(
            text: "  Payment List",
            fontWeight: FontWeight.w600,
            size: 18.sp,
          ),
          GridView.builder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: paymentListIcons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // 4 columns
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.65, // taller items for text
            ),
            itemBuilder: (context, index) {
              final item = paymentListIcons[index];
              return InkWell(
                onTap: () {
                  if(item.onTap != null){
                    item.onTap!();
                  }
                },
                child: Column(
                  children: [
                    ImageDecoratedContainer(imagePath: item.imagePath),
                    const SizedBox(height: 8),
                    CustomText(text: item.title, size: 12.sp, textAlign: TextAlign.center, maxLines: 2,),

                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildRow(String txt1, String txt2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: txt1,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          size: 18.sp,

        ),
        CustomText(text: txt2, color: AppColors.greenColor,
          size: 14.sp,
        ),
      ],
    );
  }
}
