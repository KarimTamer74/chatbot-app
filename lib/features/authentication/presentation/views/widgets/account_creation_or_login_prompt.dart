import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';

class AccountCreationOrLoginPrompt extends StatelessWidget {
  const AccountCreationOrLoginPrompt(
      {super.key, required this.text, required this.textButton});
  final String text;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            text,
            style: Styles.textStyle18,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        TextButton(
          onPressed: () {
            if (textButton == S.of(context).signUp) {
              Navigator.pushNamed(context, AppConstants.signUpView);
            } else if (textButton == S.of(context).signIn) {
              Navigator.pop(context);
            }
          },
          child: FittedBox(
            child: Text(
              textButton,
              style: Styles.textStyle18.copyWith(color: AppColors.kBlueColor),
            ),
          ),
        ),
      ],
    );
  }
}
