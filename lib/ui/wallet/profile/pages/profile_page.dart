import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_images.dart';
import '../../core/models/user_profile_model.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../homepage/controller/wallet_homepage_provider.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../widgets/edit_details_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homePro = context.watch<WalletHomepageProvider>();
    UserProfileModel? profileModel = homePro.userProfileRepo.currentProfile;
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
                CustomAppBar(title: "Profile", onTap: () {}),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 30.h, left: 12.w, right: 14.w),
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
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 80 / 2,
                          backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2020/12/29/08/20/male-5869769_1280.jpg",
                          ),
                        ),
                        // Positioned(
                        //   bottom: 2,
                        //   right: 2,
                        //   child: Container(
                        //     height: 30,
                        //     width: 30,
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       shape: BoxShape.circle,
                        //       border: Border.all(
                        //         color: Colors.grey.shade300,
                        //         width: 1.5,
                        //       ),
                        //     ),
                        //     child: InkWell(
                        //       onTap: () {
                        //       },
                        //       child: Icon(
                        //         Icons.edit,
                        //         size: 20,
                        //         color: Colors.black87,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    10.verticalSpace,
                    CustomText(
                      text: profileModel?.accountTitle ?? "",
                      fontWeight: FontWeight.w700,
                      size: 18.sp,
                    ),
                    CustomText(text: "Account: 03337568391", size: 16.sp),
                    10.verticalSpace,

                    CustomTileWidget(
                      title: "Email",
                      subtitle: profileModel?.email ?? "------",
                      rightText: "Edit",
                      onTap: () {
                        print("Tile tapped!");
                      },
                    ),
                    CustomTileWidget(
                      title: "MPIN",
                      subtitle: "******",
                      rightText: "Edit",
                      onTap: () {
                        print("Tile tapped!");
                      },
                    ),
                    CustomTileWidget(
                      title: "CNIC",
                      subtitle: profileModel?.cnic ?? "",
                      rightText: "Edit",
                      onTap: () {
                        print("Tile tapped!");
                      },
                    ),
                    CustomTileWidget(
                      title: "IBAN Number",
                      subtitle: profileModel?.iban ?? profileModel?.mobileNo ?? "",
                      rightText: "Edit",
                      onTap: () {
                        print("Tile tapped!");
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
