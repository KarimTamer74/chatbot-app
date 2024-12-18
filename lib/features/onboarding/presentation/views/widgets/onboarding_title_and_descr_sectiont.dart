import '../../../data/page_view_content.dart';
import 'custom_text_widget.dart';
import '../../../../../utils/styles.dart';
import 'package:flutter/material.dart';

class OnboardingTitleAndDescSection extends StatelessWidget {
  const OnboardingTitleAndDescSection({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
            text: onboardingList[index].title, style: Styles.whiteTextStyle24),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
        CustomTextWidget(
            text: onboardingList[index].description,
            style: Styles.greyTextStyle18),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
      ],
    );
  }
}
