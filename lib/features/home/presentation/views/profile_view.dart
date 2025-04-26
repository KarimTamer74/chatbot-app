import 'package:chatbot_app/features/home/presentation/views/widgets/profile_view/profile_view_body.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: AppConstants.appPadding,
        child: ProfileViewBody(),
      ),
    );
  }
}
