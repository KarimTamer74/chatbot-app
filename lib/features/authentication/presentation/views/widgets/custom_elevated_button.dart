import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.onPressed, required this.buttonText});
  final void Function()? onPressed;
  final String buttonText ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child:FittedBox(
        child: Text(
          buttonText,
          style: Styles.whiteTextStyle24.copyWith(
            color: AppColors.kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),);
  }
}
