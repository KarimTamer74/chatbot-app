import 'package:chatbot_app/features/home/presentation/views/profile_view.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/settings_view.dart';
import 'package:flutter/material.dart';

List<Widget> getBottomNavBarBody() {
  return [
    /// * Settings page
    const SettingsView(),

    ///* Home page
    const HomeViewBody(),

    //* Pofile page
    const ProfileView(),
  ];
}
