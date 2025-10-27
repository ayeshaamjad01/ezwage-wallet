import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../homepage/model/IconViewModel.dart';
import '../widgets/title_subtitle_expansion_tile.dart';

class ScheduleOfChargesPage extends StatelessWidget {
  ScheduleOfChargesPage({super.key});



  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {



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
                CustomAppBar(title: "Schedule of Charges",),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            child: Container(
              height:
              MediaQuery.of(context).size.height *
                  0.85, // set height manually
              padding: EdgeInsets.only(top: 50.h, left: 15.w, right: 14.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    buildTitle("1. User Eligibility"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("5. Account Registration"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("3. Wallet Usage"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("4. Fees & Charges"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("5. Security"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("6. Prohibited Activities"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("7. Privacy Policy"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("5. Termination of Service"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("9. Limitation of Liability"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                    buildTitle("10. Changes to Terms"),
                    5.verticalSpace,
                    buildDetails(
                      "You must be at least 18 years old to use this app. By registering, you confirm that you meet this requirement and are legally capable of entering into a binding agreement.",
                    ),
                    5.verticalSpace,
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
  CustomText buildDetails(String title) =>
      CustomText(text: title, size: 14.sp, maxLines: 10);

  CustomText buildTitle(String title) => CustomText(
    text: title,
    size: 14.sp,
    maxLines: 10,
    fontWeight: FontWeight.w700,
  );
}
