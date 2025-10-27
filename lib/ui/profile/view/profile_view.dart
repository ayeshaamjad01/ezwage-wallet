import 'dart:convert';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _profileviewState createState() => _profileviewState();
}

class _profileviewState extends State<ProfileView> {
  List<TextEditingController> _profileUpdateFieldsController =
      List.generate(5, (i) => TextEditingController(), growable: true);

  var _textFieldLists = [
    'First_Name',
    'Employee_Type',
    'Salary',
    'Phone_Number',
    'CNIC_Number',
  ];
  var formatter = NumberFormat('#,000.00');
  _updateProfile() async {
    var jsonBody = {
      "name": _profileUpdateFieldsController[0].text,
    };
    ProfileModel.name = _profileUpdateFieldsController[0].text;
    LoginModel.userName = _profileUpdateFieldsController[0].text;
    preferences.put('name', ProfileModel.name.toString());
    preferences.put('email', ProfileModel.email.toString());
    preferences.put('role', ProfileModel.employeetype.toString());
    preferences.put('phone_no', ProfileModel.phonenumber.toString());
    Response response = await ApiFunctions().patchRequest(
        'users/' + preferences.get('id').toString(),
        jsonEncode(jsonBody),
        context);
    if (response.statusCode == 200) {
      CustomSnackBar(true)
          .showInSnackBar(translateText("Profile_Updated"), context);
    } else {
      CustomSnackBar(false)
          .showInSnackBar(translateText("Profile_not_Updated"), context);
    }
  }

  _setConrollerFields() async {
    Response response = await ApiFunctions().getRequest(
        'employees/getemployeedetail/' + preferences.get('employee_id'),
        context);

    if (preferences.get('name') != null)
      _profileUpdateFieldsController[0].text =
          preferences.get('name').toString();
    if (preferences.get('phone_no') != null) {
      _profileUpdateFieldsController[3].text =
          preferences.get('phone_no').toString();
      if (appLanguage == 'ur')
        _profileUpdateFieldsController[3].text =
            _profileUpdateFieldsController[3].text.substring(1) + '+';
    }

    if (preferences.get('cnic_no') != null)
      _profileUpdateFieldsController[4].text =
          preferences.get('cnic_no').toString();
    if (preferences.get('employee_salary') != null)
      _profileUpdateFieldsController[2].text = 'PKR ' +
          formatter.format(
              double.parse(preferences.get('employee_salary').toString()));
    if (response.statusCode == 200) {
      var jsonDecoded = jsonDecode(response.body);
      _profileUpdateFieldsController[1].text =
          translateText(jsonDecoded['results']['data'][0]['employee_type']);
    } else {
      _profileUpdateFieldsController[1].text = '';
    }
  }

  @override
  void initState() {
    super.initState();
    _setConrollerFields();
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Column(
      children: [
        // CustomSizeBox(40),
        Padding(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: ListView.builder(
              itemCount: _profileUpdateFieldsController.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: appLanguage == 'en'
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: Text(
                          translateText(_textFieldLists[index]),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 14,
                                  fontWeight: FontWeight.w500)
                              : GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: shortestSide > 600 ? 14.sp : 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          3,
                          shortestSide > 600 ? 2.sp : 0,
                          3,
                          shortestSide > 600 ? 5.sp : 5),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            color: index < 2
                                ? Color(0xffF6F6F6)
                                : Color.fromARGB(255, 238, 235, 235),
                            depth: NeumorphicTheme.embossDepth(context),
                            intensity: 0.6,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(
                                    shortestSide > 600 ? 5.sp : 10))),
                        child: shortestSide > 600
                            ? SizedBox(
                                height: 40.sp,
                                child: Center(
                                  child: TextFormField(
                                    enableInteractiveSelection: false,
                                    maxLength: 15,
                                    controller:
                                        _profileUpdateFieldsController[index],
                                    onChanged: (value) {},
                                    style: appLanguage == 'ur' && index == 2
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 12,
                                            fontWeight: FontWeight.w400)
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    readOnly: index == 0 ? false : true,
                                    textInputAction: TextInputAction.done,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      contentPadding: EdgeInsets.all(20.0),
                                      hintStyle: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)
                                          : GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff97ADB6)),
                                      filled: true,
                                      fillColor: index == 0
                                          ? Color(0xffF6F6F6)
                                          : Color.fromARGB(255, 238, 235, 235),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                              color: Color(0xffF6F6F6))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                              color: Color(0xffF6F6F6))),
                                    ),
                                  ),
                                ),
                              )
                            : TextFormField(
                                enableInteractiveSelection: false,
                                maxLength: 15,
                                controller:
                                    _profileUpdateFieldsController[index],
                                onChanged: (value) {},
                                style: appLanguage == 'ur' && index == 2
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400)
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                readOnly: index == 0 ? false : true,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  counterText: '',
                                  contentPadding: EdgeInsets.all(20.0),
                                  hintStyle: appLanguage == 'ur'
                                      ? GoogleFonts.notoNastaliqUrdu(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)
                                      : GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff97ADB6)),
                                  filled: true,
                                  fillColor: index == 0
                                      ? Color(0xffF6F6F6)
                                      : Color.fromARGB(255, 238, 235, 235),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: Color(0xffF6F6F6))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: Color(0xffF6F6F6))),
                                ),
                              ),
                      ),
                    ),
                    CustomSizeBox(10),
                  ],
                );
              })),
        ),
        CustomSizeBox(20),
        Padding(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: SizedBox(
            width: double.infinity,
            height: shortestSide > 600 ? 30.sp : 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff00A2FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                _updateProfile();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  translateText('Save'),
                  textScaleFactor: 1,
                  style: appLanguage == 'ur'
                      ? GoogleFonts.notoNastaliqUrdu(
                          color: Colors.white,
                          fontSize: shortestSide > 600 ? 12.sp : 14,
                          fontWeight: FontWeight.w500)
                      : GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: shortestSide > 600 ? 14.sp : 16,
                          fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
