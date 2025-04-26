import 'package:chatbot_app/features/home/presentation/views/about_app_view.dart';
import 'package:chatbot_app/features/home/presentation/views/bot_view.dart';
import 'package:chatbot_app/features/home/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../features/authentication/presentation/views/sign_in_view.dart';
import '../features/authentication/presentation/views/sign_up_view.dart';
import '../features/home/presentation/views/home_view.dart';
import '../features/onboarding/presentation/views/onboarding_view.dart';
import 'constants.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppConstants.onboardingView:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
        );

      case AppConstants.homeView:
        return MaterialPageRoute(
          builder: (context) =>  HomeView(),
        );

      case AppConstants.signInView:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );

      case AppConstants.signUpView:
        return MaterialPageRoute(
          builder: (context) => const SignUpView(),
        );
      case AppConstants.botView:
        return MaterialPageRoute(
          builder: (context) => const BotView(),
        );case AppConstants.profileView:
        return MaterialPageRoute(
          builder: (context) => const ProfileView(),
        );case AppConstants.aboutApp:
        return MaterialPageRoute(
          builder: (context) => const AboutAppView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );
    }
  }
}
