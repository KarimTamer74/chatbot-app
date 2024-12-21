import 'custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpUserAcceptData extends StatelessWidget {
  const SignUpUserAcceptData({
    super.key, required this.emailController, required this.passwordController, required this.passwordConfirmationController,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmationController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomTextFormField(
          labelText: 'Email',
          hintText: 'Enter your email',
          iconData: Icons.email,
          controller: emailController,
        ),
        SizedBox(
          height: 10.h,
        ),
          CustomTextFormField(
          labelText: 'Password',
          hintText: 'Enter your password',
          iconData: Icons.lock,
          controller: passwordController,
        ),
        SizedBox(
          height: 10.h,
        ),
         CustomTextFormField(
          labelText: 'Submit Password',
          hintText: 'Submit your password',
          iconData: Icons.lock,
          controller: passwordConfirmationController,
        ),
      ],
    );
  }
}
