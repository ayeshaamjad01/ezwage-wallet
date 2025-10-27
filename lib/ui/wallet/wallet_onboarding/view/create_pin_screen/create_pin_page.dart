import 'package:ezwage/ui/wallet/wallet_onboarding/view/congratulation_screen/congratulation_screen.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/create_pin_screen/account_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'create_pin_screen.dart';

class CreatePinPage extends StatefulWidget {
  const CreatePinPage({super.key});

  @override
  State<CreatePinPage> createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  final pages = <Widget>[CreatePinScreen(), CongratulationScreen()];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AccountPinController(pagesLength: pages.length),
        ),
      ],
      child: Builder(
        builder: (context) {
          final currentPage = context.read<AccountPinController>().currentPage;
          return IndexedStack(index: currentPage, children: pages);
        },
      ),
    );
  }
}
