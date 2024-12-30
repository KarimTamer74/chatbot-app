import 'package:chatbot_app/features/home/presentation/views/bot_view.dart';
import 'package:flutter/material.dart';

import '../features/authentication/presentation/views/sign_in_view.dart';
import '../features/authentication/presentation/views/sign_up_view.dart';
import '../features/home/presentation/views/home_view.dart';
import '../features/onboarding/presentation/views/onboarding_view.dart';
import 'constants.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case onboardingView:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
        );

      case homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );

      case signInView:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );

      case signUpView:
        return MaterialPageRoute(
          builder: (context) => const SignUpView(),
        );
      case botView:
        return MaterialPageRoute(
          builder: (context) => const BotView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );
    }
  }
}
