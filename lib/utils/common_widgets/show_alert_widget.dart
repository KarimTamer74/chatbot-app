import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:chatbot_app/utils/theme/extentaions/app_theme_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> showDialogWidget(
  BuildContext context, {
  required String title,
  required String bottonText,
  required String subTitle,
  required void Function()? onOkPressed,
}) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        content: Text(
          subTitle,
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: onOkPressed,
            child: Text(
              bottonText,
              style: Styles.textStyleBold24.copyWith(
                  color: context.isDarkMode
                      ? AppColors.kBlueShade600
                      : AppColors.kdarkBlueColor),
            ),
          ),
          CupertinoDialogAction(
            child: Text(
              S.of(context).cancel,
              style: Styles.textStyle20.copyWith(
                  color: context.isDarkMode
                      ? AppColors.kWhiteColor
                      : AppColors.kBlackColor),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
    },
  );
}
