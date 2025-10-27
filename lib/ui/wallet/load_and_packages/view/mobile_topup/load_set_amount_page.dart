import 'package:ezwage/ui/wallet/core/enums/load_type.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_topup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../custom_widgets/custom_app_bar.dart';
import '../../../custom_widgets/custom_svg_image.dart';
import '../../../homepage/widgets/image_decorated_container.dart';
import '../../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../../wallet_onboarding/widgets/custom_text.dart';
import '../../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../../controller/load_and_package_provider.dart';
import 'load_amount_details_page.dart';

class LoadSetAmountPage extends StatelessWidget {
  LoadSetAmountPage({super.key});

  final phoneController = TextEditingController();

  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  Future<void> _selectDate(BuildContext context) async {
    final loadAndPackagesPagePro = Provider.of<LoadAndPackageProvider>(
      context,
      listen: false,
    );
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: loadAndPackagesPagePro.postpaidDueDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      loadAndPackagesPagePro.setDate(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final loadAndPackagesPagePro = Provider.of<LoadAndPackageProvider>(context);
    final dateText = loadAndPackagesPagePro.postpaidDueDate != null
        ? "${loadAndPackagesPagePro.postpaidDueDate!.toLocal()}".split(' ')[0]
        : '';
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.onboardingBg),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              children: [
                50.verticalSpace,
                CustomAppBar(title: "Load & Packages"),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 50.h, left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    12.verticalSpace,
                    CustomText(text: "Amount Load", color: Colors.black),

                    20.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CustomText(
                              text: 'PKR',
                              size: 50.sp,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: TextField(
                            controller: phoneController,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,

                              contentPadding: EdgeInsets.zero,
                              hintText: '0',
                              // optional
                              hintStyle: TextStyle(
                                fontSize: 50.sp,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 50.sp,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    CustomText(
                      text: "Enter amount between Rs 80 to Rs.20,000.",
                      size: 14.sp,
                      color: Colors.grey,
                    ),
                    20.verticalSpace,
                    //
                    // (walletType == WalletType.postpaid)
                    //     ? Row(
                    //         children: [
                    //           Expanded(
                    //             child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 CustomText(
                    //                   text: "Billing Month",
                    //                   size: 16.sp,
                    //                   fontWeight: FontWeight.w600,
                    //                 ),
                    //                 DropdownButtonFormField<String>(
                    //                   decoration: InputDecoration(
                    //                     hintText: 'Select Month',
                    //                     hintStyle: TextStyle(
                    //                       color: Colors.grey,
                    //                     ),
                    //                     border: InputBorder.none,
                    //                     enabledBorder: InputBorder.none,
                    //                     focusedBorder: InputBorder.none,
                    //                     contentPadding: EdgeInsets.symmetric(
                    //                       vertical: 8.0,
                    //                       horizontal: 0,
                    //                     ),
                    //                   ),
                    //                   dropdownColor: Colors.white,
                    //                   value: loadAndPackagesPagePro
                    //                       .postpaidBillingMonth,
                    //                   onChanged: (String? newValue) {
                    //                     loadAndPackagesPagePro
                    //                       ..setMonth(newValue);
                    //                   },
                    //                   items: months
                    //                       .map<DropdownMenuItem<String>>((
                    //                         String month,
                    //                       ) {
                    //                         return DropdownMenuItem<String>(
                    //                           value: month,
                    //                           child: Text(month),
                    //                         );
                    //                       })
                    //                       .toList(),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //           const SizedBox(width: 10),
                    //
                    //           Expanded(
                    //             child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //
                    //               children: [
                    //                 CustomText(
                    //                   text: "Due Date",
                    //                   size: 16.sp,
                    //                   fontWeight: FontWeight.w600,
                    //                 ),
                    //                 Row(
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.center,
                    //                   children: [
                    //                     Expanded(
                    //                       child: TextFormField(
                    //                         controller: TextEditingController(
                    //                           text: dateText,
                    //                         ),
                    //                         readOnly: true,
                    //                         decoration: InputDecoration(
                    //                           hintText: "Select Date",
                    //                           hintStyle: TextStyle(
                    //                             color: Colors.grey,
                    //                           ),
                    //                           border: InputBorder.none,
                    //                           enabledBorder: InputBorder.none,
                    //                           focusedBorder: InputBorder.none,
                    //                           contentPadding:
                    //                               EdgeInsets.symmetric(
                    //                                 vertical: 8.0,
                    //                                 horizontal: 0,
                    //                               ),
                    //                         ),
                    //                         onTap: () => _selectDate(context),
                    //                       ),
                    //                     ),
                    //                     CustomSvgImage(
                    //                       assetPath: AppImages.calenderIcon,
                    //                       height: 20.h,
                    //                       width: 20.w,
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       )
                    //     : SizedBox(),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: CustomButtonWidget(
                radius: 80,
                title: "Continue",
                onPressed: () {
                  final input = phoneController.text.trim();
                  final isInputValid = input.isNotEmpty;
                  if (isInputValid) {
                    final amount = double.tryParse(input) ?? 0;
                    if (amount < 80) {
                      EasyLoading.showToast("Please enter a valid amount");
                      return;
                    }
                    final mainProvider = context.read<MobileTopUpController>();
                    mainProvider
                      ..setAmount(input)
                      ..navToNextPage();
                  }

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         LoadAmountDetailsPage(walletType: walletType),
                  //   ),
                  // );
                },
                backgroundColor: AppColors.buttonBgColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
