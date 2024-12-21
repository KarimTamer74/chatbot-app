import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class LoginDividerWidget extends StatelessWidget {
  const LoginDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
        Text(
          '  or login with  ',
          style: Styles.textStyle20,
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
