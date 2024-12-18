import 'package:chatbot_app/utils/app_colors.dart';

import '../../../../../utils/styles.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({super.key, this.onPressed});

  final void Function()? onPressed;
  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kBlueColor,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: FittedBox(
        child: Text(
          'Sign Up',
          style: Styles.whiteTextStyle24.copyWith(
            color: AppColors.kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
