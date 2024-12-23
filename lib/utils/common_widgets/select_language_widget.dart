import 'dart:developer';

import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:chatbot_app/utils/localizations/app_locales_cubit/app_locale_cubit.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectLanguageWidget extends StatelessWidget {
  const SelectLanguageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      tooltip: S.of(context).changeLanguage,
      child: Row(
        children: [
          const Icon(Icons.language),
          const SizedBox(
            width: 10,
          ),
          Text(
            S.of(context).language,
            style: Styles.textStyle16,
          )
        ],
      ),
      onSelected: (String languageCode) {
        log("selected language: $languageCode");
        changeLangauageMethod(context, languageCode);
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: englishKey,
          child: Text(S.of(context).english, style: Styles.textStyle16),
        ),
        PopupMenuItem(
          value: arabicKey,
          child: Text(S.of(context).arabic, style: Styles.textStyle20),
        ),
      ],
    );
  }
}
