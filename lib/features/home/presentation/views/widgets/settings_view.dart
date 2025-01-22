import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Settings View",
          style: Styles.textStyleBold22,
        ),
      ),
    );
  }
}
