import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/dialogues/custom_dialogue.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

pinDialogue(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(
            translateText('Enter_Your_4_Digit_Pin'),
            translateText('Submit'),
            () {},
            Column(
              children: [
                PinCodeTextField(
                  length: 4,
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
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
              ],
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(
                'assets/images/lock.svg',
              ),
            )), true );
      });
}
