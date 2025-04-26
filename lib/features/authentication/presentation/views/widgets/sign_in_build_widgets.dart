import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/social_sign_in_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/accept_email_and_password_section.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/account_creation_or_login_prompt.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/custom_elevated_button.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/other_login_ways.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/remember_and_forget_pass.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class SignInBuildWidgets extends StatefulWidget {
  const SignInBuildWidgets({
    super.key,
  });

  @override
  State<SignInBuildWidgets> createState() => _SignInBuildWidgetsState();
}

String? email, password;

class _SignInBuildWidgetsState extends State<SignInBuildWidgets> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordConfirmationController;
  GlobalKey<FormState> signInformKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.appPadding,
      child: Form(
        key: signInformKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.signInAsset,
                fit: BoxFit.fill,
                height: 150.h,
              ),
              SizedBox(
                height: 34.h,
              ),
              AcceptEmailAndPasswordSection(
                emailController: emailController,
                passwordController: passwordController,
              ),
              SizedBox(
                height: 8.h,
              ),
              const RememberAndForgetPass(),
              SizedBox(
                height: 16.h,
              ),
              CustomElevatedButton(
                buttonText: S.of(context).login,
                onPressed: () {
                  getUserDataInLoginView();
                  if (signInformKey.currentState!.validate()) {
                    signInformKey.currentState!.save();
                    BlocProvider.of<SignInCubit>(context)
                        .userSignIn(email: email!, password: password!);
                  }
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              BlocProvider(
                create: (context) => SignInWithSocialCubit(),
                child: const OtherLoginWays(),
              ),
              SizedBox(
                height: 12.h,
              ),
              AccountCreationOrLoginPrompt(
                text: S.of(context).donotHaveAnAccount,
                textButton: S.of(context).signUp,
              )
            ],
          ),
        ),
      ),
    );
  }

  void getUserDataInLoginView() {
    email = emailController.text;
    password = passwordController.text;
    Logger().i('in SignIn View, Email: $email, Password: $password');
  }
}
