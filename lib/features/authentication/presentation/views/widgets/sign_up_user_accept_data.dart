import 'custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpUserAcceptData extends StatelessWidget {
  const SignUpUserAcceptData({super.key, required this.onEmailChanged, required this.onPasswordChanged, required this.onConfirmPasswordChanged});
final Function(String) onEmailChanged;
final Function(String) onPasswordChanged;
final Function(String) onConfirmPasswordChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomTextFormField(
          labelText: 'Email',
          hintText: 'Enter your email',
          iconData: Icons.email,
          onChanged:onEmailChanged
        ),
        SizedBox(
          height: 10.h,
        ),
         CustomTextFormField(
          labelText: 'Password',
          hintText: 'Enter your password',
          iconData: Icons.lock,
          onChanged: onPasswordChanged,
        ),
        SizedBox(
          height: 10.h,
        ),
         CustomTextFormField(
          labelText: 'Submit Password',
          hintText: 'Submit your password',
          iconData: Icons.lock,
          onChanged: onConfirmPasswordChanged,
        ),
      ],
    );
  }
}
