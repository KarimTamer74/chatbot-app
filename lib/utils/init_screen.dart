import 'package:chatbot_app/features/authentication/presentation/views/sign_in_view.dart';
import 'package:chatbot_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: checkOnboardingStatus(),
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
}
