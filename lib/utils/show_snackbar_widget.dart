import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: AppColors.kButtonColor,
      behavior: SnackBarBehavior.floating, 
      shape: RoundedRectangleBorder( 
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      content: Padding(
        padding: const EdgeInsets.all(12.0), 
        child: Center(
          child: Text(
            message,
            style: Styles.whiteTextStyle18,
          ),
        ),
      ),
    ),
  );
}

