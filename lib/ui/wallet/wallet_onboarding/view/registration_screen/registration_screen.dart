import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WalletOnboardingProvider walletOnboardingPro =
    Provider.of<WalletOnboardingProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Registration Guidelines",
                size: 18,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: "Take pictures of your valid and original CNIC.",
                color: Colors.grey,
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Front ID Button
        
                    walletOnboardingPro.frontCNIC == null
                        ? ElevatedButton.icon(
                      onPressed: () {
                        walletOnboardingPro.pickImage(isFront: true);
                      },
                      icon: Icon(Icons.image),
                      label: Text("Pick Front ID Image"),
                    )
                        : GestureDetector(
                      onTap: () {
                        walletOnboardingPro.pickImage(isFront: true);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          walletOnboardingPro.frontCNIC!.image,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
        
                    // Back ID Button
                    walletOnboardingPro.backCNIC == null
                        ? ElevatedButton.icon(
                      onPressed: () {
                        walletOnboardingPro.pickImage(isFront: false);
                      },
                      icon: Icon(Icons.image),
                      label: Text("Pick Back ID Image"),
                    )
                        : GestureDetector(
                      onTap: () {
                        walletOnboardingPro.pickImage(isFront: false);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          walletOnboardingPro.backCNIC!.image,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        
              // Expanded(child: SizedBox()),
        
              CustomText(
                text: "Make Sure!",
                size: 18,
                fontWeight: FontWeight.w700,
              ),
              8.verticalSpace,
              buildRow("Your CNIC is valid"),
              buildRow("Your pictures are clear"),
              buildRow("The complete ID is captured in the photos."),
        
              SizedBox(height: 10.h),
        
              CustomButtonWidget(
                title: "Continue",
                onPressed: () {
                  debugPrint("context.read<WalletOnboardingProvider>() ${context.read<WalletOnboardingProvider>().frontCNIC?.base64}");
                  debugPrint("context.read<WalletOnboardingProvider>() ${context.read<WalletOnboardingProvider>().backCNIC?.base64}");
                  context.read<WalletOnboardingProvider>().nextStep();
                },
                backgroundColor: AppColors.buttonBgColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow(String txt) {
    return Row(
      children: [
        Icon(Icons.check_box, color: Colors.green),
        5.horizontalSpace,
        Flexible(
          child: CustomText(text: txt, color: Colors.grey),
        ),
      ],
    );
  }
}
