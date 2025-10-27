import 'dart:async';

import 'package:flutter/material.dart';

final phoneFieldTextController = TextEditingController();
final phoneFieldValidatorController = TextEditingController();
final passwordFieldValidatorController = TextEditingController();
final forgotChangePasswordController =
    List.generate(2, (i) => TextEditingController(), growable: true);
Timer? globalTimer;
int? parseOtpId;
