import 'package:chatbot_app/features/onboarding/presentation/views/widgets/custom_text_widget.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../data/page_view_content.dart';

class OnboardingTitleAndDescSection extends StatelessWidget {
  const OnboardingTitleAndDescSection({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
            text: getOnboardingList(context)[index].title,
            style: Styles.whiteTextStyle24),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
        CustomTextWidget(
            text: getOnboardingList(context)[index].description,
            style: Styles.greyTextStyle18),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
      ],
    );
  }
}
