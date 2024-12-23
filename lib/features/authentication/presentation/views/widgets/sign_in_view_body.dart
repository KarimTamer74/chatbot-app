import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_state.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_in_build_widgets.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:chatbot_app/utils/common_widgets/show_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          showSnackBar(context, 'Login successfully✔️');
          signInCompleted();
          Navigator.pushNamed(context, homeView);
        } else if (state is SignInFailureState) {
          showSnackBar(context, state.errorMessage);
        } else if (state is SignInLoadingState) {
          showSnackBar(context, 'please wait...');

          const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
      builder: (context, state) {
        return const SignInBuildWidgets();
      },
    );
  }
}
