import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/city_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors.dart';
import '../../controller/wallet_onboarding_provider.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/textfield_with_title.dart';

class DetailsVerificationScreen extends StatefulWidget {
  DetailsVerificationScreen({super.key});

  @override
  State<DetailsVerificationScreen> createState() =>
      _DetailsVerificationScreenState();
}

class _DetailsVerificationScreenState extends State<DetailsVerificationScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WalletOnboardingProvider walletOnboardingPro =
        Provider.of<WalletOnboardingProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          Form(
            key: _formKey,
            child: SliverList(
              delegate: SliverChildListDelegate.fixed([
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFieldWithTitle(
                        title: "Name (as Per CNIC)",
                        hintText: "",
                        controller: walletOnboardingPro.cnicNameController,
                        onValidate: (value) =>
                            value!.isEmpty ? 'Please Enter Your Name' : null,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: TextFieldWithTitle(
                          title: "Father Name",
                          hintText: "",
                          controller: walletOnboardingPro.fatherNameController,
                          onValidate: (value) => value!.isEmpty
                              ? 'Please Enter Your Father Name'
                              : null,
                        ),
                      ),
                      // TextFieldWithTitle(
                      //   title: "Current Address",
                      //   hintText: "",
                      //   controller:
                      //       walletOnboardingPro.currentAddressController,
                      //   onValidate: (value) => value!.isEmpty
                      //       ? 'Please Enter Your Current Address'
                      //       : null,
                      // ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: TextFieldWithTitle(
                          title: "Permanent Address",
                          hintText: "",
                          controller:
                              walletOnboardingPro.permanentAddressController,
                          onValidate: (value) => value!.isEmpty
                              ? 'Please Enter Your Permanent Address'
                              : null,
                        ),
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   padding: EdgeInsets.symmetric(vertical: 10.h),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       CustomText(
                      //         text: "City",
                      //         size: 18.sp,
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //       DropdownButtonFormField<String>(
                      //         value: walletOnboardingPro.selectedCity,
                      //         onTap: () {
                      //           showCitySelectionSheet(context);
                      //         },
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
                      //         validator: (value) => value!.isEmpty
                      //             ? 'Please Select Your City'
                      //             : null,
                      //
                      //         dropdownColor: Colors.white,
                      //         items: walletOnboardingPro.cityList.map((
                      //           String item,
                      //         ) {
                      //           return DropdownMenuItem<String>(
                      //             value: item,
                      //             child: Text(item),
                      //           );
                      //         }).toList(),
                      //         onChanged: (String? value) {
                      //           walletOnboardingPro.setSelectedCity(value);
                      //         },
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      TextFieldWithTitle(
                        title: "City",
                        hintText: "Select an option",
                        controller: walletOnboardingPro.cityC,
                        readOnly: true,
                        onValidate: (value) =>
                            value!.isEmpty ? 'Please Select Your City' : null,

                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_drop_down),
                        ),
                        onTap: () async {
                          final city = await showCitySelectionSheet(context);
                          if (city is CityItemDto) {
                            walletOnboardingPro.cityC.text = city.cityName;
                            walletOnboardingPro.selectCity(city);
                          }
                        },
                      ),

                      // Container(
                      //   width: double.infinity,
                      //   padding: EdgeInsets.symmetric(vertical: 10.h),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       CustomText(
                      //         text: "Province",
                      //         size: 18.sp,
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //       DropdownButtonFormField<String>(
                      //         value: walletOnboardingPro.selectedProvince,
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
                      //         validator: (value) => value!.isEmpty
                      //             ? 'Please Select Your City'
                      //             : null,
                      //
                      //         dropdownColor: Colors.white,
                      //         items: walletOnboardingPro.provinceList.map((
                      //           String item,
                      //         ) {
                      //           return DropdownMenuItem<String>(
                      //             value: item,
                      //             child: Text(item),
                      //           );
                      //         }).toList(),
                      //         onChanged: (String? value) {
                      //           walletOnboardingPro.setSelectedProvince(value);
                      //         },
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 20.h),
                      // Expanded(child: SizedBox()),
                      CustomButtonWidget(
                        title: "Continue",
                        onPressed: () {
                          print("TESt");
                          if (_formKey.currentState!.validate()) {
                            context.read<WalletOnboardingProvider>().nextStep();
                          }
                        },
                        backgroundColor: AppColors.buttonBgColor,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
