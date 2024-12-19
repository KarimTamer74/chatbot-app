import 'dart:developer';

import 'package:chatbot_app/utils/constants.dart';
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