import 'package:ezwage/main.dart';
import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/core/enums/reciept_type.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_app_bar.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_package_controller.dart';
import 'package:ezwage/ui/wallet/load_and_packages/dtos/telco_bundle_list_detail_response_dto.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/load_otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/model/IconViewModel.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../transfer/view/contacts_page.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../controller/load_and_package_provider.dart';
import '../controller/telecos_list_provider.dart';
import '../widgets/gradient_dropdown_widget.dart';
import '../widgets/mobile_package_card_widget.dart';
import 'mobile_topup/load_input_contact_page.dart';

class PackageInputContactPage extends StatelessWidget {
  PackageInputContactPage({super.key, });


  @override
  Widget build(BuildContext context) {
    final loadAndPackagesPagePro = Provider.of<LoadAndPackageProvider>(context);
    final mainPro = Provider.of<MobilePackageController>(context);
    final telcoPro = Provider.of<TelecosListProvider>(context);
    BundleDetailDto? selectedPackage = mainPro.selectedBundle;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: CustomButtonWidget(
          radius: 80,
          title: "Next",
          onPressed: () {
            mainPro.telcoBundleInquiry(context);

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         LoadOtpPage(receiptType: ReceiptType.mobilePackages),
            //   ),
            // );
          },
          backgroundColor: AppColors.buttonBgColor,
        ),
      ),
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: "Selected Network",
                        size: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    5.verticalSpace,
                    Container(
                      padding: EdgeInsets.all(10.w),
                      width: 90.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: CustomSvgImage(
                        assetPath: telcoPro.selectedTelecos?.telcoName ?? "",
                        height: 38.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    // SizedBox(
                    //   height: 35.h,
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount:
                    //         1, //loadAndPackagesPagePro.networkList.length,
                    //     itemBuilder: (context, index) {
                    //       final item =
                    //           loadAndPackagesPagePro.networkList[index];
                    //       return Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 5.w),
                    //         child: InkWell(
                    //           onTap: () {
                    //             loadAndPackagesPagePro.setSelectedNetwork(item);
                    //           },
                    //           child: Container(
                    //             padding: EdgeInsets.all(10.w),
                    //             width: 90.w,
                    //             decoration: BoxDecoration(
                    //               border: Border.all(
                    //                 color:
                    //                     (loadAndPackagesPagePro
                    //                             .selectedNetwork
                    //                             ?.name ==
                    //                         item.name)
                    //                     ? Colors.black
                    //                     : Colors.grey,
                    //               ),
                    //               borderRadius: BorderRadius.circular(5.r),
                    //             ),
                    //             child: CustomSvgImage(
                    //               assetPath: item.imagePath,
                    //               height: 38.h,
                    //               fit: BoxFit.contain,
                    //             ),
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    15.verticalSpace,
                    (selectedPackage != null) ? MobilePackageCardWidget(
                      title: selectedPackage.displayName ?? "",
                      rightText1: "Rs ${selectedPackage.price}",
                      rightText2: "Load Amount",
                      features: [
                        PackageFeature(
                          iconPath: AppImages.phoneIcon,
                          title: "Minutes",
                          price: selectedPackage.onMin.toString(),
                        ),
                        PackageFeature(
                          iconPath: AppImages.messageIcon,
                          title: "All-net SMS",
                          price: selectedPackage.sms.toString(),
                        ),
                        PackageFeature(
                          iconPath: AppImages.internetIcon,
                          title: "Internet",
                          price: selectedPackage.data.toString(),
                        ),
                      ],
                      bottomLeftText: "Validity, ${selectedPackage.validity}",
                      bottomButtonText: null,
                      onButtonPressed: () {

                      },
                    ) : SizedBox(),
                    15.verticalSpace,

                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWithTitle(
                            title: "Phone Number",
                            hintText: "Input Phone Number",
                            keyboardType: TextInputType.number,

                            controller: mainPro.phoneController,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                        final selectedContact = await Navigator.of(context).push(
                        MaterialPageRoute(
                        builder: (_) => ContactsPage(),
                        ),
                        );

                        if (selectedContact != null) {
                        print("Selected contact: ${selectedContact.title}");
                        mainPro.selectContact(selectedContact); // Or do whatever you need
                        }
                          },
                          child: CustomSvgImage(
                            assetPath: AppImages.inputPhone,
                            height: 52.h,
                            width: 52.w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: EdgeInsets.all(16.w),
          //     child: CustomButtonWidget(
          //       radius: 80,
          //       title: "Next",
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) =>
          //                 LoadOtpPage(receiptType: ReceiptType.mobilePackages),
          //           ),
          //         );
          //       },
          //       backgroundColor: AppColors.buttonBgColor,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
