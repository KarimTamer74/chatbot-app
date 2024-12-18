import 'package:chatbot_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LoginDividerWidget extends StatelessWidget {
  const LoginDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: AppColors.kWhiteColor,
          ),
        ),
        Text(
          '  or login with  ',
          style: TextStyle(color: AppColors.kWhiteColor, fontSize: 20),
        ),
        Expanded(
          child: Divider(
            color: AppColors.kWhiteColor,
          ),
        ),
      ],
    );
  }
}
