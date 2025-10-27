import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWithTitle extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Color? underlineColor;
  final Color? focusedUnderlineColor;
  final bool obscureText;
  final VoidCallback? onTap;
  final bool readOnly;
  final Widget? suffixIcon;
  final String? Function(String?)? onValidate;
  final ValueChanged<String>? onChanged;

  const TextFieldWithTitle({
    Key? key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.underlineColor = Colors.grey,
    this.focusedUnderlineColor = Colors.black,
    this.obscureText = false,
    this.onTap,
    this.readOnly = false,
    this.suffixIcon,
    this.onValidate,
    this.onChanged, // 👈 new
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          size: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          readOnly: readOnly,
          onTap: onTap,
          onChanged: onChanged,
          validator: onValidate ??
                  (value) {
                if (value!.isEmpty) {
                  return "Please fill this required field!";
                }
                return null;
              },
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16.sp,
            ),
            suffixIcon: suffixIcon,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: underlineColor ?? Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide:
              BorderSide(color: focusedUnderlineColor ?? Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
