import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../transfer/view/contacts_page.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';

class RequestMoneyPage extends StatelessWidget {
  const RequestMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final transferPro = Provider.of<BillPaymentProvider>(context);

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
                CustomAppBar(title: "Top Up"),
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
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Request Money from within Pakistan",
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                      size: 16.sp,
                    ), CustomText(
                      text: "Request someone with a ezwallet account to send you money",
                      color: Colors.grey,
                      textAlign: TextAlign.center,
                      size: 14.sp,
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsPage( isRequestMoney: true,),),);
                      },
                      title: CustomText(text: "Request Money (Locally)", fontWeight: FontWeight.w700,),
                      subtitle: CustomText(text: "Request from friend or other ezwallet account", color: Colors.grey,),
                      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppColors.primaryColor,),
                    )

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
