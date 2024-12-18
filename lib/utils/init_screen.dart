import 'package:chatbot_app/features/authentication/presentation/views/sign_in_view.dart';
import 'package:chatbot_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: _checkOnboardingStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.data == null || snapshot.data == true) {
            return const SignInView();
          }
          return const OnboardingView();
        });
  }

  Future<bool> _checkOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isShowedOnboardingViewKey) ?? false;
  }
}
