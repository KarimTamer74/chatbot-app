import 'package:chatbot_app/features/authentication/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/account_creation_or_login_prompt.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/custom_elevated_button.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_up_user_accept_data.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/show_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class SignUpBuildWidgets extends StatefulWidget {
  const SignUpBuildWidgets({super.key});

  @override
  State<SignUpBuildWidgets> createState() => _SignUpBuildWidgetsState();
}

String? email, password, confirmPassword;

class _SignUpBuildWidgetsState extends State<SignUpBuildWidgets> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordConfirmationController;
  GlobalKey<FormState> signUpformKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signUpformKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.signInAsset,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 40.h,
            ),
            SignUpUserAcceptData(
              emailController: emailController,
              passwordController: passwordController,
              passwordConfirmationController: passwordConfirmationController,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomElevatedButton(
              buttonText: 'Sign up',
              onPressed: () async {
                getUserData();
                if (signUpformKey.currentState!.validate()) {
                  signUpformKey.currentState!.save();
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
              height: 20.h,
            ),
            const AccountCreationOrLoginPrompt(
              text: 'Already have an account?',
              textButton: 'Sign in',
            )
          ],
        ),
      ),
    );
  }

  void getUserData() {
    email = emailController.text;
    password = passwordController.text;
    confirmPassword = passwordConfirmationController.text;
    Logger().i('Email: $email, Password: $password');
  }
}
