import 'dart:developer';

import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/localizations/app_locales_cubit/app_locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> completeOnboardingView() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool(isShowedOnboardingViewKey, true);
}
  Future<bool> checkOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isShowedOnboardingViewKey) ?? false;
  }
  Future<bool> checkSignIn() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getBool(isSignInKey) == true) {
      log('Already signed in');
    }
    
    return prefs.getBool(isSignInKey) ?? false;
  }
    Future<void> signInCompleted() async {
    final pref = SharedPreferences.getInstance();
    pref.then((value) => value.setBool(isSignInKey, true));
  }


    void signOutCompleted() {
    final prefs = SharedPreferences.getInstance();
    prefs.then((value) => value.setBool(isSignInKey, false));
    log('Sign out completed');
  }

    void changeLangauageMethod(BuildContext context, String languageCode) {
    Locale arabicLocale = const Locale(arabicKey);
    Locale englishLocale = const Locale(englishKey);
    if (languageCode == englishKey) {
      
      context.read<AppLocaleCubit>().changeAppLocale(englishLocale);
   
    } else if (languageCode == arabicKey) {
     
      context.read<AppLocaleCubit>().changeAppLocale(arabicLocale);
   
    }
  }
