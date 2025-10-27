

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui/wallet/wallet_onboarding/view/wallet_onboading.dart';



void navigateToWalletOnboading(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WalletOnboading(),));
  // Navigator.of(context)
  //     .push(MaterialPageRoute(builder: (context) => WalletOnboading()));
}
