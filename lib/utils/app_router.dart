import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/authentication/presentation/views/sign_in_view.dart';
import '../features/authentication/presentation/views/sign_up_view.dart';
import '../features/home/presentation/views/home_view.dart';
import '../features/onboarding/presentation/views/onboarding_view.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

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
          builder: (context) => BlocProvider(
            create: (context) => SignInCubit(),
            child: const SignInView(),
          ),
        );

      case signUpView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignUpCubit(),
            child: const SignUpView(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );
    }
  }
}
