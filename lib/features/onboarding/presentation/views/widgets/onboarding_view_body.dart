// ignore_for_file: unnecessary_const

import 'package:chatbot_app/utils/common_widgets/change_theme_widget.dart';
import 'package:chatbot_app/utils/common_widgets/select_language_widget.dart';
import 'package:chatbot_app/utils/theme/app_theming_cubit/app_theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'page_view_body.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

int currentIndex = 0;
PageController pageController = PageController();

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: Column(
        children: [
           const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const SelectLanguageWidget(),
              const CustomChangeThemeWidget(),
            ],
          ),
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              onPageChanged: (value) {
                setState(
                  () {
                    currentIndex = value;
                  },
                );
              },
              itemBuilder: (context, index) {
                return PageViewBody(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
