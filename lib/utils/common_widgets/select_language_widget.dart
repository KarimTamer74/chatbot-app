import 'dart:developer';

import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectLanguageWidget extends StatelessWidget {
  const SelectLanguageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      tooltip: S.of(context).changeLanguage,
      popUpAnimationStyle: AnimationStyle(
        duration: const Duration(milliseconds: 200),
        curve: Curves.fastEaseInToSlowEaseOut,
      ),
      child:Expanded(
        child: ListTile(
              leading:  Icon(
                Icons.language,
                size: 28.sp,
              ),
              title: Text( S.of(context).language,),
            ),
      ),
      onSelected: (String languageCode) {
        log("selected language: $languageCode");
        changeLangauageMethod(context, languageCode);
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: AppConstants.englishKey,
          child: Text(S.of(context).english, style: Styles.textStyle16),
        ),
        PopupMenuItem(
          value: AppConstants.arabicKey,
          child: Text(S.of(context).arabic, style: Styles.textStyle20),
        ),
      ],
    );
  }
}
