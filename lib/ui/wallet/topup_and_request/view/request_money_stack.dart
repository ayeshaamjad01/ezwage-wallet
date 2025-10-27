//
//
//
// import 'package:ezwage/ui/wallet/core/enums/load_type.dart';
// import 'package:ezwage/ui/wallet/load_and_packages/view/package_input_contact_page.dart';
// import 'package:ezwage/ui/wallet/load_and_packages/view/package_otp_page.dart';
// import 'package:ezwage/ui/wallet/topup_and_request/view/request_money_page.dart';
// import 'package:ezwage/ui/wallet/topup_and_request/view/request_set_amount_page.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../core/enums/telecos_bill_type.dart';
// import '../../transfer/view/contacts_page.dart';
//
// class RequestMoneyStack extends StatefulWidget {
//
//   const RequestMoneyStack({super.key, });
//
//   @override
//   State<RequestMoneyStack> createState() => _RequestMoneyStackState();
// }
//
// class _RequestMoneyStackState extends State<RequestMoneyStack> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     final pages = [
//       RequestMoneyPage(),
//       ContactsPage(isRequestMoney: true,),
//       PackageOtpPage(),
//     ];
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => MobilePackageController(
//             pagesLength: pages.length,
//           ),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => TelcoBundleProvider(TeleCosBillType.bundle),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => TelecosListProvider(TeleCosBillType.bundle),
//         ),
//       ],
//       child: Builder(
//         builder: (context) {
//           final currentPage = context.watch<MobilePackageController>().currentPage;
//           return IndexedStack(index: currentPage, children: pages);
//         },
//       ),
//     );
//   }
// }
