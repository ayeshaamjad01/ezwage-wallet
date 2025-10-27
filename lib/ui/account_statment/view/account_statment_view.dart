import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global/utils/app_text_style.dart';

class AccountStatmentView extends StatefulWidget {
  const AccountStatmentView({Key? key}) : super(key: key);

  @override
  State<AccountStatmentView> createState() => _AccountStatmentViewState();
}

class _AccountStatmentViewState extends State<AccountStatmentView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              "Select start and end dates",
              style: AppTextStyles.popins(
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF808080))),
            ),
          )
        ],
      ),
    );
  }
}
