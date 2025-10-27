import 'dart:convert';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/utils/token.dart';
import 'package:ezwage/global/views/buttons/email_button.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/url.dart';
import 'package:ezwage/ui/email_contact/controller/email_controller.dart';
import 'package:ezwage/ui/email_contact/model/email_model.dart';
import 'package:ezwage/ui/email_contact/view/email_sent_dialouge.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../global/utils/colors.dart';
import 'package:http/http.dart' as http;

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  _emailscreenState createState() => _emailscreenState();
}

class _emailscreenState extends State<EmailScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<EmailProvider>(context, listen: false).makenull();
    });
    super.initState();
  }

  String id = ProfileModel.uid.toString();
  Future sentemail() async {
    var json_body = {
      "subject": EmailModel.subject,
      "message": EmailModel.message,
      "user_id": id,
      "company_id": preferences.get('company_id'),
    };
    // await dotenv.load();
    final response = await http.post(Uri.parse(BASE_URL + "support"),
        headers: {
          'Authorization': 'Bearer ${TokenModel.token}',
          'Content-Type': 'application/json',
          'traceid': ApiFunctions().traceid,
        },
        body: jsonEncode(json_body));

    if (response.statusCode == 200) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return WillPopScope(
              onWillPop: () async => false,
              child: AlertDialog(
                insetPadding: appLanguage == 'en'
                    ? EdgeInsets.fromLTRB(10, 50, 10, 0)
                    : EdgeInsets.fromLTRB(0, 30, 0, 0),
                contentPadding: EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                content:
                    Container(color: Colors.white, child: EmailSentDialouge()),
              ),
            );
          });
      return response.body;
    } else {
      var decodedJson = jsonDecode(response.body);
      CustomSnackBar(false)
          .showInSnackBar(decodedJson["errors"]["errors"][0]["msg"], context);
      throw Exception(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final mediaQuery = MediaQuery.of(context).textScaleFactor * 1;
    return Scaffold(
      // appBar: new ReusableWidgetswithbackbutton().getAppBar(
      //     GestureDetector(
      //       onTap: () {
      //         // Navigator.pop(context);
      //       },
      //       child: Row(
      //         children: [
      //           // Container(
      //           //   decoration: BoxDecoration(border: Border.all(color: whitecolor), borderRadius: BorderRadius.circular(5)),
      //           //   child: Padding(
      //           //     padding: const EdgeInsets.only(left: 8.0, top: 3, bottom: 3),
      //           //     child: Icon(Icons.arrow_back_ios),
      //           //   ),
      //           // )
      //         ],
      //       ),
      //     ),
      //     Row(
      //       children: [CustomTextWidget("Analytics", whitecolor, 20)],
      //     )),
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            shortestSide < 600 ? Size.fromHeight(60.0) : Size.fromHeight(80.0),
        child: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: header(Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 35, 0, 20),
                  child: Stack(
                    children: [
                      Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(shortestSide < 600 ? 15 : 30,
                                shortestSide < 600 ? 0 : 15, 0, 0)
                            : EdgeInsets.fromLTRB(
                                0, shortestSide < 600 ? 10 : 30, 10, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: backicon.withOpacity(0.2), width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.only(
                                      left: shortestSide < 600 ? 10.0 : 15,
                                      top: 3,
                                      bottom: 3)
                                  : EdgeInsets.only(
                                      right: 10.0, top: 3, bottom: 3),
                              child: shortestSide > 600
                                  ? Icon(
                                      Icons.arrow_back_ios,
                                      color: backicon,
                                      size: 15.sp,
                                    )
                                  : Icon(
                                      Icons.arrow_back_ios,
                                      color: backicon,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: appLanguage == 'ur'
                              ? EdgeInsets.only(right: 8)
                              : EdgeInsets.only(left: 0),
                          child: Text(
                            translateText('Contact_Us_By_Email'),
                            textScaleFactor: 1,
                            style: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    color: newblueColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: shortestSide > 600 ? 14.sp : 18)
                                : GoogleFonts.poppins(
                                    color: newblueColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: shortestSide > 600 ? 18.sp : 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider()
              ],
            )),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizeBox(20),
              Container(
                decoration: BoxDecoration(
                    // color: Color(0xffF9FDFF),
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
                // height: double.infinity,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.all(shortestSide > 600 ? 5.sp : 0.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                // Padding(
                                //   padding: const EdgeInsets.only(bottom: 14.0),
                                //   child: Text("* ",
                                //       style: GoogleFonts.poppins(
                                //         // wordSpacing: 1,
                                //         fontSize: 12,
                                //         fontWeight: FontWeight.w400,
                                //         color: emaildiscriptionclr,
                                //       )),
                                // ),
                                // Flexible(
                                //   child: Column(
                                //     children: [
                                //       Text(
                                //         translateText(
                                //                 '*_Our_team_will_get_in_touch_with_you_shortly_after_your_form_submission.'),
                                //         // textAlign: TextAlign.center,
                                //         style: appLanguage == 'ur'
                                //             ? GoogleFonts.notoNastaliqUrdu(
                                //                 // wordSpacing: 1,
                                //                 fontSize: 12,
                                //                 fontWeight: FontWeight.w400,
                                //                 color: emaildiscriptionclr,
                                //               )
                                //             : GoogleFonts.poppins(
                                //                 fontSize: 12,
                                //                 // wordSpacing: 1,
                                //                 fontWeight: FontWeight.w400,
                                //                 color: emaildiscriptionclr,
                                //               ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0),
                        //   child: Text(
                        //     translateText(
                        //             '*_Please_explain_the_problem/issue.'),
                        //     // textAlign: TextAlign.center,
                        //     style: appLanguage == 'ur'
                        //         ? GoogleFonts.notoNastaliqUrdu(
                        //             // wordSpacing: 1,
                        //             fontSize: 12,
                        //             fontWeight: FontWeight.w400,
                        //             color: emaildiscriptionclr,
                        //           )
                        //         : GoogleFonts.poppins(
                        //             fontSize: 12,
                        //             // wordSpacing: 1,
                        //             fontWeight: FontWeight.w400,
                        //             color: emaildiscriptionclr,
                        //           ),
                        //   ),
                        // ),
                        CustomSizeBox(0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.only(left: 20.0)
                                  : EdgeInsets.only(right: 20.0),
                              child: Text(
                                translateText('Subject'),
                                textScaleFactor: 1,
                                // textAlign: TextAlign.center,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        // wordSpacing: 1,
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                        color: emaildiscriptionclr,
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 14,
                                        // wordSpacing: 1,
                                        fontWeight: FontWeight.w400,
                                        color: emaildiscriptionclr,
                                      ),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                        CustomSizeBox(10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: TextFormField(
                              enableInteractiveSelection: false,
                              onChanged: (value) {
                                Provider.of<EmailProvider>(context,
                                        listen: false)
                                    .changesubject(value);
                              },
                              textInputAction: TextInputAction.done,
                              style: GoogleFonts.poppins(
                                fontSize: shortestSide > 600
                                    ? 12.sp / mediaQuery
                                    : 12 / mediaQuery,
                                fontWeight: FontWeight.w400,
                                color: simpletextColor,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: emailtextfieldborderclr,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: emailtextfieldborderclr,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: emailtextfieldborderclr,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                fillColor: emailtextfieldclr,
                                hintStyle: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize: shortestSide > 600
                                            ? 10.sp / mediaQuery
                                            : 10 / mediaQuery,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor,
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize: shortestSide > 600
                                            ? 12.sp / mediaQuery
                                            : 12 / mediaQuery,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor,
                                      ),
                                filled: true,
                                hintText: translateText("Type_Here"),
                              )),
                        ),
                        CustomSizeBox(30),
                        Row(
                          children: [
                            Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.only(left: 20.0)
                                  : EdgeInsets.only(right: 20.0),
                              child: Text(
                                translateText('Your_message'),
                                textScaleFactor: 1,
                                // textAlign: TextAlign.center,
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        // wordSpacing: 1,
                                        fontSize: shortestSide > 600
                                            ? 12.sp / mediaQuery
                                            : 12 / mediaQuery,
                                        fontWeight: FontWeight.w400,
                                        color: emaildiscriptionclr,
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize: shortestSide > 600
                                            ? 12.sp / mediaQuery
                                            : 14 / mediaQuery,
                                        // wordSpacing: 1,
                                        fontWeight: FontWeight.w400,
                                        color: emaildiscriptionclr,
                                      ),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                        CustomSizeBox(10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: TextFormField(
                              enableInteractiveSelection: false,
                              maxLines: 6,
                              onChanged: (value) {
                                Provider.of<EmailProvider>(context,
                                        listen: false)
                                    .changemessage(value);
                              },
                              textInputAction: TextInputAction.done,
                              style: GoogleFonts.poppins(
                                fontSize: shortestSide > 600
                                    ? 12.sp / mediaQuery
                                    : 12 / mediaQuery,
                                fontWeight: FontWeight.w400,
                                color: simpletextColor,
                              ),
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: emailtextfieldborderclr,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: emailtextfieldborderclr,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: emailtextfieldborderclr,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                fillColor: emailtextfieldclr,
                                hintStyle: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize: shortestSide > 600
                                            ? 12.sp / mediaQuery
                                            : 10 / mediaQuery,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor,
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize: shortestSide > 600
                                            ? 12.sp / mediaQuery
                                            : 12 / mediaQuery,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor,
                                      ),
                                filled: true,
                                hintText: translateText("Message"),
                              )),
                        ),
                        CustomSizeBox(40),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: EmailButton(
                                  "  " + translateText("Send") + "  ", () {
                                if (EmailModel.message != null &&
                                    EmailModel.subject != null) {
                                  sentemail();
                                }
                                if (EmailModel.message == null ||
                                    EmailModel.subject == null) {
                                  CustomSnackBar(false).showInSnackBar(
                                      translateText(
                                          "Please_fill_out_the_full_form"),
                                      context);
                                }
                              }, blueColor, blueColor, whiteColor),
                            ),
                            CustomSizeBox(shortestSide > 600 ? 8.sp : 0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: EmailButton(translateText("Cancel"), () {
                                Navigator.pop(context);
                              }, blueColor, whiteColor, newblueColor),
                            ),
                          ],
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
