import 'package:ezwage/ui/wallet/core/constants/app_colors.dart';
import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_app_bar.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_topup_controller.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/telecos_list_provider.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/load_set_amount_page.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_packages_page.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/telecos_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/enums/load_type.dart';
import '../../../custom_widgets/custom_svg_image.dart';
import '../../../homepage/widgets/image_decorated_container.dart';
import '../../../transfer/view/contacts_page.dart';
import '../../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../../wallet_onboarding/widgets/custom_text.dart';
import '../../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../../controller/load_and_package_provider.dart';

class LoadInputContactPage extends StatelessWidget {
  LoadInputContactPage({super.key});

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mainProvider = context.watch<MobileTopUpController>();
    final billType = mainProvider.billType;
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
                    CustomText(text: "Your Balance", color: Colors.black),
                    CustomText(
                      text: "PKR ${mainProvider.userProfileRepo.currentProfile?.accountBalance} ",
                      color: AppColors.primaryColor,
                      size: 28.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    20.verticalSpace,
                    ImageDecoratedContainer(
                      imagePath: (billType == WalletType.prepaid)
                          ? AppImages.prepaidLoadIcon
                          : AppImages.postpaidLoadIcon,
                    ),
                    CustomText(
                      text: (billType == WalletType.prepaid)
                          ? "Prepaid Load"
                          : "Postpaid Bill",
                      color: Colors.black,
                      size: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    20.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWithTitle(
                            title: "Phone Number",
                            keyboardType: TextInputType.number,
                            hintText: "Input Phone Number",
                            controller: phoneController,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            final selectedContact = await Navigator.of(context)
                                .push(
                              MaterialPageRoute(
                                builder: (_) => ContactsPage(),
                              ),
                            );

                            if (selectedContact != null) {
                              print(
                                "Selected contact: ${selectedContact.title}",
                              );
                              // transferPro.selectContact(selectedContact); // Or do whatever you need
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
                    20.verticalSpace,
                    TelecosListView(),
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

                  final selectedTelecos = context
                      .read<TelecosListProvider>()
                      .selectedTelecos;
                  final number = phoneController.text.trim();
                  final isValid = number.isNotEmpty && selectedTelecos != null;
                  if (isValid) {
                    final mainProvider = context.read<MobileTopUpController>();
                    mainProvider
                      ..setConsumerNumber(number)
                      ..setTelecosId(selectedTelecos.telcoId ?? 0);
                    mainProvider.navToNextPage();
                  }
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
