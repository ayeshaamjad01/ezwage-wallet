import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/dialogues/custom_dialogue.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/withdraw/model/withdraw_model.dart';
import 'package:ezwage/ui/withdraw/presentation/dialogues/confirm_otp_dialogue.dart';
import 'package:flutter/material.dart';

withdrawDetailsDialogue(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(translateText('Withdraw'), translateText('Next'),
            () {
          Navigator.pop(context);
          confirmOtpDialogue(context);
        },
            Column(
              children: [
                Image.asset("assets/images/withdrawdialogue.png"),
                Row(
                  children: [
                    CustomTextWidget(
                        translateText('Amount_Withdrawn'), simpletextColor, 14),
                    Spacer(),
                    CustomTextWidget(WithDrawModel.amount, simpletextColor, 12),
                  ],
                ),
                CustomSizeBox(10),
                Row(
                  children: [
                    CustomTextWidget(
                        translateText('EZ_Wage_Charges'), simpletextColor, 14),
                    Spacer(),
                    CustomTextWidget(WithDrawModel.fee, simpletextColor, 12),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    CustomTextWidget(
                        translateText('Total'), simpletextColor, 14),
                    Spacer(),
                    CustomTextWidget(WithDrawModel.total, simpletextColor, 12),
                  ],
                )
              ],
            ),
            Container(), true );
      });
}
