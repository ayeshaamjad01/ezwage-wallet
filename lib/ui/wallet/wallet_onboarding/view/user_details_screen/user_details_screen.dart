import 'package:email_validator/email_validator.dart';
import 'package:ezwage/ui/wallet/account/dto/check_account_request_dto.dart';
import 'package:ezwage/ui/wallet/core/constants/app_images.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/dismiss_on_captured_taps.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/textfield_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';

import '../../../core/constants/app_colors.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';

class UserDetailsScreen extends StatefulWidget {
  UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WalletOnboardingProvider walletOnboardingPro =
        Provider.of<WalletOnboardingProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFieldWithTitle(
                        title: "Name",
                        hintText: "Enter your name",
                        controller: walletOnboardingPro.nameController,
                        onValidate: (value) => value!.trim().isEmpty
                            ? 'Please Enter Your Name'
                            : null,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: TextFieldWithTitle(
                          title: "Email Address",
                          hintText: "Enter your email",
                          controller: walletOnboardingPro.emailController,
                          onValidate: (value) {
                            final isValid = EmailValidator.validate(
                              value!.trim(),
                            );
                            return !isValid ? 'Please Enter Your Email' : null;
                          },
                        ),
                      ),
                      TextFieldWithTitle(
                        title: "ID Card Number",
                        hintText: "Enter your ID",
                        controller: walletOnboardingPro.idCardController,
                        onValidate: (value) {
                          print("vali");
                          final isValid = value!.trim().length >= 13;

                          return !isValid
                              ? 'Please Enter a valid ID Card Number'
                              : null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: TextFieldWithTitle(
                          title: "CNIC Issue date",
                          hintText: "CNIC Issue date",
                          controller:
                              walletOnboardingPro.idCardIssueDateController,
                          readOnly: true,
                          onValidate: (value) => value!.isEmpty
                              ? 'Please Enter Your Issue Date'
                              : null,

                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomSvgImage(
                              assetPath: AppImages.calender,
                              height: 10.h,
                            ),
                          ),
                          onTap: () async {
                            final pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            print("pickedDate $pickedDate");
                            if (pickedDate != null) {
                              walletOnboardingPro.setDate(pickedDate);

                              walletOnboardingPro
                                  .idCardIssueDateController
                                  .text = DateFormat('yyyy-MM-dd').format(
                                walletOnboardingPro.selectedDate!,
                              ); // "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
                              print(
                                "pickedDate ${walletOnboardingPro.idCardIssueDateController}",
                              );
                            }
                          },
                        ),
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   padding: EdgeInsets.symmetric(vertical: 10.h),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       CustomText(
                      //         text: "Gender",
                      //         size: 18.sp,
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //       DropdownButtonFormField<String>(
                      //         value: walletOnboardingPro.selectedGender,
                      //         hint: const Text('Select an option'),
                      //         isExpanded: true,
                      //         decoration: const InputDecoration(
                      //           enabledBorder: UnderlineInputBorder(
                      //             borderSide: BorderSide(color: Colors.grey),
                      //           ),
                      //           focusedBorder: UnderlineInputBorder(
                      //             borderSide: BorderSide(color: Colors.blue),
                      //           ),
                      //         ),
                      //         validator: (value) {
                      //           print("vali $value");
                      //           return walletOnboardingPro.genderNotSelected
                      //             ? 'Please Select Your Gender'
                      //             : null;
                      //         },
                      //
                      //         dropdownColor: Colors.white,
                      //         items: walletOnboardingPro.genderList.map((
                      //           String item,
                      //         ) {
                      //           return DropdownMenuItem<String>(
                      //             value: item,
                      //             child: Text(item),
                      //           );
                      //         }).toList(),
                      //         onChanged: (String? value) {
                      //           walletOnboardingPro.setSelectedGender(value);
                      //         },
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 20.h),
                      DismissOnCapturedTaps(
                        child: CustomButtonWidget(
                          title: "Continue",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              walletOnboardingPro.checkAccount(context);
                            }
                            ;
                          },
                          backgroundColor: AppColors.buttonBgColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
