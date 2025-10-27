import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_payment_provider.dart';
import 'package:ezwage/ui/wallet/topup_and_request/view/review_ready_cash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';

class ReadyCashPage extends StatelessWidget {
  const ReadyCashPage({super.key});

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    CustomText(
                      text: "Introducing Pakistan’s fastest digital loan with ReadyCash",
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                      size: 16.sp,
                    ),
                    20.verticalSpace,
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewReadyCashPage(),),);
                      },
                      contentPadding: EdgeInsets.zero,
                      title: CustomText(text: "ReadyCash", fontWeight: FontWeight.w700,),
                      subtitle: CustomText(text: "Enter amount in multiples of 100s", color: Colors.grey,),
                      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppColors.primaryColor,),
                    ),
                    Align(
                      alignment: Alignment.center,
                        child: CustomText(text: "Set Amount", size: 16.sp, )),
                    8.verticalSpace,

                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CustomText(
                              text: 'PKR',
                              size: 25.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              hintText: '0', // optional
                              hintStyle: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 25.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewReadyCashPage(),),);
                  print("TESt");
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
