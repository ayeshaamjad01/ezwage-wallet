import 'package:ezwage/ui/fingerprint/services/digitt_service.dart';
import 'package:flutter/material.dart';

class DigittVerificationScreen extends StatelessWidget {
  const DigittVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Finger Scan Verification')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await DigittService.launchSDK(
              clientId: 'YOUR_CLIENT_ID',
              clientSecret: 'YOUR_CLIENT_SECRET',
              partnerId: 'YOUR_PARTNER_ID',
              mobile: '03001234567',
              cnic: '1234567890123',
            );
          },
          child: const Text('Start Finger Scan'),
        ),
      ),
    );
  }
}
