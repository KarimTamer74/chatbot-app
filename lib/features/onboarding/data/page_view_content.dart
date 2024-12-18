import 'models/onboarding_model.dart';
import '../../../utils/app_assets.dart';

List<OnboardingModel> onboardingList = [
  const OnboardingModel(
    image:AppAssets.onboardingFirstPage,
    title: 'Welcome to your AI Companion',
    description:
        'Our AI assistant designed to become your trusted companion in solving various tasks and issues.',
  ),
  const OnboardingModel(
    image: AppAssets.onboardingSecondPage,
    title: 'Smart and Quick Response',
    description:
        'Get fast, intelligent replies to your questions, anytime you need them.',
  ),
  const OnboardingModel(
    image: AppAssets.onboardingThirdPage,
    title: 'Chat, Learn and Explore',
    description:
        'Engage in meaningful coversations and discover insights tailored for you.',
  ),
];
