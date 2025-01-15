
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:chatbot_app/utils/theme/extentaions/app_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: context.isDarkMode
              ? AppColors.kBlueColor.withOpacity(.15)
              : AppColors.kBlueColor),
      child: Center(
          child: Text(
        S.of(context).resetPassword,
        style: Styles.textStyle16,
      )),
    );
  }
}
