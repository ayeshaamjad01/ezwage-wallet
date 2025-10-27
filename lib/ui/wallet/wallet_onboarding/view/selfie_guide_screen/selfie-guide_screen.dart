import 'dart:convert';
import 'dart:io';

import 'package:ezwage/ui/wallet/core/constants/app_images.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/textfield_with_title.dart';

class SelfieGuideScreen extends StatelessWidget {
  const SelfieGuideScreen({super.key});


  @override
  Widget build(BuildContext context) {

    WalletOnboardingProvider walletOnboardingPro =
    Provider.of<WalletOnboardingProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Take a Selfie", size: 18.sp, fontWeight: FontWeight.w700,),
            CustomText(text: "Make sure the picture is clear, so we can verify it with your CNIC", color: Colors.grey,),
            SizedBox(height: 20.h),
            // CustomSvgImage(assetPath: AppImages.kycLogo, height: 100, width: 200,),
            CustomPngImage(assetPath: AppImages.selfiePlaceholder, height: 230.h, width: double.infinity,),
            SizedBox(height: 20.h),
            Expanded(child: SizedBox()),
            CustomButtonWidget(
              title: "Continue",
              onPressed: () async {
                print("Button Pressed");

                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CameraCaptureScreen(),
                  ),
                );

                if (result != null && result is File) {
                  print("Captured Image Path: ${result.path}");

                  final bytes = await result.readAsBytes();
                  final base64Image = base64Encode(bytes);

                  print("Base64 Image String: $base64Image");

                  context.read<WalletOnboardingProvider>().setUserSelfie(base64Image);

                } else {
                  print("No image captured");
                }
                context.read<WalletOnboardingProvider>().nextStep();
              },
              backgroundColor: AppColors.buttonBgColor,
            ),
          ],
        ),
      ),
    );
  }
}



class CameraCaptureScreen extends StatefulWidget {
  const CameraCaptureScreen({Key? key}) : super(key: key);

  @override
  State<CameraCaptureScreen> createState() => _CameraCaptureScreenState();
}

class _CameraCaptureScreenState extends State<CameraCaptureScreen> {
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _captureImage();
  }

  Future<void> _captureImage() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.front, // selfie camera
        maxWidth: 1080,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (!mounted) return;

      if (image != null) {
        Navigator.pop(context, File(image.path)); // return image
      } else {
        Navigator.pop(context, null); // cancelled
      }
    } catch (e) {
      debugPrint('Camera error: $e');
      Navigator.pop(context, null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
