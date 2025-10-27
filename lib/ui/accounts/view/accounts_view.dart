import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/image_url_headers.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/home/view/dialogues/bank_details_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsView extends StatefulWidget {
  const AccountsView({Key? key}) : super(key: key);

  @override
  _accountsviewState createState() => _accountsviewState();
}

class _accountsviewState extends State<AccountsView> {
  final GlobalKey imageKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Align(
                  alignment: appLanguage == 'en'
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Text(translateText('Your_ACCOUNTS'),
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 14.sp : 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1C1C1C),
                            )
                          : GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 14.sp : 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1C1C1C),
                            )),
                ),
                CustomSizeBox(15),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        bankDetailsDialogue(
                            context, AccountsModel.userBankLogo!);
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Row(
                                children: [
                                  if (AccountsModel.userBankLogo != '')
                                    Padding(
                                      padding: (appLanguage == 'ur')
                                          ? const EdgeInsets.only(left: 15.0)
                                          : const EdgeInsets.only(left: 5),
                                      child: Container(
                                        width: shortestSide > 600 ? 30.sp : 50,
                                        height: shortestSide > 600 ? 30.sp : 50,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xffb9d4cc)
                                                    .withOpacity(0.3),
                                                spreadRadius: 1,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                            // image: DecorationImage(
                                            //     image: ),
                                            borderRadius: BorderRadius.circular(
                                                shortestSide > 600
                                                    ? 10.sp
                                                    : 15),
                                            color: AccountsModel.color!
                                                .withOpacity(0.1)),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              shortestSide < 600 ? 8.0 : 12),
                                          child: Image.network(
                                            AccountsModel.userBankLogo!,
                                            width:
                                                shortestSide > 600 ? 5.sp : 8,
                                            height:
                                                shortestSide > 600 ? 5.sp : 8,
                                            fit: BoxFit.fill,
                                            headers: IMAGE_HEADERS,
                                          ),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AccountsModel.bankName!,
                                          textScaleFactor: 1,
                                          style: GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 10.sp
                                                  : 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        CustomSizeBox(5),
                                        Text(
                                          '****' +
                                              AccountsModel.bankIban
                                                  .toString()
                                                  .substring(AccountsModel
                                                          .res['results']
                                                              ['data'][0][
                                                              "iban_account_no"]
                                                          .toString()
                                                          .length -
                                                      4),
                                          textScaleFactor: 1,
                                          style: GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 10.sp : 12,
                                            fontWeight: FontWeight.w400,
                                            color: datetextclr,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.navigate_next,
                                    color: Color(0xff00A2FF),
                                    size: shortestSide > 600 ? 20.sp : 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomSizeBox(10),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
