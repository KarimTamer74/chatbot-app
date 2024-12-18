import 'dart:developer';

import 'package:chatbot_app/features/authentication/presentation/view_model/sign_out/sign_out_cubit.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/show_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<SignOutCubit, SignOutState>(
          listener: (context, state) {
            if (state is SignOutSuccessState) {
              Navigator.pushReplacementNamed(context, signInView);
              showSnackBar(context, 'Logout successfully✔️');
              _signOutCompleted();
            }
            if (state is SignOutFailureState) {
              showSnackBar(context, state.errorMessage);
            } else if (state is SignOutLoadingState) {
              const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 24),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      BlocProvider.of<SignOutCubit>(context).userSignOut();
                    },
                    child: const Text("Logout"))
              ],
            );
          },
        ),
      ),
    );
  }

  void _signOutCompleted() {
    final prefs = SharedPreferences.getInstance();
    prefs.then((value) => value.setBool(isSignInKey, false));
    log('Sign out completed');
  }
}
