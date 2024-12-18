import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await completeOnboardingView();
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacementNamed(signInView);
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
          'Get Started',
          style: Styles.whiteTextStyle24.copyWith(
            color: AppColors.kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Future<void> completeOnboardingView() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isShowedOnboardingViewKey, true);
  }
}
