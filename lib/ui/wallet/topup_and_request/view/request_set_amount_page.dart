import 'package:ezwage/ui/wallet/custom_widgets/custom_svg_image.dart';
import 'package:ezwage/ui/wallet/transfer/controller/transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/view/contacts_page.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart' show Provider;

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/enums/load_type.dart';
import '../../transfer/controller/wallet_transfer_provider.dart';
import '../../wallet_onboarding/widgets/custom_button_widget.dart';
import '../../wallet_onboarding/widgets/textfield_with_title.dart';
import '../controller/topup_request_provider.dart';

class RequestSetAmountSheet extends StatelessWidget {
  final AmountSheetType sheetType;
  RequestSetAmountSheet({super.key, required this.sheetType});
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final requestPro = Provider.of<TopUpRequestProvider>(context);

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
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
              (requestPro.selectedContact != null) ? ListTile(
              leading: ClipOval(
                child: Container(
                    color: Colors.grey[200],
                    width: 48,
                    height: 48,
                    padding: EdgeInsets.all(8),
                    child: CustomSvgImage(assetPath: AppImages.bankIcon)
                ),
              ),
              contentPadding: EdgeInsets.zero,
              title: Text(requestPro.selectedContact?.displayName ?? ""),
              subtitle: Text(requestPro.selectedContact?.phones.firstOrNull?.number ?? ""),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
              },
            ) :
            Row(
              children: [
                Expanded(
                  child: TextFieldWithTitle(
                    title: "",
                    hintText: "Input Phone Number",
                    controller: requestPro.phoneController,
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Phone Number';
                      }
                      if (value.length != 11) {
                        return 'Phone number must be 11 digits';
                      }
                      if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Phone number must contain only digits';
                      }
                      return null;
                    },
                  ),
                ),
                InkWell(
                  onTap: () async {
                    // requestPro.updateSearch("");

                    Contact? selectedContact = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ContactsPage(),
                      ),
                    );

                    if (selectedContact != null) {
                      print("Selected contact: ${selectedContact}");
                      requestPro.selectContact(selectedContact); // Or do whatever you need
                    }
                  },
                  child: CustomSvgImage(
                    assetPath: AppImages.inputPhone,
                    height: 52.h,
                    width: 52.w,
                  ),
                ),
              ],
            ),
            24.verticalSpace,
            CustomText(text: "Set Amount", size: 16.sp),
            // 12.verticalSpace,
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CustomText(
                      text: 'PKR',
                      size: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
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
              ],
            ),
            // CustomText(text: "0 PKR", size: 22.sp, fontWeight: FontWeight.w700),
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
                      style: TextStyle(fontSize: 14.sp, color: Colors.black26),
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
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.2),
                ),
              ),
            ),
            100.verticalSpace,
            CustomButtonWidget(
              radius: 100.r,
              title: "Proceed to Request",
              onPressed: () {
                requestPro.topUpRequestInquiry(context, amountController.text);

              },
              backgroundColor: AppColors.buttonBgColor,
            ),
          ],
        ),
      ),
    );
  }
}
