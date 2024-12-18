import 'dart:developer';

import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_cubit.dart';
import 'package:chatbot_app/features/home/presentation/views/home_view.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
            future: _checkSignIn(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.data == null || snapshot.data == true) {
                return const HomeView();
              }
              return BlocProvider(
                create: (context) => SignInCubit(),
                child: const SignInViewBody(),
              );
            }),
      ),
    );
  }

  Future<bool> _checkSignIn() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getBool(isSignInKey) == true) {
      log('Already signed in');
    }
    return prefs.getBool(isSignInKey) ?? false;
  }
}
