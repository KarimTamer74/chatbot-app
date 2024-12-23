import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class LoginDividerWidget extends StatelessWidget {
  const LoginDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
        Text(
          S.of(context).orLoginWith,
          style: Styles.textStyle20,
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
