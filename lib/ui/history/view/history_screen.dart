import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/history/view/history_view.dart';
import 'package:ezwage/ui/recent_transactions/controller/recent_transactions_provider.dart';
import 'package:ezwage/ui/video_tutorials/model/condition_bloc.dart';
import 'package:ezwage/ui/video_tutorials/model/enum_condition_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _historyscreenState createState() => _historyscreenState();
}

class _historyscreenState extends State<HistoryScreen> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  digitsConverter(int value) {
    if (value < 10)
      return '0' + value.toString();
    else
      return value.toString();
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    ConditionBloc _conditionBloc = ConditionBloc();
    final wrongFromDateController = TextEditingController();
    final wrongToDateController = TextEditingController();
    DateTime currentDateTime = DateTime.now();
    final mediaQuery = MediaQuery.of(context).textScaleFactor * 1;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: header(Column(
                  children: [
                    Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.fromLTRB(10, 15, 0, 20)
                          : EdgeInsets.fromLTRB(10, 10, 0, 20),
                      child: Stack(
                        children: [
                          Padding(
                            padding: appLanguage == 'en'
                                ? EdgeInsets.fromLTRB(0, 10, 0, 0)
                                : EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  context
                                      .read<RecentTransactionsProvider>()
                                      .getTransactionsData(
                                          'History', '', context);
                                },
                                child: Text(
                                  translateText('Reset'),
                                  textScaleFactor: 1,
                                  style: appLanguage == 'ur'
                                      ? GoogleFonts.notoNastaliqUrdu(
                                          color: backicon,
                                          fontWeight: FontWeight.w500,
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 12)
                                      : GoogleFonts.inter(
                                          color: backicon,
                                          fontWeight: FontWeight.w500,
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 14),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              translateText('History'),
                              textScaleFactor: 1,
                              style: appLanguage == 'ur'
                                  ? GoogleFonts.notoNastaliqUrdu(
                                      color: newblueColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: shortestSide > 600 ? 16.sp : 20)
                                  : GoogleFonts.poppins(
                                      color: newblueColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          shortestSide > 600 ? 18.sp : 22),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _conditionBloc.dispose();
                              _conditionBloc = ConditionBloc();
                              showCupertinoModalPopup<void>(
                                  context: context,
                                  builder: (BuildContext newContext) {
                                    return StreamBuilder<bool>(
                                        stream: _conditionBloc.condtionStream,
                                        builder: (streamContext, snapshot) {
                                          return Container(
                                            padding:
                                                const EdgeInsets.only(top: 6.0),
                                            height: appLanguage == 'en'
                                                ? shortestSide > 600
                                                    ? 400.sp
                                                    : 450
                                                : shortestSide > 600
                                                    ? 500.sp
                                                    : 550,
                                            // The Bottom margin is provided to align the popup above the system navigation bar.
                                            margin: EdgeInsets.only(
                                              bottom:
                                                  MediaQuery.of(streamContext)
                                                      .viewInsets
                                                      .bottom,
                                            ),
                                            // Provide a background color for the popup.
                                            color: CupertinoColors
                                                .systemBackground
                                                .resolveFrom(streamContext),
                                            // Use a SafeArea widget to avoid system overlaps.
                                            child: SafeArea(
                                              top: false,
                                              child: Scaffold(
                                                body: Column(
                                                  children: [
                                                    Padding(
                                                      padding: appLanguage ==
                                                              'en'
                                                          ? EdgeInsets.fromLTRB(
                                                              10, 10, 0, 10)
                                                          : EdgeInsets.fromLTRB(
                                                              0, 10, 10, 10),
                                                      child: Align(
                                                          alignment: appLanguage ==
                                                                  'en'
                                                              ? Alignment
                                                                  .centerLeft
                                                              : Alignment
                                                                  .centerRight,
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                translateText(
                                                                    'From_Date'),
                                                                textScaleFactor:
                                                                    1,
                                                                style: appLanguage ==
                                                                        'en'
                                                                    ? GoogleFonts.poppins(
                                                                        fontSize: shortestSide >
                                                                                600
                                                                            ? 12
                                                                                .sp
                                                                            : 12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold)
                                                                    : GoogleFonts.notoNastaliqUrdu(
                                                                        fontSize: shortestSide >
                                                                                600
                                                                            ? 10
                                                                                .sp
                                                                            : 10,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                              ),
                                                              Text(
                                                                wrongFromDateController
                                                                    .text
                                                                    .toString(),
                                                                style: appLanguage ==
                                                                        'en'
                                                                    ? GoogleFonts.poppins(
                                                                        fontSize: shortestSide >
                                                                                600
                                                                            ? 12.sp /
                                                                                MediaQuery.of(context)
                                                                                    .textScaleFactor *
                                                                                1
                                                                            : 12 /
                                                                                MediaQuery.of(context)
                                                                                    .textScaleFactor *
                                                                                1,
                                                                        color: Colors
                                                                            .red)
                                                                    : GoogleFonts.notoNastaliqUrdu(
                                                                        fontSize: shortestSide >
                                                                                600
                                                                            ? 10.sp /
                                                                                MediaQuery.of(context).textScaleFactor *
                                                                                1
                                                                            : 10 / MediaQuery.of(context).textScaleFactor * 1,
                                                                        color: Colors.red),
                                                              )
                                                            ],
                                                          )),
                                                    ),
                                                    SizedBox(
                                                        height: appLanguage ==
                                                                'en'
                                                            ? shortestSide > 600
                                                                ? 130.sp /
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .textScaleFactor *
                                                                    1
                                                                : 130 /
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .textScaleFactor *
                                                                    1
                                                            : shortestSide > 600
                                                                ? 180.sp /
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .textScaleFactor *
                                                                    1
                                                                : 180 /
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .textScaleFactor *
                                                                    1,
                                                        child: CupertinoTheme(
                                                          data:
                                                              CupertinoThemeData(
                                                            brightness:
                                                                Brightness
                                                                    .light,
                                                            textTheme:
                                                                CupertinoTextThemeData(
                                                                    dateTimePickerTextStyle: appLanguage ==
                                                                            'en'
                                                                        ? GoogleFonts
                                                                            .poppins(
                                                                            fontSize: shortestSide > 600
                                                                                ? 8.sp / MediaQuery.of(context).textScaleFactor * 1
                                                                                : 14 / MediaQuery.of(context).textScaleFactor * 1,
                                                                          )
                                                                        : GoogleFonts.notoNastaliqUrdu(
                                                                            fontSize: shortestSide > 600
                                                                                ? 8.sp / MediaQuery.of(context).textScaleFactor * 1
                                                                                : 12 / MediaQuery.of(context).textScaleFactor * 1)),
                                                          ),
                                                          child:
                                                              CupertinoDatePicker(
                                                            initialDateTime:
                                                                fromDate,
                                                            mode:
                                                                CupertinoDatePickerMode
                                                                    .date,
                                                            use24hFormat: true,
                                                            // This is called when the user changes the time.
                                                            onDateTimeChanged:
                                                                (DateTime
                                                                    newTime) {
                                                              fromDate =
                                                                  newTime;
                                                              var difference =
                                                                  currentDateTime
                                                                      .difference(
                                                                          fromDate)
                                                                      .inSeconds;
                                                              var toDifference =
                                                                  toDate
                                                                      .difference(
                                                                          fromDate)
                                                                      .inSeconds;

                                                              if (difference <
                                                                  0) {
                                                                wrongFromDateController
                                                                        .text =
                                                                    translateText(
                                                                        'From_date_cannot_be_greater_than_current_date');
                                                              } else if (toDifference <
                                                                  0) {
                                                                wrongFromDateController
                                                                        .text =
                                                                    translateText(
                                                                        'From_date_cannot_be_greater_than_to_date');
                                                              } else {
                                                                wrongFromDateController
                                                                    .text = '';
                                                              }

                                                              difference =
                                                                  currentDateTime
                                                                      .difference(
                                                                          toDate)
                                                                      .inSeconds;
                                                              toDifference = toDate
                                                                  .difference(
                                                                      fromDate)
                                                                  .inSeconds;
                                                              if (difference <
                                                                  0) {
                                                                wrongToDateController
                                                                        .text =
                                                                    translateText(
                                                                        'To_date_cannot_be_greater_than_current_date');
                                                              } else if (toDifference <
                                                                  0) {
                                                                wrongToDateController
                                                                        .text =
                                                                    translateText(
                                                                        'To_date_cannot_be_less_than_from_date');
                                                              } else {
                                                                wrongToDateController
                                                                    .text = '';
                                                              }
                                                              _conditionBloc
                                                                  .eventSink
                                                                  .add(ConditionEvent
                                                                      .True);
                                                            },
                                                          ),
                                                        )),
                                                    Padding(
                                                      padding: appLanguage ==
                                                              'en'
                                                          ? EdgeInsets.fromLTRB(
                                                              10, 10, 0, 10)
                                                          : EdgeInsets.fromLTRB(
                                                              0, 10, 10, 10),
                                                      child: Align(
                                                          alignment: appLanguage ==
                                                                  'en'
                                                              ? Alignment
                                                                  .centerLeft
                                                              : Alignment
                                                                  .centerRight,
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                translateText(
                                                                    'To_Date'),
                                                                textScaleFactor:
                                                                    1,
                                                                style: appLanguage ==
                                                                        'en'
                                                                    ? GoogleFonts.poppins(
                                                                        fontSize: shortestSide >
                                                                                600
                                                                            ? 12
                                                                                .sp
                                                                            : 12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold)
                                                                    : GoogleFonts.notoNastaliqUrdu(
                                                                        fontSize: shortestSide >
                                                                                600
                                                                            ? 10
                                                                                .sp
                                                                            : 10,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                              ),
                                                              Text(
                                                                wrongToDateController
                                                                    .text
                                                                    .toString(),
                                                                style: appLanguage ==
                                                                        'en'
                                                                    ? GoogleFonts.poppins(
                                                                        fontSize: shortestSide > 600
                                                                            ? 12.sp /
                                                                                mediaQuery
                                                                            : 12 /
                                                                                mediaQuery,
                                                                        color: Colors
                                                                            .red)
                                                                    : GoogleFonts.notoNastaliqUrdu(
                                                                        fontSize: shortestSide > 600
                                                                            ? 10.sp /
                                                                                mediaQuery
                                                                            : 10 /
                                                                                mediaQuery,
                                                                        color: Colors
                                                                            .red),
                                                              ),
                                                            ],
                                                          )),
                                                    ),
                                                    SizedBox(
                                                        height: appLanguage ==
                                                                'en'
                                                            ? shortestSide > 600
                                                                ? 120.sp /
                                                                    mediaQuery
                                                                : 130 /
                                                                    mediaQuery
                                                            : shortestSide > 600
                                                                ? 150.sp /
                                                                    mediaQuery
                                                                : 180 /
                                                                    mediaQuery,
                                                        child: CupertinoTheme(
                                                          data:
                                                              CupertinoThemeData(
                                                            brightness:
                                                                Brightness
                                                                    .light,
                                                            textTheme:
                                                                CupertinoTextThemeData(
                                                                    dateTimePickerTextStyle: appLanguage ==
                                                                            'en'
                                                                        ? GoogleFonts
                                                                            .poppins(
                                                                            fontSize: shortestSide > 600
                                                                                ? 8.sp
                                                                                : 14,
                                                                          )
                                                                        : GoogleFonts.notoNastaliqUrdu(
                                                                            fontSize: shortestSide > 600
                                                                                ? 8.sp
                                                                                : 12)),
                                                          ),
                                                          child:
                                                              CupertinoDatePicker(
                                                            initialDateTime:
                                                                toDate,
                                                            mode:
                                                                CupertinoDatePickerMode
                                                                    .date,

                                                            use24hFormat: true,
                                                            // This is called when the user changes the time.
                                                            onDateTimeChanged:
                                                                (DateTime
                                                                    newTime) {
                                                              var difference =
                                                                  currentDateTime
                                                                      .difference(
                                                                          fromDate)
                                                                      .inSeconds;
                                                              var toDifference =
                                                                  toDate
                                                                      .difference(
                                                                          fromDate)
                                                                      .inSeconds;

                                                              if (difference <
                                                                  0) {
                                                                wrongFromDateController
                                                                        .text =
                                                                    translateText(
                                                                        'From_date_cannot_be_greater_than_current_date');
                                                              } else if (toDifference <
                                                                  0) {
                                                                wrongFromDateController
                                                                        .text =
                                                                    translateText(
                                                                        'From_date_cannot_be_greater_than_to_date');
                                                              } else {
                                                                wrongFromDateController
                                                                    .text = '';
                                                              }
                                                              toDate = newTime;
                                                              difference =
                                                                  currentDateTime
                                                                      .difference(
                                                                          toDate)
                                                                      .inSeconds;
                                                              toDifference = toDate
                                                                  .difference(
                                                                      fromDate)
                                                                  .inSeconds;
                                                              if (difference <
                                                                  0) {
                                                                wrongToDateController
                                                                        .text =
                                                                    translateText(
                                                                        'To_date_cannot_be_greater_than_current_date');
                                                              } else if (toDifference <
                                                                  0) {
                                                                wrongToDateController
                                                                        .text =
                                                                    translateText(
                                                                        'To_date_cannot_be_less_than_from_date');
                                                              } else {
                                                                wrongToDateController
                                                                    .text = '';
                                                              }
                                                              _conditionBloc
                                                                  .eventSink
                                                                  .add(ConditionEvent
                                                                      .True);
                                                            },
                                                          ),
                                                        )),
                                                    CupertinoButton(
                                                        child: Text(
                                                          'Done',
                                                          style: TextStyle(
                                                              fontSize:
                                                                  shortestSide >
                                                                          600
                                                                      ? 12.sp / mediaQuery
                                                                      : 14 /mediaQuery  ),
                                                        ),
                                                        onPressed: () {
                                                          if (wrongFromDateController
                                                                      .text ==
                                                                  '' &&
                                                              wrongToDateController
                                                                      .text ==
                                                                  '') {
                                                            _conditionBloc
                                                                .dispose();
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            context.read<RecentTransactionsProvider>().getTransactionsData(
                                                                'History',
                                                                '?from=' +
                                                                    digitsConverter(fromDate
                                                                            .year)
                                                                        .toString() +
                                                                    '-' +
                                                                    digitsConverter(fromDate
                                                                            .month)
                                                                        .toString() +
                                                                    '-' +
                                                                    digitsConverter(fromDate
                                                                            .day)
                                                                        .toString() +
                                                                    '&to=' +
                                                                    digitsConverter(toDate
                                                                            .year)
                                                                        .toString() +
                                                                    '-' +
                                                                    digitsConverter(toDate
                                                                            .month)
                                                                        .toString() +
                                                                    '-' +
                                                                    digitsConverter(
                                                                            toDate.day)
                                                                        .toString(),
                                                                context);
                                                          }
                                                        })
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  });
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: appLanguage == 'en'
                                    ? EdgeInsets.fromLTRB(0, 10, 10, 0)
                                    : EdgeInsets.fromLTRB(0, 22, 10, 0),
                                child: SvgPicture.asset(
                                  "assets/images/filter_icon.svg",
                                  height: shortestSide > 600 ? 16.sp : 18,
                                ),
                              ),
                              //  Container(
                              //   width: 80,
                              //   decoration: BoxDecoration(
                              //       border: Border.all(
                              //           color: backicon.withOpacity(0.2),
                              //           width: 1),
                              //       borderRadius: BorderRadius.circular(8)),
                              //   child: Padding(
                              //     padding: const EdgeInsets.all(8.0),
                              //     child:
                              //     Row(
                              //       children: [
                              //         Image.asset("assets/images/down.png"),
                              //         Padding(
                              //           padding: const EdgeInsets.only(
                              //               left: 8.0, top: 2, bottom: 5),
                              //           child: Text(
                              //             translateText(
                              //                     'Filter'),
                              //             style: GoogleFonts.inter(
                              //                 color: backicon,
                              //                 fontWeight: FontWeight.w500,
                              //                 fontSize: 10),
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              Expanded(child: HistoryView()),
            ],
          ),
        ),
      ),
    );
  }
}
