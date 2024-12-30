import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/common_widgets/change_theme_widget.dart';
import 'package:chatbot_app/utils/common_widgets/select_language_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: AppColors.kBlueColor,
          child: ListView(
            children: const [
              Spacer(),
              SelectLanguageWidget(),
              SizedBox(height: 20),
              CustomChangeThemeWidget(),
              Spacer()
            ],
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
