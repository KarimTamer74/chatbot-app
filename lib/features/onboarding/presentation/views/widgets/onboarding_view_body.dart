// ignore_for_file: unnecessary_const

import 'package:chatbot_app/utils/common_widgets/change_theme_widget.dart';
import 'package:chatbot_app/utils/common_widgets/select_language_widget.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: AppConstants.appPadding,
      child: Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(child: const SelectLanguageWidget(),),
               SizedBox(width: 20.w,),
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
