import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordTextField extends StatefulWidget {
  const ResetPasswordTextField({
    super.key,
    required this.emailControllerToResetPass,
  });

  final TextEditingController emailControllerToResetPass;

  @override
  State<ResetPasswordTextField> createState() => _ResetPasswordTextFieldState();
}

class _ResetPasswordTextFieldState extends State<ResetPasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.emailControllerToResetPass,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).emptyEmail;
        }
        return null;
      },
      style: Styles.textStyleBold15,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 20.sp, horizontal: 20.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0.sp),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBlueColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              30.0.sp,
            ),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kBlueColor, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(
              30.0.sp,
            ),
          ),
        ),
        isDense: true,
        fillColor: AppColors.kBlueColor.withOpacity(0.05),
        filled: true,
        errorStyle: const TextStyle(fontSize: 15),
        hintText: S.of(context).enterYourEmail,
        hintStyle: Styles.greyTextStyle16,
      ),
    );
  }
}
