import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(
          "Profile View",
          style: Styles.textStyleBold22,
        ),
      ),
    );
  }
}
