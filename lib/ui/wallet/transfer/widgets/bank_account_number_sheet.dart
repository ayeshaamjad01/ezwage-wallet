import 'package:ezwage/ui/wallet/core/enums/load_type.dart';
import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/transfer/controller/transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/view/contacts_page.dart';
import 'package:ezwage/ui/wallet/transfer/widgets/set_amount_bank_sheet.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart' show Provider, ReadContext;

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../custom_widgets/app_bottom_sheet.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../controller/bank_transfer_provider.dart';
import '../view/transfer_status_page.dart';
import 'circular_network_image.dart';

class BankAccountNumberSheet extends StatelessWidget {
  BankAccountNumberSheet({super.key});
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _accountController = TextEditingController(text: "0002000001100111");

  RegExp accountRegex = RegExp(r'^\d{10,16}$');
  @override
  Widget build(BuildContext context) {
    final bankTransferPro = Provider.of<BankTransferProvider>(context);

    return Container(
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,

        children: [
          14.verticalSpace,
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "Destination Bank", size: 16.sp, fontWeight: FontWeight.w600, color: Colors.black45,),
                (bankTransferPro.selectedBank != null) ? ListTile(
                  leading: CircularNetworkImage(
                    imageUrl: bankTransferPro.selectedBank?.bankLogo,
                    placeholder: AppImages.bankIcon,
                    size: 48.h,
                  ),

                  contentPadding: EdgeInsets.zero,
                  title: Text(bankTransferPro.selectedBank!.bankName),
                  // subtitle: Text(transferPro.selectedBank!.subTitle ?? ""),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                  },
                ) : SizedBox(),
                SizedBox(height: 20.h),

                CustomText(text: "Destination Account Number", size: 16.sp, fontWeight: FontWeight.w600, color: Colors.black45,),

                TextFormField(
                  controller: _accountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Bank Account Number',
                    border: UnderlineInputBorder(), // Only underline
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Account number is required';
                    } else if (!accountRegex.hasMatch(value)) {
                      return 'Enter a valid account number (10–16 digits)';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          24.verticalSpace,
          CustomButtonWidget(
            radius: 100.r,
            isDisable: bankTransferPro.selectedBank == null ?  true : false,
            title: "Continue",
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                print('Valid: ${_accountController.text}');
                
                context.read<BankTransferProvider>().purposeOfPaymentCommand();
                context.read<BankTransferProvider>().setBankNumber(_accountController.text);
                context.read<BankTransferProvider>().clearBankAmount();

                showAppBottomSheet(
                  context: context,
                  child: SetAmountBankSheet(accountNumber: _accountController.text,),
                );

              }

            },
            backgroundColor: AppColors.buttonBgColor,
          ),
        ],
      ),
    );
  }
}
