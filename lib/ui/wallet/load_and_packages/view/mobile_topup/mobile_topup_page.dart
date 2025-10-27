import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_topup_controller.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/telecos_list_provider.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/load_amount_details_page.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/load_input_contact_page.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/load_set_amount_page.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/topup_otp_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileTopUpPage extends StatefulWidget {
  final TeleCosBillType billType;

  const MobileTopUpPage({super.key, required this.billType});

  @override
  State<MobileTopUpPage> createState() => _MobileTopUpPageState();
}

class _MobileTopUpPageState extends State<MobileTopUpPage> {
  final pages = [
    LoadInputContactPage(),
    LoadSetAmountPage(),
    LoadAmountDetailsPage(),
    TopUpOtpPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MobileTopUpController(
            billType: widget.billType,
            pagesLength: pages.length,
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => TelecosListProvider(widget.billType),
        ),
      ],
      child: Builder(
        builder: (context) {
          final currentPage = context.watch<MobileTopUpController>().currentPage;
          return IndexedStack(index: currentPage, children: pages);
        },
      ),
    );
  }
}
