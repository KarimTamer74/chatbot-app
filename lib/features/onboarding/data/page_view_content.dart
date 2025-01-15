import 'package:chatbot_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'models/onboarding_model.dart';
import '../../../utils/app_assets.dart';
List<OnboardingModel> getOnboardingList(BuildContext context) {
  return  [
    OnboardingModel(
    image:AppAssets.onboardingFirstPage,
    title:  S.of(context).onBoardingFirstPageTitle,
    description:
        S.of(context).onBoardingFirstPageDescription,
  ),
   OnboardingModel(
    image: AppAssets.onboardingSecondPage,
    title: S.of(context).onBoardingSecondPageTitle,
    description:
        S.of(context).onBoardingSecondPageDescription,
  ),
   OnboardingModel(
    image: AppAssets.onboardingThirdPage,
    title: S.of(context).onBoardingThirdPageTitle,
    description:
       S.of(context).onBoardingThirdPageDescription,
  ),
];
}

