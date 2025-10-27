import 'dart:convert';

import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/get_api_data.dart';
import 'package:ezwage/ui/faq/controller/faq_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class FaqView extends StatefulWidget {
  const FaqView({Key? key}) : super(key: key);

  @override
  _faqviewState createState() => _faqviewState();
}

class _faqviewState extends State<FaqView> {
  var _titleList = [];
  var _descriptionList = [];
  _getFaqList(BuildContext context) async {
    Response response = await ApiFunctions().getRequest(
        'faqs/company/' + preferences.get('company_id').toString(), context);
    List<GetApiData> _parseFaqList = <GetApiData>[];
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      _parseFaqList = GetApiData.parse()
          .apiData(jsonEncode(decodedJson['results']['data']));
      for (int i = 0; i < _parseFaqList.length; i++) {
        _titleList.add(appLanguage == 'en'
            ? _parseFaqList[i].getApiData['title']
            : _parseFaqList[i].getApiData['urdu_title']);
        _descriptionList.add(appLanguage == 'en'
            ? _parseFaqList[i].getApiData['description']
            : _parseFaqList[i].getApiData['urdu_description']);
      }
      context.read<FaqProvider>().createFaqList(_titleList.length);
      context.read<FaqProvider>().setApiDataLoaded(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var showFaq = context.watch<FaqProvider>().showFaq;
    bool _apiLoaded = context.watch<FaqProvider>().dataLoadedFromApi;
    bool faqListCreated = context.watch<FaqProvider>().faqListCreated;
    if (_apiLoaded == false) _getFaqList(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizeBox(10),
        // CustomTextWidget("Have questions? We have answers!", Color(0xff00A2FF), 14),
        Row(
          children: [
            Spacer(),
            Text(
              translateText('Have_questions?_We_have_answers!'),
              textScaleFactor: 1,
              style: appLanguage == 'ur'
                  ? GoogleFonts.notoNastaliqUrdu(
                      fontSize: shortestSide > 600 ? 12.sp : 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00A2FF),
                    )
                  : GoogleFonts.poppins(
                      color: Color(0xff00A2FF),
                      fontWeight: FontWeight.w500,
                      fontSize: shortestSide > 600 ? 12.sp : 12),
            ),
            Spacer()
          ],
        ),
        // CustomSizeBox(5),
        // // CustomTextWidget("Questions from potential corporates’ perspective.",
        // //     simpletextcolor, 12),
        // Text(
        //   'Questions from potential corporates’ perspective.',
        //   style: GoogleFonts.poppins(
        //       color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),
        // ),
        CustomSizeBox(30),
        if (faqListCreated == true)
          for (int index = 0; index < _titleList.length; index++)
            if (index == 2 ||
                index == 3 ||
                index == 7 ||
                index == 9 ||
                index == 10 ||
                index == 12 ||
                index > 18)
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.read<FaqProvider>().updateFaqList(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                _titleList[index].toString(),
                                textScaleFactor: 1,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 10.sp : 10,
                                        color: simpletextColor,
                                        fontWeight: FontWeight.w400,
                                      )
                                    : GoogleFonts.poppins(
                                        color: simpletextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            shortestSide > 600 ? 10.sp : 12),
                              ),
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  showFaq[index] == true
                                      ? FontAwesomeIcons.chevronUp
                                      : (appLanguage == 'ur')
                                          ? FontAwesomeIcons.chevronDown
                                          : FontAwesomeIcons.chevronDown,
                                  color: (showFaq[index] == true)
                                      ? backicon
                                      : newblueColor,
                                  size: shortestSide > 600 ? 12.sp : 15,
                                ),
                              ],
                            ),
                          )

                          //  Row(
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.all(10.0),
                          //       child: Container(
                          //           width: 300,
                          //           child: Text(
                          //             _titleList[a].toString(),
                          //             style: GoogleFonts.poppins(
                          //                 color: Colors.white,
                          //                 fontWeight: FontWeight.w400,
                          //                 fontSize: 12),
                          //           )),
                          //     ),
                          //     Spacer(),
                          //     FaIcon(
                          //       showFaq[a] == true
                          //           ? FontAwesomeIcons.chevronDown
                          //           : FontAwesomeIcons.chevronRight,
                          //       color: whitecolor,
                          //       size: 15,
                          //     )
                          //   ],
                          // ),
                          ),
                    ),
                  ),
                  // CustomSizeBox(10),
                  showFaq[index] == true
                      ? Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: faqinnerclr,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: const Radius.circular(15.0),
                                      bottomRight: const Radius.circular(15.0),
                                    ),
                                    border: Border.all(color: faqclr),

                                    //  border: Border(
                                    //     bottom: BorderSide(width: 1.5, color: faqclr,style:    BorderStyle.solid),
                                    //        right: BorderSide(width: 1.5, color: faqclr,style:    BorderStyle.solid),
                                    //     left: BorderSide(width: 1.5, color: faqclr,style:    BorderStyle.solid),
                                    //     top:BorderSide(width: 1.5, color: faqclr,style:    BorderStyle.solid)
                                    //     ),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 10, 20, 30),
                                    child: Text(
                                      _descriptionList[index].toString(),
                                      textScaleFactor: 1,
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize:
                                                  shortestSide > 600 ? 6.sp : 8)
                                          : GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: shortestSide > 600
                                                  ? 8.sp
                                                  : 10),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Container(
                                color: faqinnerclr,
                                height: 1,
                              ),
                            ),
                          ],
                        )
                      : Column(),
                  CustomSizeBox(10),
                ],
              ),
        if (faqListCreated == false && _apiLoaded == true)
          Center(
              child: CustomTextWidget(translateText("FAQs_not_found"),
                  simpletextColor, shortestSide > 600 ? 12.sp : 12)),
      ],
    );
  }
}
