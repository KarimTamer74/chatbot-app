import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_state.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_in_build_widgets.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/show_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          const Center(child: CircularProgressIndicator());
        }
      },
      builder: (context, state) {
        return const SignInBuildWidgets();
      },
    );
  }

  Future<void> signInCompleted() async {
    final pref = SharedPreferences.getInstance();
    pref.then((value) => value.setBool(isSignInKey, true));
  }
}
