import 'package:chatbot_app/features/authentication/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => SignUpCubit(),
          child: const SignUpViewBody(),
        ),
      ),
    );
  }
}
