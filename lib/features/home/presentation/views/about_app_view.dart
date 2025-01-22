import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(
          "About App View",
          style: Styles.textStyleBold22,
        ),
      ),
    );
  }
}
