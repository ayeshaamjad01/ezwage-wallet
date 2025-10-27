import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/dialogues/custom_dialogue.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/withdraw/model/withdraw_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

confirmOtpDialogue(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(
            translateText('Confirm_OTP'),
            translateText('Next'),
            () {},
            Column(
              children: [
                CustomTextWidget(
                    translateText('Enter_the_OTP_sent_to_your_phone_number'),
                    greyColor,
                    14),
                CustomSizeBox(10),
                PinCodeTextField(
                  length: 6,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  animationType: AnimationType.fade,
                  boxShadows: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: const Offset(0.0, 10.0),
                    ),
                  ],
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      disabledColor: whiteColor,
                      activeFillColor: whiteColor,
                      inactiveColor: whiteColor,
                      selectedColor: whiteColor,
                      inactiveFillColor: whiteColor,
                      selectedFillColor: whiteColor,
                      borderWidth: 0),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  cursorColor: simpletextColor,
                  onCompleted: (v) {
                    WithDrawModel.otp = v;
                  },
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
              ],
            ),
            Container(), true );
      });
}
