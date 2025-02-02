import 'package:chatbot_app/features/authentication/presentation/views/widgets/custom_elevated_button.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:flutter/material.dart';

import '../../../data/page_view_content.dart';
import 'onboarding_title_and_descr_sectiont.dart';
import 'onboarding_view_body.dart';
import 'page_change_point.dart';

class PageViewBody extends StatefulWidget {
  const PageViewBody({super.key, required this.index});
  final int index;

  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            getOnboardingList(context)[widget.index].image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
        OnboardingTitleAndDescSection(index: widget.index),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .03,
        ),
        PageChangePoints(currentIndex: currentIndex),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .05,
        ),
        currentIndex == 2
            ? CustomElevatedButton(
                buttonText: S.of(context).getStarted,
                onPressed: () async {
                  await completeOnboardingView();
                  // ignore: use_build_context_synchronously
                  Navigator.of(context)
                      .pushReplacementNamed(AppConstants.signInView);
                },
              )
            : CustomElevatedButton(
                buttonText: S.of(context).Continue,
                onPressed: () {
                  setState(
                    () {
                      if (currentIndex < 2) {
                        currentIndex = currentIndex + 1;
                        pageController.animateToPage(currentIndex,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.ease);
                      }
                    },
                  );
                },
              ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .05,
        ),
      ],
    );
  }
}
