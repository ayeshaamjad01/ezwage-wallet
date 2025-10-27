import 'package:ezwage/ui/wallet/core/constants/app_images.dart' show AppImages;
import 'package:ezwage/ui/wallet/custom_widgets/custom_app_bar.dart';
import 'package:ezwage/ui/wallet/transfer/controller/wallet_transfer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/app_colors.dart';
import '../../core/enums/load_type.dart';
import '../../custom_widgets/app_bottom_sheet.dart';
import '../../custom_widgets/custom_svg_image.dart';
import '../../homepage/widgets/image_decorated_container.dart';
import '../../topup_and_request/controller/topup_request_provider.dart';
import '../../topup_and_request/view/request_set_amount_page.dart';
import '../../wallet_onboarding/widgets/custom_text.dart';
import '../controller/contacts_provider.dart';
import '../controller/transfer_provider.dart';
import '../widgets/set_amount_wallet_sheet.dart';

class ContactsPage extends StatelessWidget {
  final bool? isRequestMoney;
  const ContactsPage({super.key, this.isRequestMoney = false});

  @override
  Widget build(BuildContext context) {
    final contactsProvider = Provider.of<ContactsProvider>(context);

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.onboardingBg),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              children: [
                50.verticalSpace,
                CustomAppBar(title: (isRequestMoney == true) ? "Request Money" : "Transfer to Wallet"),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 50.h, left: 12.w, right: 14.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value) =>
                                contactsProvider.searchContacts(value),
                            decoration: InputDecoration(
                              hintText: 'Search Phone Number',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.r),
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                  width: 1.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.r),
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26.r),
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                  width: 1.2,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 16.0,
                              ),
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        ImageDecoratedContainer(
                          widget: Icon(
                            Icons.add,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    20.verticalSpace,

                    CustomText(
                      text: "All Contacts",
                      fontWeight: FontWeight.w700,
                      size: 18.sp,
                    ),


                    contactsProvider.loading
                        ? const Center(child: CircularProgressIndicator())
                        : contactsProvider.contacts.isEmpty
                        ? const Center(child: Text("No contacts found"))
                        : ListView.builder(
                           physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: contactsProvider.contacts.length,
                            itemBuilder: (context, index) {
                              final contact = contactsProvider.contacts[index];
                              return ListTile(
                                leading: CircleAvatar(
                                  child: Text(
                                    contact.displayName.isNotEmpty
                                        ? contact.displayName[0]
                                        : "?",
                                  ),
                                ),
                                title: Text(contact.displayName),
                                subtitle: Text(
                                  contact.phones.isNotEmpty
                                      ? contact.phones.first.number
                                      : "No phone number",
                                ),
                                onTap: () {
                                  if(isRequestMoney == true){
                                    showAppBottomSheet(
                                      context: context,
                                      child: MultiProvider(providers: [
                                        ChangeNotifierProvider(
                                          create: (context) => TopUpRequestProvider(
                                          ),
                                        ),
                                      ],
                                      child: Builder(
                                        builder: (context) {
                                          WidgetsBinding.instance.addPostFrameCallback((_) {
                                            context.read<TopUpRequestProvider>().selectContact(contact);
                                          });
                                          return RequestSetAmountSheet(sheetType: AmountSheetType.requestMoney);
                                        }
                                      )),
                                    );
                                  }else{
                                    Navigator.of(context).pop(contact);
                                  }
                                },
                              );
                            },
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
