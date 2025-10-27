import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_list_provider.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_payment_provider.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/views/select_electricity_provider_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bill_otp_page.dart';
import 'fetched_bill_page.dart';
import 'input_provider_number_page.dart';

class BillPaymentPage extends StatefulWidget {
  const BillPaymentPage({super.key});

  @override
  State<BillPaymentPage> createState() => _BillPaymentPageState();
}

class _BillPaymentPageState extends State<BillPaymentPage> {
  final pages = [
    SelectElectricityProviderPage(),
    InputProviderNumberPage(billType: null, iconViewModel: null,),
    FetchedBillPage(),
    BillOtpPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BillListProvider()),
        ChangeNotifierProvider(
          create: (context) => BillPaymentProvider(pagesLength: pages.length),
        ),

      ],
      child: Builder(
        builder: (context) {
          final currentPage = context.watch<BillPaymentProvider>().currentPage;
          return IndexedStack(index: currentPage, children: pages);
        },
      ),
    );
  }
}
