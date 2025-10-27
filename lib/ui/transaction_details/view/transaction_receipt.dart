import 'dart:io';
import 'dart:typed_data';
import 'package:dotted_line/dotted_line.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/transaction_details/controller/transaction_button_provider.dart';
import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

// ignore: must_be_immutable
class TransactionReceipt extends StatefulWidget {
  var userTransactionDetails;
  TransactionType transactionType;
  BuildContext imageContext;
  TransactionReceipt(
      this.userTransactionDetails, this.imageContext, this.transactionType);
  @override
  State<TransactionReceipt> createState() => _TransactionReceiptState();
}

class _TransactionReceiptState extends State<TransactionReceipt> {
  var formatter = NumberFormat('#,000.00');
  bool _buttonPressed = false;
  ScreenshotController screenshotController = ScreenshotController();
  Future<File> generatePdf(Uint8List? image) async {
    // making a pdf document to store a text and it is provided by pdf pakage
    final pdf = pw.Document();

    // Text is added here in center
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Center(child: pw.Image(pw.MemoryImage(image!))),
      ),
    );

    // passing the pdf and name of the docoment to make a direcotory in  the internal storage
    return saveDocument(
        name:
            "Transaction_Receipt_EZ-${widget.userTransactionDetails['Transaction_ID']}.pdf",
        pdf: pdf);
  }

  // it will make a named dircotory in the internal storage and then return to its call
  Future<File> saveDocument({
    String? name,
    pw.Document? pdf,
  }) async {
    // pdf save to the variable called bytes
    final bytes = await pdf!.save();

    // here a beautiful pakage  path provider helps us and take dircotory and name of the file  and made a proper file in internal storage
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    await fileOpen(file);
    // reterning the file to the top most method which is generate centered text.
    return file;
  }

// here we use a pakage to open the existing file that we make now.
  Future fileOpen(File file) async {
    final url = file.path;
    OpenFilex.open(url);
    _buttonPressed = false;
    // await openFile(file);
  }

  String? _userAmount;
  String? _transactionAmount;
  String? _chargesAmount;
  _captureWidget() {
    if (double.parse(widget.userTransactionDetails['Amount']) > 99) {
      _transactionAmount = formatter
          .format(double.parse(widget.userTransactionDetails['Amount']));
    } else {
      _transactionAmount = double.parse(widget.userTransactionDetails['Amount'])
          .toStringAsFixed(2);
    }
    if (double.parse(widget.userTransactionDetails['Received']) > 99) {
      _userAmount = formatter
          .format(double.parse(widget.userTransactionDetails['Received']));
    } else {
      _userAmount = double.parse(widget.userTransactionDetails['Received'])
          .toStringAsFixed(2);
    }
    if (double.parse(widget.userTransactionDetails['Charges']) > 99) {
      _chargesAmount = formatter
          .format(double.parse(widget.userTransactionDetails['Charges']));
    } else {
      _chargesAmount = double.parse(widget.userTransactionDetails['Charges'])
          .toStringAsFixed(2);
    }
    _transactionAmount == _userAmount
        ? _chargesAmount = '0.00'
        : _chargesAmount;
    var _transactionFieldList =
        widget.transactionType == TransactionType.SalaryWithdraw
            ? [
                translateText('Transaction_ID'),
                translateText('Employee_ID'),
                translateText('Amount_Received'),
                translateText('EZ_Wage_Charges'),
                translateText('Bank_Name'),
                translateText('IBAN_number'),
                translateText('Transaction_Date'),
                translateText('Transaction_Time'),
              ]
            : widget.transactionType == TransactionType.PayrollFinance
                ? [
                    translateText('Transaction_ID'),
                    translateText('Employee_ID'),
                    translateText('Amount_Received'),
                    translateText('EZ_Wage_Charges'),
                    translateText('Bank_Name'),
                    translateText('IBAN_number'),
                    translateText('Transaction_Date'),
                    translateText('Transaction_Time'),
                  ]
                : widget.transactionType == TransactionType.MutualFunds
                    ? [
                        translateText('Transfer_From'),
                        translateText('Transaction_ID'),
                        translateText('Transaction_Date'),
                        translateText('Transaction_Time'),
                        translateText('Amount_Sent'),
                        translateText('EZ_Wage_Charges'),
                        translateText('Plan_Name'),
                        translateText('Bank_Name'),
                        translateText('Account_Number'),
                      ]
                    : [
                        translateText('Transfer_From'),
                        translateText('Transfer_To'),
                        translateText('EZ_Friends_CNIC'),
                        translateText('EZ_Friends_Company'),
                        translateText('Transaction_ID'),
                        translateText('Employee_ID'),
                        translateText('Amount_Sent'),
                        translateText('EZ_Wage_Charges'),
                        translateText('Bank_Name'),
                        translateText('IBAN_number'),
                        translateText('Transaction_Date'),
                        translateText('Transaction_Time'),
                      ];
    var _transactionValueList =
        widget.transactionType == TransactionType.SalaryWithdraw
            ? [
                'EZ-' + widget.userTransactionDetails['Transaction_ID'],
                'EZ-' + widget.userTransactionDetails['EmpID'],
                'PKR ' + _userAmount.toString(),
                'PKR ' + _chargesAmount.toString(),
                widget.userTransactionDetails['Bank_Name'],
                widget.userTransactionDetails['IBAN'],
                widget.userTransactionDetails['Date'],
                widget.userTransactionDetails['Time'],
              ]
            : widget.transactionType == TransactionType.PayrollFinance
                ? [
                    'EZ-' + widget.userTransactionDetails['Transaction_ID'],
                    'EZ-' + widget.userTransactionDetails['EmpID'],
                    'PKR ' + _userAmount.toString(),
                    'PKR ' + _chargesAmount.toString(),
                    widget.userTransactionDetails['Bank_Name'],
                    widget.userTransactionDetails['IBAN'],
                    widget.userTransactionDetails['Date'],
                    widget.userTransactionDetails['Time'],
                  ]
                : widget.transactionType == TransactionType.MutualFunds
                    ? [
                        widget.userTransactionDetails['Transfer_From'],
                        'FT-' + widget.userTransactionDetails['Transaction_ID'],
                        widget.userTransactionDetails['Date'],
                        widget.userTransactionDetails['Time'],
                        'PKR ' + _userAmount.toString(),
                        'PKR ' + _chargesAmount.toString(),
                        'Multi Asset Fund',
                        widget.userTransactionDetails['Bank_Name'],
                        widget.userTransactionDetails['IBAN'],
                      ]
                    : [
                        widget.userTransactionDetails['Transfer_From'],
                        widget.userTransactionDetails['Transfer_To'],
                        widget.userTransactionDetails['CNIC'],
                        widget.userTransactionDetails['EZ_Friends_Company'],
                        'EZ-' + widget.userTransactionDetails['Transaction_ID'],
                        'EZ-' + widget.userTransactionDetails['EmpID'],
                        'PKR ' + _userAmount.toString(),
                        'PKR ' + _chargesAmount.toString(),
                        widget.userTransactionDetails['Bank_Name'],
                        widget.userTransactionDetails['IBAN'],
                        widget.userTransactionDetails['Date'],
                        widget.userTransactionDetails['Time'],
                      ];

    return Screenshot(
        controller: screenshotController,
        child: new MediaQuery(
          data: new MediaQueryData(),
          child: new MaterialApp(
            locale: Locale(appLanguage),
            localizationsDelegates: [
              // delegate from flutter_localization
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              // delegate from localization package.
            ],
            supportedLocales: [
              Locale('en'),
              Locale('ur'),
            ],
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                backgroundColor: Colors.white,
                body: SafeArea(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3.0,
                                offset: const Offset(0.0, 5.0),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SvgPicture.asset(
                                'assets/images/ezwage_new_color_logo.svg',
                                height: widget.transactionType ==
                                            TransactionType.EZFriend ||
                                        widget.transactionType ==
                                            TransactionType.MutualFunds
                                    ? 50
                                    : 70,
                              ),
                              SizedBox(
                                height: widget.transactionType ==
                                            TransactionType.EZFriend ||
                                        widget.transactionType ==
                                            TransactionType.MutualFunds
                                    ? appLanguage == 'en'
                                        ? 10
                                        : 5
                                    : 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                    textScaleFactor: 1,
                                    text: TextSpan(
                                        text:
                                            translateText("Transaction") + " ",
                                        style: appLanguage == 'ur'
                                            ? GoogleFonts.notoNastaliqUrdu(
                                                fontSize: widget.transactionType ==
                                                            TransactionType
                                                                .EZFriend ||
                                                        widget.transactionType ==
                                                            TransactionType
                                                                .MutualFunds
                                                    ? 10
                                                    : 14,
                                                color: Colors.black,
                                              )
                                            : GoogleFonts.poppins(
                                                fontSize: widget.transactionType ==
                                                            TransactionType
                                                                .EZFriend ||
                                                        widget.transactionType ==
                                                            TransactionType
                                                                .MutualFunds
                                                    ? 14
                                                    : 16,
                                                color: Colors.black,
                                              ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: widget.userTransactionDetails[
                                                        'Status'] ==
                                                    'Successful'
                                                ? translateText("Successful")
                                                : widget.userTransactionDetails[
                                                            'Status'] ==
                                                        'In Review'
                                                    ? translateText("Pending")
                                                    : widget.userTransactionDetails[
                                                                'Status'] ==
                                                            'Rejected'
                                                        ? translateText(
                                                            "Rejected")
                                                        : translateText(
                                                            "Failed"),
                                            style: appLanguage == 'ur'
                                                ? GoogleFonts.notoNastaliqUrdu(
                                                    fontSize: widget.transactionType ==
                                                                TransactionType
                                                                    .EZFriend ||
                                                            widget.transactionType ==
                                                                TransactionType
                                                                    .MutualFunds
                                                        ? 12
                                                        : 14,
                                                    color: Colors.black,
                                                  )
                                                : GoogleFonts.poppins(
                                                    fontSize: widget.transactionType ==
                                                                TransactionType
                                                                    .EZFriend ||
                                                            widget.transactionType ==
                                                                TransactionType
                                                                    .MutualFunds
                                                        ? 14
                                                        : 16,
                                                    color: Colors.black,
                                                  ),
                                          ),
                                        ])),
                              ),
                              SizedBox(
                                height: appLanguage == 'en' ? 10 : 0,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      "PKR " + _transactionAmount.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: widget.transactionType ==
                                                      TransactionType
                                                          .EZFriend ||
                                                  widget.transactionType ==
                                                      TransactionType
                                                          .MutualFunds
                                              ? 18
                                              : 28,
                                          fontWeight: FontWeight.w600,
                                          color: blueColor))),
                              SizedBox(
                                height: widget.transactionType ==
                                            TransactionType.EZFriend ||
                                        widget.transactionType ==
                                            TransactionType.MutualFunds
                                    ? 10
                                    : 20,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      translateText('Transaction_Details')
                                          .toString()
                                          .toUpperCase(),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'en'
                                          ? GoogleFonts.poppins(
                                              fontSize: widget.transactionType ==
                                                          TransactionType
                                                              .EZFriend ||
                                                      widget.transactionType ==
                                                          TransactionType
                                                              .MutualFunds
                                                  ? 12
                                                  : 14,
                                              color: Colors.grey,
                                            )
                                          : GoogleFonts.notoNastaliqUrdu(
                                              fontSize: 10,
                                              color: Colors.grey,
                                            ))),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      25,
                                      widget.transactionType ==
                                                  TransactionType.EZFriend ||
                                              widget.transactionType ==
                                                  TransactionType.MutualFunds
                                          ? 15
                                          : 25,
                                      25,
                                      widget.transactionType ==
                                                  TransactionType.EZFriend ||
                                              widget.transactionType ==
                                                  TransactionType.MutualFunds
                                          ? 15
                                          : 25),
                                  child: DottedLine(
                                    dashColor: backicon,
                                    lineThickness: 0.5,
                                  )),
                              Expanded(
                                child: ListView.builder(
                                    itemCount: _transactionFieldList.length,
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          if (index == 6 &&
                                              widget.transactionType ==
                                                  TransactionType.MutualFunds)
                                            Padding(
                                              padding: appLanguage == 'en'
                                                  ? EdgeInsets.fromLTRB(
                                                      25, 10, 0, 0)
                                                  : EdgeInsets.fromLTRB(
                                                      0,
                                                      widget.transactionType ==
                                                                  TransactionType
                                                                      .EZFriend ||
                                                              widget.transactionType ==
                                                                  TransactionType
                                                                      .MutualFunds
                                                          ? 5
                                                          : 10,
                                                      25,
                                                      0),
                                              child: Align(
                                                alignment: appLanguage == 'en'
                                                    ? Alignment.centerLeft
                                                    : Alignment.centerRight,
                                                child: Text(
                                                  translateText(
                                                    'Fund_Investment_Details',
                                                  ),
                                                  textScaleFactor: 1,
                                                  style: appLanguage == 'ur'
                                                      ? GoogleFonts
                                                          .notoNastaliqUrdu(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xff3E3E3E))
                                                      : GoogleFonts.poppins(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Color(
                                                              0xff3E3E3E)),
                                                ),
                                              ),
                                            ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 5,
                                                child: Padding(
                                                  padding: appLanguage == 'en'
                                                      ? EdgeInsets.fromLTRB(
                                                          25, 10, 0, 0)
                                                      : EdgeInsets.fromLTRB(
                                                          0,
                                                          widget.transactionType ==
                                                                      TransactionType
                                                                          .EZFriend ||
                                                                  widget.transactionType ==
                                                                      TransactionType
                                                                          .MutualFunds
                                                              ? 5
                                                              : 10,
                                                          25,
                                                          0),
                                                  child: Text(
                                                    _transactionFieldList[
                                                        index],
                                                    textAlign:
                                                        appLanguage == 'en'
                                                            ? TextAlign.left
                                                            : TextAlign.right,
                                                    style: appLanguage == 'ur'
                                                        ? GoogleFonts
                                                            .notoNastaliqUrdu(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Color(
                                                                    0xff3E3E3E))
                                                        : GoogleFonts.poppins(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0xff3E3E3E)),
                                                  ),
                                                ),
                                              ),
                                              // Spacer(),
                                              Expanded(
                                                flex: 5,
                                                child: Padding(
                                                  padding: appLanguage == 'en'
                                                      ? EdgeInsets.fromLTRB(
                                                          0, 10, 20, 0)
                                                      : EdgeInsets.fromLTRB(
                                                          5,
                                                          widget.transactionType ==
                                                                      TransactionType
                                                                          .EZFriend ||
                                                                  widget.transactionType ==
                                                                      TransactionType
                                                                          .MutualFunds
                                                              ? 5
                                                              : 10,
                                                          10,
                                                          0),
                                                  child: Text(
                                                    _transactionValueList[index]
                                                        .toString(),
                                                    textAlign: TextAlign.right,
                                                    style: GoogleFonts.poppins(
                                                        fontSize:
                                                            appLanguage == 'en'
                                                                ? 12
                                                                : 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xff3E3E3E)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          // if (index !=
                                          //     _transactionFieldList.length - 1)
                                          //   Padding(
                                          //     padding: EdgeInsets.fromLTRB(
                                          //         0, 10, 0, 0),
                                          //   ),
                                        ],
                                      );
                                    }),
                              ),
                            ],
                          )),
                    ),
                  ),
                )),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    bool _downloadProcess =
        context.watch<TransactionButtonProvider>().downloadProcess;
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff00A2FF),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(shortestSide > 600 ? 5.sp : 10)),
            ),
            onPressed: () async {
              if (_buttonPressed == false) {
                _buttonPressed = true;
                context
                    .read<TransactionButtonProvider>()
                    .setDownloadProcessStatus(true);
                await screenshotController
                    .captureFromWidget(_captureWidget())
                    .then((Uint8List? image) async {
                  if (image != null) {
                    await generatePdf(image);
                    context
                        .read<TransactionButtonProvider>()
                        .setDownloadProcessStatus(false);
                  }
                });
              }
            },
            child: Padding(
              padding: EdgeInsets.all(shortestSide > 600 ? 8.sp : 15.0),
              child: _downloadProcess == false
                  ? Text(
                      translateText('Download_Receipt'),
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 12.sp : 14,
                              fontWeight: FontWeight.w500,
                            )
                          : GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 14.sp : 16,
                              fontWeight: FontWeight.w500),
                    )
                  : SpinKitCircle(
                      color: Colors.white,
                      size: 20.0,
                    ),
            ),
          ),
        ));
  }
}
