import 'package:chatbot_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_form_field.dart';

class SignUpUserAcceptData extends StatelessWidget {
  const SignUpUserAcceptData({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.passwordConfirmationController,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmationController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          labelText: S.of(context).email,
          hintText: S.of(context).enterYourEmail,
          iconData: Icons.email,
          controller: emailController,
          isValidateEmail: true,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          labelText: S.of(context).password,
          hintText: S.of(context).enterYourPassword,
          iconData: Icons.lock,
          controller: passwordController,
          isValidatePass: true,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          labelText: S.of(context).confirmPassword,
          hintText: S.of(context).confirmPassword,
          iconData: Icons.lock,
          isValidatePass: true,
          controller: passwordConfirmationController,
        ),
      ],
    );
  }
}
