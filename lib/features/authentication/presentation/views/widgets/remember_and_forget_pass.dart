import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              : Icon(
                  Icons.rectangle,
                  color: Colors.grey,
                  size: 22.sp,
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
            style: Styles.textStyle16,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: Styles.textStyle16,
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
