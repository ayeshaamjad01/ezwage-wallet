import 'package:ezwage/global/navigations/video_tutorial_navigation.dart';
import 'package:ezwage/global/views/appbars/appbar_without_back_button.dart';
import 'package:ezwage/global/views/bottomsheets/bottom_sheet_auth_screens.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/bank_confirmation/view/bank_confirmation_view.dart';
import 'package:flutter/material.dart';

class BankConfirmationScreen extends StatefulWidget {
  const BankConfirmationScreen({Key? key}) : super(key: key);

  @override
  _bankconfirmationscreenState createState() => _bankconfirmationscreenState();
}

class _bankconfirmationscreenState extends State<BankConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new ReusableWidgetsWithoutBackButton().getAppBar(Row(), Row()),
      backgroundColor: Colors.blue,
      bottomSheet: SingleChildScrollView(
        child: BottomSheetAuthScreen(
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [BankConfirmationView(), CustomSizeBox(20)],
            ),
            Column(), () {
          navigateToVideoTutorialsScreen(context);
        }, false, true),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            //
            child: Image(
              image: AssetImage('assets/images/splash.png'),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header(Column(
                children: [
                  CustomSizeBox(5),
                  Row(
                    children: [
                      Spacer(),
                      Image.asset(
                        "assets/images/white_logo_ez_wage.png",
                        height: 80,
                        width: 150,
                      ),
                      Spacer()
                    ],
                  ),
                  CustomSizeBox(10),
                  Row(
                    children: [
                      Spacer(),
                      CustomTextWidget(
                          translateText('Confim_Your_Bank_Account'),
                          Colors.white,
                          17),
                      Spacer()
                    ],
                  ),
                  // CustomSizeBox(10),
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
