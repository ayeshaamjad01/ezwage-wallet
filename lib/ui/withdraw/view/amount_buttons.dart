import 'dart:io';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/withdraw/controller/withdraw_controller.dart';
import 'package:ezwage/ui/withdraw/view/amount_buttons_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AmountButtons extends StatefulWidget {
  late TextEditingController textEditingController;
  AmountButtons(this.textEditingController);
  @override
  State<AmountButtons> createState() => _AmountButtonsState();
}

class _AmountButtonsState extends State<AmountButtons> {
  var amountsList = [1000, 2000, 5000, 10000, 15000, 20000];
  var allowedAmountLimit = [];
  var formatter = NumberFormat('#,000');
  @override
  void initState() {
    super.initState();
    if (Platform.isIOS == true) {
      keyboardPlatform =
          TextInputType.numberWithOptions(signed: true, decimal: true);
    } else {
      keyboardPlatform = TextInputType.number;
    }
    allowedAmountLimit = [];
    for (int i = 0; i < amountsList.length; i++) {
      if (amountsList[i] < int.parse(BalanceModel.currentbalance!)) {
        allowedAmountLimit.add(amountsList[i]);
      }
    }
  }

  var keyboardPlatform;
  @override
  Widget build(BuildContext context) {
    var selectedAmountList =
        context.watch<AmountButtonsProvider>().selectedAmountList;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Column(
      children: [
        Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Text(
                  "PKR",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      fontSize: shortestSide > 600 ? 12.sp : 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6A6A6A)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CustomTextWidget("$val", Color(0xff00A2FF), 24),
                  SizedBox(
                      width: shortestSide > 600 ? 290.sp : 220,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFormField(
                            enableInteractiveSelection: false,
                            controller: widget.textEditingController,
                            keyboardType: keyboardPlatform,
                            onChanged: (value) {
                              if (widget.textEditingController.text != '') {
                                context.read<Counter>().setcolor(true);
                              } else {
                                context.read<Counter>().setcolor(false);
                              }
                              context
                                  .read<AmountButtonsProvider>()
                                  .changeButtonStatus(false, 0);
                              widget.textEditingController.text = widget
                                  .textEditingController.text
                                  .replaceAll(',', '');
                              widget.textEditingController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: widget
                                          .textEditingController.text.length));
                              String symbol = "\$";

                              RegExp _regExp = RegExp("^[0-9]*" + symbol);
                              if (_regExp.hasMatch(
                                          widget.textEditingController.text) ==
                                      true &&
                                  widget.textEditingController.text != '') {
                                if (double.parse(
                                        widget.textEditingController.text) <=
                                    double.parse(BalanceModel.currentbalance!)
                                        .toInt()) {
                                  Provider.of<Counter>(context, listen: false)
                                      .changeslidervalue(double.parse(
                                          widget.textEditingController.text));
                                  String s = widget.textEditingController.text
                                      .toString();
                                  var pos = s.lastIndexOf('.');
                                  String result =
                                      (pos != -1) ? s.substring(0, pos) : s;
                                  Provider.of<Counter>(context, listen: false)
                                      .withdrawinfo(
                                          result,
                                          // v.toStringAsFixed(2),
                                          // (double.parse(val) -
                                          //         double.parse(
                                          //             WithDrawModel.fee))
                                          //     .toStringAsFixed(2),
                                          double.parse(widget
                                              .textEditingController.text));
                                  Provider.of<Counter>(context, listen: false)
                                      .changeslidervalue(double.parse(
                                          widget.textEditingController.text));

                                  // setState(() {
                                  //   WithDrawModel.a = double.parse(
                                  //       widget.textEditingController.text);
                                  // });
                                } else {
                                  widget.textEditingController.text = widget
                                      .textEditingController.text
                                      .substring(
                                          0,
                                          widget.textEditingController.text
                                                  .length -
                                              1);
                                  widget.textEditingController.selection =
                                      TextSelection.fromPosition(TextPosition(
                                          offset: widget.textEditingController
                                              .text.length));
                                }
                              } else {
                                for (int i = 0;
                                    i <
                                        widget
                                            .textEditingController.text.length;
                                    i++) {
                                  if (_regExp.hasMatch(widget
                                          .textEditingController.text[i]) ==
                                      false) {
                                    if (i == 0) {
                                      widget.textEditingController.text = widget
                                          .textEditingController.text
                                          .substring(
                                              1,
                                              widget.textEditingController.text
                                                  .length);
                                    } else {
                                      widget.textEditingController.text = widget
                                              .textEditingController.text
                                              .substring(0, i) +
                                          widget.textEditingController.text
                                              .substring(
                                                  i + 1,
                                                  widget.textEditingController
                                                      .text.length);
                                    }
                                  }
                                }
                                widget.textEditingController.selection =
                                    TextSelection.fromPosition(TextPosition(
                                        offset: widget.textEditingController
                                            .text.length));
                              }

                              if (widget.textEditingController.text.length >
                                  2) {
                                widget.textEditingController.text = formatter
                                    .format(double.parse(
                                        widget.textEditingController.text))
                                    .toString();
                                widget.textEditingController.selection =
                                    TextSelection.fromPosition(TextPosition(
                                        offset: widget.textEditingController
                                            .text.length));
                              }
                            },
                            textInputAction: TextInputAction.done,
                            style: GoogleFonts.poppins(
                              fontSize: shortestSide > 600
                                  ? 18.sp /
                                      MediaQuery.of(context).textScaleFactor *
                                      1
                                  : 24 /
                                      MediaQuery.of(context).textScaleFactor *
                                      1,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff00A2FF),
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: greyColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: greyColor),
                              ),
                              border: InputBorder.none,
                              fillColor: Colors.transparent,
                              hintStyle: appLanguage == 'ur'
                                  ? GoogleFonts.notoNastaliqUrdu(
                                      fontSize: shortestSide > 600
                                          ? 18.sp /
                                              MediaQuery.of(context)
                                                  .textScaleFactor *
                                              1
                                          : 20 /
                                              MediaQuery.of(context)
                                                  .textScaleFactor *
                                              1,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff6A6A6A),
                                    )
                                  : GoogleFonts.poppins(
                                      fontSize: shortestSide > 600
                                          ? 18.sp /
                                              MediaQuery.of(context)
                                                  .textScaleFactor *
                                              1
                                          : 20 /
                                              MediaQuery.of(context)
                                                  .textScaleFactor *
                                              1,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff6A6A6A),
                                    ),
                              filled: true,
                              hintText: translateText("Amount"),
                            )),
                      )),
                ],
              ),
            )
          ],
        ),
        GridView.count(
          crossAxisCount: 3,
          childAspectRatio: shortestSide < 600 ? 3.8 / 2 : 5 / 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(allowedAmountLimit.length, (index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: selectedAmountList[index] == true
                        ? Color(0xff00A2FF)
                        : Colors.white,
                    side: BorderSide(
                        color: selectedAmountList[index] == true
                            ? Color(0xff00A2FF)
                            : Color.fromRGBO(128, 128, 128, 0.5)),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(shortestSide < 600 ? 12 : 20),
                    ),
                  ),
                  onPressed: (() {
                    widget.textEditingController.text =
                        formatter.format(amountsList[index]).toString();
                    widget.textEditingController.selection =
                        TextSelection.collapsed(
                            offset: widget.textEditingController.text.length);
                    if (selectedAmountList[index] == true) {
                      context
                          .read<AmountButtonsProvider>()
                          .changeButtonStatus(false, index);
                      widget.textEditingController.text = '';
                      context.read<Counter>().setcolor(false);
                    } else {
                      context
                          .read<AmountButtonsProvider>()
                          .changeButtonStatus(true, index);
                      context.read<Counter>().setcolor(true);
                    }
                  }),
                  child: Text(
                    formatter.format(amountsList[index]),
                    textScaleFactor: 1,
                    style: appLanguage == 'en'
                        ? GoogleFonts.poppins(
                            fontSize: shortestSide < 600 ? 11 : 11.sp,
                            color: selectedAmountList[index] == true
                                ? Colors.white
                                : Color.fromRGBO(128, 128, 128, 0.5))
                        : GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide < 600 ? 11 : 11.sp,
                            color: selectedAmountList[index] == true
                                ? Colors.white
                                : Color.fromRGBO(128, 128, 128, 0.5)),
                  )),
            );
          }),
        ),
      ],
    );
  }
}
