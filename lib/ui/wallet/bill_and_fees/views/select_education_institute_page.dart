import 'package:ezwage/ui/wallet/core/enums/load_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../controller/bill_payment_provider.dart';
import 'input_provider_number_page.dart';

class SelectEducationInstitutePage extends StatelessWidget {
  const SelectEducationInstitutePage({super.key});

  @override
  Widget build(BuildContext context) {
    final transferPro = Provider.of<BillPaymentProvider>(context);

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
                CustomAppBar(title: "Education"),
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
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value) => transferPro.updateEducationFilter(value),
                            decoration: InputDecoration(
                              hintText: 'Search Phone Number',
                              hintStyle: TextStyle(color: Colors.grey,),
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.r),
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                  width: 1.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.r),
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.r),
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                  width: 1.2,
                                ),
                              ),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        ImageDecoratedContainer(
                          widget: Icon(Icons.add, color: AppColors.primaryColor,),
                        )
                      ],
                    ),
                    20.verticalSpace,

                    CustomText(
                      text: "All Contacts",
                      fontWeight: FontWeight.w700,
                      size: 18.sp,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(), // Important!
                      itemCount: transferPro.filteredEducationalInstitutes.length,
                      itemBuilder: (context, index) {
                        final iconData = transferPro.filteredEducationalInstitutes[index];

                        return ListTile(
                          leading: ClipOval(
                            child: Container(
                                color: Colors.grey[200],
                                width: 48,
                                height: 48,
                                padding: EdgeInsets.all(8),
                                child: CustomSvgImage(assetPath: AppImages.bankIcon)
                            ),
                          ),
                          contentPadding: EdgeInsets.zero,
                          title: Text(iconData.title),
                          subtitle: Text(iconData.subTitle ?? ""),
                          trailing: Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => InputProviderNumberPage(billType: BillType.education, iconViewModel: iconData,),),);
                            // Navigator.of(context).pop();
                            // transferPro.selectContact(iconData);
                          },
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
