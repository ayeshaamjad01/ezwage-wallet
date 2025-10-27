import 'package:ezwage/ui/wallet/core/utils/dio/digit_token_interceptor.dart';
import 'package:ezwage/ui/wallet/homepage/controller/wallet_homepage_provider.dart';
import 'package:ezwage/ui/wallet/homepage/widgets/action_buttons_widget.dart';
import 'package:ezwage/ui/wallet/homepage/widgets/image_decorated_container.dart';
import 'package:ezwage/ui/wallet/scan/pages/scan_page.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';

import '../../core/repositories/user_profile_repositories.dart';
import '../../history/pages/history_page.dart';
import '../../profile/pages/profile_page.dart';
import '../../support/pages/support_page.dart';
import '../../transfer/controller/bank_transfer_provider.dart';
import '../../transfer/controller/transfer_provider.dart';
import '../../transfer/controller/wallet_transfer_provider.dart';
import '../widgets/select_again_widget.dart';
import '../widgets/transaction_widget.dart';

class WalletPageContent extends StatefulWidget {
  final WalletHomepageProvider provider;

  const WalletPageContent({super.key, required this.provider});

  @override
  State<WalletPageContent> createState() => _WalletPageContentState();
}

class _WalletPageContentState extends State<WalletPageContent> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    WalletHomeContent(),
    HistoryPage(),
    ScanPage(),
    SupportPage(),
    ProfilePage(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return _pages[_selectedIndex];
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onNavItemTapped,
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 1,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _navItem(0, AppImages.transfer, Colors.white),
            _navItem(1, AppImages.historyIcon, Colors.white),
            _navItem(2, AppImages.scanIcon, AppColors.buttonBgColor),
            _navItem(3, AppImages.supportIcon, Colors.white),
            _navItem(4, AppImages.profileIcon, Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _navItem(int index, String iconPath, Color bgColor) {
    final bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: ImageDecoratedContainer(
        imagePath: iconPath,
        imageColor: isSelected ? AppColors.primaryColor : null,
        bgColor: bgColor,
        size: 20.h,
      ),
    );
  }
}

class WalletHomeContent extends StatefulWidget {
  const WalletHomeContent({super.key});

  @override
  State<WalletHomeContent> createState() => _WalletHomeContentState();
}

class _WalletHomeContentState extends State<WalletHomeContent> {

  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<WalletHomepageProvider>().getCustomerMiniStatement();
      context.read<WalletHomepageProvider>().getCustomerStatement();
    });
  }


  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final homePro = Provider.of<WalletHomepageProvider>(context);
    print("homePro ${homePro.customerDetailResponseDto?.customerId}");
    final userProfileRepo = sL<UserProfileRepository>();

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
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.w, top: 30.h),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/white_logo_ez_wage.png",
                        height: shortestSide > 600 ? 70.sp : 70,
                        width: shortestSide > 600 ? 150.sp : 150,
                      ),
                    ),
                  ),
                ),

                Column(
                  children: [
                    CustomText(
                      text: "Your Balance",
                      color: Colors.white,
                      size: 18.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: CustomText(
                            text: homePro.isVisible ? "PKR ${homePro.userProfileRepo.currentProfile?.accountBalance}" : "•••••••",
                            color: Colors.white,
                            size: 28.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            homePro.toggleBalanceVisibility();
                          },
                          icon: Icon(
                            homePro.isVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.59,
              padding: EdgeInsets.only(top: 60.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [const SendAgainWidget(), TransactionWidget()],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4 - 100.h,
            left: MediaQuery.of(context).size.width * 0.0,
            right: MediaQuery.of(context).size.width * 0.0,
            child: ActionButtonsWidget(),
          ),
        ],
      ),
      // bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

// class CustomBottomNavBar extends StatelessWidget {
//   const CustomBottomNavBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: Colors.white,
//       shape: const CircularNotchedRectangle(),
//       notchMargin: 8,
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20.w),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             ImageDecoratedContainer(imagePath: AppImages.transfer, bgColor: Colors.white, size: 20.h,),
//             ImageDecoratedContainer(imagePath: AppImages.historyIcon, bgColor: Colors.white,size: 20.h,),
//             ImageDecoratedContainer(bgColor: AppColors.buttonBgColor, imagePath: AppImages.scanIcon,),
//             ImageDecoratedContainer(imagePath: AppImages.supportIcon, bgColor: Colors.white,size: 20.h,),
//             ImageDecoratedContainer(imagePath: AppImages.profileIcon, bgColor: Colors.white,size: 20.h,),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
