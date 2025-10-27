import 'package:ezwage/global/models/paragraph.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/buttons/custom_button.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/bank_confirmation/presentation/bank_confirmation_account_field.dart';
import 'package:ezwage/ui/bank_confirmation/presentation/bank_confirmation_bank_field.dart';
import 'package:flutter/material.dart';

class BankConfirmationView extends StatefulWidget {
  const BankConfirmationView({Key? key}) : super(key: key);

  @override
  _bankconfirmationviewState createState() => _bankconfirmationviewState();
}

class _bankconfirmationviewState extends State<BankConfirmationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSizeBox(40),
        BankConfirmationBankField(),
        CustomSizeBox(10),
        BankConfirmationAccountField(),
        CustomSizeBox(20),
        customButton(
          translateText('Confirm'),
          () {}, Color(0xff00A2FF)
        ),
        CustomSizeBox(20),
        CustomTextWidget(Paragraph().paragraphtextforbankconfirmation,
            uncheckedtextColor, 8),
        CustomSizeBox(20),
        customButton(
          translateText('Report'),
          () {},Color(0xff00A2FF)
        ),
      ],
    );
  }
}
