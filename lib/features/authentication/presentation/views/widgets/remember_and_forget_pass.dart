import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberAndForgetPass extends StatefulWidget {
  const RememberAndForgetPass({super.key});

  @override
  State<RememberAndForgetPass> createState() => _RememberAndForgetPassState();
}

bool isPressed = false;

class _RememberAndForgetPassState extends State<RememberAndForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            completeSignIn();

            setState(() {
              isPressed = !isPressed;
            });
          },
          icon: isPressed
              ? const Icon(Icons.check_box)
              : const Icon(
                  Icons.rectangle,
                  color: Colors.grey,
                  size: 22,
                ),
        ),
        TextButton(
          onPressed: () {
            completeSignIn();
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: Text(
            'Remember me',
            style: TextStyle(color: AppColors.kWhiteColor, fontSize: 18),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: TextStyle(color: AppColors.kWhiteColor, fontSize: 18),
          ),
        )
      ],
    );
  }
}

void completeSignIn() {
  final pref = SharedPreferences.getInstance();
  pref.then((value) => value.setBool(isSignInKey, true));
}
