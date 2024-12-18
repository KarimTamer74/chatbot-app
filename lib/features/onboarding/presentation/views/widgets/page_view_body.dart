import 'package:chatbot_app/features/onboarding/presentation/views/widgets/custom_text_button.dart';
import 'package:chatbot_app/features/onboarding/presentation/views/widgets/get_started_button.dart';
import 'package:flutter/material.dart';

import '../../../data/page_view_content.dart';
import 'onboarding_title_and_descr_sectiont.dart';
import 'onboarding_view_body.dart';
import 'page_change_point.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            onboardingList[index].image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
        OnboardingTitleAndDescSection(index: index),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
        PageChangePoints(currentIndex: currentIndex),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .05,
        ),
        currentIndex == 2
            ? const GetStartedButton()
            : const ContinueTextButton(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .05,
        ),
      ],
    );
  }
}
