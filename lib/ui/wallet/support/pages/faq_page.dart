import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../homepage/model/IconViewModel.dart';
import '../widgets/title_subtitle_expansion_tile.dart';

class FAQPage extends StatelessWidget {
  FAQPage({super.key});


  final List<IconViewModel> faqTitles = [
    IconViewModel(
      title: "What Is Ezwallet?",
      subTitle: "Lorem ipsum dolor sit amet consectetur. Dignissim suspendisse odio eget pellentesque donec amet mattis arcu in. Ultricies commodo ",
      imagePath: '',
    ),
    IconViewModel(
      title: "How does it works?",
      subTitle: "Lorem ipsum dolor sit amet consectetur. Dignissim suspendisse odio eget pellentesque donec amet mattis arcu in. Ultricies commodo ",
      imagePath: '',
    ),
    IconViewModel(
      title: "How does it works",
      subTitle: "Lorem ipsum dolor sit amet consectetur. Dignissim suspendisse odio eget pellentesque donec amet mattis arcu in. Ultricies commodo ",
      imagePath: '',
    ),


  ];



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
                CustomAppBar(title: "FAQ's",),
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
                    CustomText(text: "How can we help you?", color: AppColors.primaryColor, size: 18.sp,),
                    CustomText(text: "Please select from the options below", color: Colors.grey, size: 14.sp,),
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

                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: faqTitles.length,
                      itemBuilder: (context, index) {
                        final item = faqTitles[index];
                        return  TitleSubtitleExpansionTile(
                          title: item.title,
                          subtitle: item.subTitle ?? "",
                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                        return 8.verticalSpace;
                    },
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
