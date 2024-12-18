import 'package:chatbot_app/features/authentication/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/account_creation_or_login_prompt.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_up_button.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_up_user_accept_data.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_up_view_body.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/show_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBuildWidgets extends StatefulWidget {
  const SignUpBuildWidgets({super.key});

  @override
  State<SignUpBuildWidgets> createState() => _SignUpBuildWidgetsState();
}

String? email, password, confirmPassword;

class _SignUpBuildWidgetsState extends State<SignUpBuildWidgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            AppAssets.signInAsset,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        SignUpUserAcceptData(
          onEmailChanged: (value) {
            email = value;
          },
          onPasswordChanged: (value) {
            password = value;
          },
          onConfirmPasswordChanged: (value) {
            confirmPassword = value;
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        SignUpButton(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              if (password == confirmPassword) {
                BlocProvider.of<SignUpCubit>(context)
                    .userSignUp(email: email!, password: password!);
              } else {
                showSnackBar(context, 'Passwords do not match');
              }
            }
          },
        ),
        SizedBox(
          height: 5.h,
        ),
        const Expanded(
            child: AccountCreationOrLoginPrompt(
          text: 'Already have an account?',
          textButton: 'Sign in',
        ))
      ],
    );
  }
}
