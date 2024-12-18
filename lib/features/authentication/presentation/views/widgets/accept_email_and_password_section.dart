import 'package:chatbot_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AcceptEmailAndPasswordSection extends StatelessWidget {
  const AcceptEmailAndPasswordSection(
      {super.key, required this.onEmailChanged, required this.onPasswordChanged,});
  final Function(String) onEmailChanged;
final Function(String) onPasswordChanged;
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
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
          labelText: 'Password',
          hintText: 'Enter your password',
          iconData: Icons.lock,
          onChanged: 
       onPasswordChanged
        )
      ],
    );
  }
}
