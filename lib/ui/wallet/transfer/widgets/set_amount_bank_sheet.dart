import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/transfer/controller/transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/view/contacts_page.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart' show Provider, ReadContext, Consumer;

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../controller/bank_transfer_provider.dart';
import '../dtos/cms/get_purpose_of_payment_list_response_dto.dart';
import '../view/transfer_status_page.dart';

class SetAmountBankSheet extends StatefulWidget {
  SetAmountBankSheet({super.key, required this.accountNumber});

  final String accountNumber;

  @override
  State<SetAmountBankSheet> createState() => _SetAmountBankSheetState();
}

class _SetAmountBankSheetState extends State<SetAmountBankSheet> {
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final transferPro = Provider.of<TransferProvider>(context);
    final bankTransferPro = Provider.of<BankTransferProvider>(context);

    return Consumer<BankTransferProvider>(
      builder: (context, bankTransferPro, _) {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,

              children: [
                14.verticalSpace,

                (bankTransferPro.selectedBank != null)
                    ? ListTile(
                        leading: ClipOval(
                          child: Container(
                            color: Colors.grey[200],
                            width: 48,
                            height: 48,
                            padding: EdgeInsets.all(8),
                            child: CustomSvgImage(
                              assetPath: AppImages.bankIcon,
                            ),
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                        title: Text(bankTransferPro.selectedBank!.bankName),
                        subtitle: Text(widget.accountNumber),
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {},
                      )
                    : SizedBox(),

                24.verticalSpace,
                CustomText(text: "Set Amount", size: 16.sp),
                // 12.verticalSpace,
                Row(
                  children: [
                    // Expanded(
                    //   flex: 1,
                    //   child: Align(
                    //     alignment: Alignment.topRight,
                    //     child: CustomText(
                    //       text: 'PKR',
                    //       size: 20.sp,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.w700,
                    //     ),
                    //   ),
                    // ),
                    10.horizontalSpace,
                    Flexible(
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if ((value ?? "").trim().isEmpty)
                              return "Please enter an amount";
                            return null;
                          },
                          controller: bankTransferPro.bankAmount,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 10.w, right: 5.w),
                              child: CustomText(
                                text: 'PKR',
                                size: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0), // important
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            hintText: '0',
                            hintStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                          ),


                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                24.verticalSpace,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white, // White background
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<PurposeOfPaymentItemDto>(
                      menuMaxHeight: 300,
                      // Limit height of dropdown list
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      validator: (value) {
                        if (value == null) {
                          return "Please select a purpose";
                        }
                        return null;
                      },
                      // Dropdown menu background
                      hint: const Text("Select Purpose"),
                      value: bankTransferPro.selectedPurpose,
                      items: bankTransferPro.purposesOfPayment.map((purpose) {
                        return DropdownMenuItem(
                          value: purpose,
                          child: Text(purpose.purposeName),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          bankTransferPro.setSelectedPurpose(value);
                        }
                      },
                    ),
                  ),
                ),
                24.verticalSpace,

                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Notes',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' (Optional)',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                14.verticalSpace,
                TextField(
                  minLines: 3,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Writes your notes here',
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black26),
                    fillColor: AppColors.lightGreyColor,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                        width: 1.2,
                      ),
                    ),
                  ),
                ),
                100.verticalSpace,
                // Consumer<BankTransferProvider>(
                //   builder: (context, bankTransferPro, _) {
                //     final isLoading = bankTransferPro.commandFetchTitle?.running ?? false;

                // return
                CustomButtonWidget(
                  radius: 100.r,
                  title: "Proceed to transfer",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<BankTransferProvider>().titleFetch(
                        widget.accountNumber,
                        context,
                      );
                    }
                  },
                  backgroundColor: AppColors.buttonBgColor,
                ),

                //   },
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
