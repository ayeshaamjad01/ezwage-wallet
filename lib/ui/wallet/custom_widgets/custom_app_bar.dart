import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../homepage/widgets/image_decorated_container.dart';
import '../wallet_onboarding/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function? onTap;
  const CustomAppBar({super.key,  required this.title, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: (){
                if(onTap != null){
                  onTap!();
                }else{
                  Navigator.of(context).pop();
                }
              },
              child: Icon(Icons.arrow_back, color: Colors.white)),
          CustomText(
            text: title,
            size: 20.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          ImageDecoratedContainer(
            bgColor: Colors.white,
            padding: 4,
            size: 10.h,
            widget: Icon(
              Icons.question_mark,
              color: Colors.blueAccent,
              size: 14.h,
            ),
          ),
        ],
      ),
    );
  }
}
