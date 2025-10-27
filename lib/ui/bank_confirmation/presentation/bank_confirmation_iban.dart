import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankConfirmationIbanField extends StatefulWidget {
  const BankConfirmationIbanField({Key? key}) : super(key: key);

  @override
  _bankconfirmationibanfieldState createState() =>
      _bankconfirmationibanfieldState();
}

class _bankconfirmationibanfieldState extends State<BankConfirmationIbanField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: TextField(
            enableInteractiveSelection: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB(15, 4, 15, 10),
                child: SvgPicture.asset(
                  'assets/images/IBAN.svg',
                  width: 10,
                  height: 10,
                ),
              ),
              border: InputBorder.none,
              fillColor: Colors.transparent,
              filled: true,
              hintText: translateText('IBAN_number'),
            )));
  }
}
