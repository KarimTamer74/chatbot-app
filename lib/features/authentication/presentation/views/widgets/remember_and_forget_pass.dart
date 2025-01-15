import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            signInCompleted();

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
            signInCompleted();
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: Text(
            S.of(context).rememberMe,
            style: Styles.textStyle14,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            S.of(context).forgotPassword,
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
