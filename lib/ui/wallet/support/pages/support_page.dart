import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/support/pages/schedule_of_charges_page.dart';
import 'package:ezwage/ui/wallet/support/pages/terms_and_conditions_page.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../homepage/model/IconViewModel.dart';
import 'faq_page.dart';

class SupportPage extends StatelessWidget {
  SupportPage({super.key});

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final List<IconViewModel> supportIcons = [
      IconViewModel(
        title: "Vouchers",
        imagePath: 'assets/wallet/voucher_icon.svg',
        onTap: () {
          print("Open Vouchers");
        },
      ),
      IconViewModel(
        title: "Terms & Conditions",
        imagePath: 'assets/wallet/conditions_icon.svg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TermsAndConditionsPage()),
          );
        },
      ),
      IconViewModel(
        title: "Schedule",
        imagePath: 'assets/wallet/schedule_icon.svg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScheduleOfChargesPage()),
          );

          print("Open Schedule");
        },
      ),
      IconViewModel(
        title: "FAQ",
        imagePath: 'assets/wallet/faq_icon.svg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FAQPage()),
          );
          print("Open FAQ");
        },
      ),

      IconViewModel(
        title: "Tutorial",
        imagePath: 'assets/wallet/tutorial_icon.svg',
        onTap: () {
          print("Open Tutorial");
        },
      ),
    ];

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
                CustomAppBar(title: "Support", onTap: () {}),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 50.h, left: 12.w, right: 14.w),
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
                    CustomText(
                      text: "How can we help you?",
                      color: AppColors.primaryColor,
                      size: 18.sp,
                    ),
                    CustomText(
                      text: "Please select from the options below",
                      color: Colors.grey,
                      size: 14.sp,
                    ),
                    15.verticalSpace,
                    TextField(
                      controller: searchController,
                      // onChanged: (value) => transferPro.updateSearch(value),
                      decoration: InputDecoration(
                        hintText: 'Search',
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
                    20.verticalSpace,
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: supportIcons.length,
                      itemBuilder: (context, index) {
                        final item = supportIcons[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            onTap: item.onTap,
                            leading: CustomSvgImage(assetPath: item.imagePath),
                            title: CustomText(text: item.title),
                            subtitle: item.subTitle != null
                                ? CustomText(text: item.subTitle!)
                                : null,
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15.h,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
