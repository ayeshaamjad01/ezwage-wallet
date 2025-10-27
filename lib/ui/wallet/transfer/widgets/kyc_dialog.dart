//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../controller/bank_transfer_provider.dart';
// class KycDialog extends StatelessWidget {
//   final String question;
//   final List<String> answers;
//   final Function(String) onProceed;
//
//   const KycDialog({
//     super.key,
//     required this.question,
//     required this.answers,
//     required this.onProceed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final bankTransferPro = Provider.of<BankTransferProvider>(context);
//
//     return AlertDialog(
//       title: const Text("KYC Verification"),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Select your $question"),
//           const SizedBox(height: 16),
//
//           ...answers.map((answer) {
//             return RadioListTile<String>(
//               value: answer,
//               groupValue: bankTransferPro.selectedKycAnswer,
//               title: Text(answer),
//               onChanged: (val) {
//                 if (val != null) {
//                   bankTransferPro.setSelectedKycAnswer(val);
//                 }
//               },
//             );
//           }),
//         ],
//       ),
//       actions: [
//         TextButton(
//           onPressed: () {
//             bankTransferPro.clearKycAnswer();
//             Navigator.pop(context);
//           },
//           child: const Text("Cancel"),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             if (bankTransferPro.selectedKycAnswer != null) {
//               onProceed(bankTransferPro.selectedKycAnswer!);
//               Navigator.pop(context);
//             } else {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text("Please select an option")),
//               );
//             }
//           },
//           child: const Text("Proceed"),
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/bank_transfer_provider.dart';

class KycScreen extends StatelessWidget {
  final String question;
  final List<String> answers;
  final Function(String) onProceed;

  const KycScreen({
    super.key,
    required this.question,
    required this.answers,
    required this.onProceed,
  });

  @override
  Widget build(BuildContext context) {
    final bankTransferPro = Provider.of<BankTransferProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("KYC Verification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select your $question",
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),

            // Answers
            Expanded(
              child: ListView(
                children: answers.map((answer) {
                  return RadioListTile<String>(
                    value: answer,
                    groupValue: bankTransferPro.selectedKycAnswer,
                    title: Text(answer),
                    onChanged: (val) {
                      if (val != null) {
                        bankTransferPro.setSelectedKycAnswer(val);
                      }
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  bankTransferPro.clearKycAnswer();
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  if ( true) {
                    print("calleddd1");
                    Navigator.pop(context);
                    onProceed(bankTransferPro.selectedKycAnswer ?? "");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Please select an option")),
                    );
                  }
                },
                child: const Text("Proceed"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

