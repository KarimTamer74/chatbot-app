
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle15,
          ),
        ),
      ),
    );
  }
}