import 'dart:developer';

import 'package:chatbot_app/features/authentication/presentation/view_model/reset_password/cubit/reset_password_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/reset_password_body.dart';
import 'package:chatbot_app/utils/common_widgets/show_snackbar_widget.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordScreen extends StatefulWidget {
  // static const String id = 'reset_password';
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

final key = GlobalKey<FormState>();

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: AppConstants.appPadding,
          child: Form(
            key: key,
            child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
                listener: (context, state) {
                  if (state is ResetPasswordSuccessState) {
                    log("Password reset link sent to");
                    showSnackBar(
                        context, "Sent Reset Password Link on your email");

                    //show dialog
                    Navigator.pop(context);
                  }
                  if (state is ResetPasswordFailureState) {
                    log(state.message);
                    showSnackBar(context, state.message);
                  }
                  if (state is ResetPasswordLoadingState) {
                    log("Loading");
                  }
                },
                child: const ResetPasswordBody(),),
          ),
        ),
      ),
    );
  }
}
