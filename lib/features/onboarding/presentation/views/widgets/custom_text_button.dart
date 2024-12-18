import 'package:chatbot_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/styles.dart';
import 'onboarding_view_body.dart';

class ContinueTextButton extends StatefulWidget {
  const ContinueTextButton({
    super.key,
  });

  @override
  State<ContinueTextButton> createState() => _ContinueTextButtonState();
}

class _ContinueTextButtonState extends State<ContinueTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(
          () {
            if (currentIndex < 2) {
              currentIndex = currentIndex + 1;
              pageController.animateToPage(currentIndex,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.ease);
            }
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kButtonColor.withOpacity(.9),
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: FittedBox(
        child: Text(
          'Continue',
          style: Styles.whiteTextStyle24.copyWith(
            color: AppColors.kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
