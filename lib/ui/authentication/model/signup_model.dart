import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';

class SignUpModel {
  static String? name;
  static String? phone;
  static String? email;
  static String companyname = translateText('Company_Name');
  static String? emptype;
  static String? salary;
  static String? cnic;
  static String? username;
  static String? password;
  static String? gender;

  final TextEditingController textEditingController1 = TextEditingController();
  static TextEditingController salaryTextController = TextEditingController();
  static TextEditingController nameTextController =
      TextEditingController();
  static TextEditingController lastNameTextController = TextEditingController();
  static TextEditingController emailTextController = TextEditingController();
  static int companyid = 0;
}
