import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/accept_email_and_password_section.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/account_creation_or_login_prompt.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/login_button.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/other_login_ways.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/remember_and_forget_pass.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInBuildWidgets extends StatefulWidget {
  const SignInBuildWidgets({
    super.key,
  });

  @override
  State<SignInBuildWidgets> createState() => _SignInBuildWidgetsState();
}

GlobalKey<FormState> formKey = GlobalKey();
String? email, password;

class _SignInBuildWidgetsState extends State<SignInBuildWidgets> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: appPadding,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                AppAssets.signInAsset,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            AcceptEmailAndPasswordSection(
              onEmailChanged: (value) {
                email = value;
              },
              onPasswordChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const RememberAndForgetPass(),
            const SizedBox(
              height: 16,
            ),
            LoginButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  BlocProvider.of<SignInCubit>(context)
                      .userSignIn(email: email!, password: password!);
                }
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            const OtherLoginWays(),
            SizedBox(
              height: 12.h,
            ),
            const AccountCreationOrLoginPrompt(
              text: 'Don\'t have an account?',
              textButton: 'Sign up',
            )
          ],
        ),
      ),
    );
  }
}
