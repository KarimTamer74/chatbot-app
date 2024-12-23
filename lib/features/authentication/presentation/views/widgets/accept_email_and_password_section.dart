import 'package:chatbot_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcceptEmailAndPasswordSection extends StatelessWidget {
  const AcceptEmailAndPasswordSection({
    super.key,
    required this.emailController,
    required this.passwordController,
  });
  final TextEditingController emailController, passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          labelText: S.of(context).email,
          hintText: S.of(context).enterYourEmail,
          iconData: Icons.email,
          controller: emailController,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          labelText: S.of(context).password,
          hintText: S.of(context).enterYourPassword,
          iconData: Icons.lock,
          controller: passwordController,
        )
      ],
    );
  }
}
