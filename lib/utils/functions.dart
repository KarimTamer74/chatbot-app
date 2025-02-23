import 'dart:developer';

import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/localizations/app_locales_cubit/app_locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> completeOnboardingView() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool(AppConstants.isShowedOnboardingViewKey, true);
}

Future<bool> checkOnboardingStatus() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool(AppConstants.isShowedOnboardingViewKey) ?? false;
}

Future<bool> checkSignIn() async {
  final prefs = await SharedPreferences.getInstance();

  if (prefs.getBool(AppConstants.isSignInKey) == true) {
    log('Already signed in');
  }

  return prefs.getBool(AppConstants.isSignInKey) ?? false;
}

Future<void> signInCompleted() async {
  final pref = SharedPreferences.getInstance();
  pref.then((value) => value.setBool(AppConstants.isSignInKey, true));
}

void signOutCompleted() {
  final prefs = SharedPreferences.getInstance();
  prefs.then((value) => value.setBool(AppConstants.isSignInKey, false));
  log('Sign out completed');
}

void changeLangauageMethod(BuildContext context, String languageCode) {
  Locale arabicLocale = const Locale(AppConstants.arabicKey);
  Locale englishLocale = const Locale(AppConstants.englishKey);
  if (languageCode == AppConstants.englishKey) {
    context.read<AppLocaleCubit>().changeAppLocale(englishLocale);
  } else if (languageCode == AppConstants.arabicKey) {
    context.read<AppLocaleCubit>().changeAppLocale(arabicLocale);
  }
}

String extractBeforeAt(String email) {
  RegExp regex = RegExp(r"^[^@]+");
  Match? match = regex.firstMatch(email);
  return match != null ? match.group(0)! : '';
}
// Future<void> pickImage() async {
//     final pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }