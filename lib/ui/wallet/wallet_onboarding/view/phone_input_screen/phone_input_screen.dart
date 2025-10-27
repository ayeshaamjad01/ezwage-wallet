import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../custom_widgets/custom_svg_image.dart';
import '../../../transfer/view/contacts_page.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/digit_widget.dart';
import '../../widgets/dismiss_on_captured_taps.dart';
import '../../widgets/textfield_with_title.dart';

class PhoneInputScreen extends StatefulWidget {
  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WalletOnboardingProvider walletOnboardingPro =
    Provider.of<WalletOnboardingProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFieldWithTitle(
                      keyboardType: TextInputType.number,
                      title: "Phone Number",
                      hintText: "Input Phone Number",
                      controller: walletOnboardingPro.phoneController,
                      onChanged: (value) {
                        walletOnboardingPro.detectAndSelectNetwork(value);
                      },
                      onValidate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Phone Number';
                        }
                        if (value.length != 11) {
                          return 'Phone number must be 11 digits';
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'Phone number must contain only digits';
                        }
                        return null;
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      Contact? selectedContact = await Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (_) => ContactsPage()));

                      if (selectedContact != null) {
                        walletOnboardingPro.selectContact(selectedContact);
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
            ),
            SizedBox(height: 20.h),
            CustomText(
              text: "Select Network",
              size: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: walletOnboardingPro.networkList.length,
                itemBuilder: (context, index) {
                  final item = walletOnboardingPro.networkList[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: InkWell(
                      onTap: () {
                        walletOnboardingPro.setSelectedNetwork(item);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        width: 90.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                            (walletOnboardingPro.selectedNetwork?.name ==
                                item.name)
                                ? Colors.black
                                : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: CustomSvgImage(
                          assetPath: item.imagePath,
                          height: 38.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(child: SizedBox()),
            DismissOnCapturedTaps(
              child: Column(
                children: [
                  CustomButtonWidget(
                    title: "Sign Up",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<WalletOnboardingProvider>().fetchAccount(
                          context,
                        );
                      }
                    },
                    backgroundColor: AppColors.buttonBgColor,
                  ),
                  10.verticalSpace,
                  DigitWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
