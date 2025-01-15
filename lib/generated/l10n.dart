// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to your AI Companion`
  String get onBoardingFirstPageTitle {
    return Intl.message(
      'Welcome to your AI Companion',
      name: 'onBoardingFirstPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Our AI assistant designed to become your trusted companion in solving various tasks and issues.`
  String get onBoardingFirstPageDescription {
    return Intl.message(
      'Our AI assistant designed to become your trusted companion in solving various tasks and issues.',
      name: 'onBoardingFirstPageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Smart and Quick Response`
  String get onBoardingSecondPageTitle {
    return Intl.message(
      'Smart and Quick Response',
      name: 'onBoardingSecondPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get fast, intelligent replies to your questions, anytime you need them.`
  String get onBoardingSecondPageDescription {
    return Intl.message(
      'Get fast, intelligent replies to your questions, anytime you need them.',
      name: 'onBoardingSecondPageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Chat, Learn and Explore`
  String get onBoardingThirdPageTitle {
    return Intl.message(
      'Chat, Learn and Explore',
      name: 'onBoardingThirdPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Engage in meaningful coversations and discover insights tailored for you.`
  String get onBoardingThirdPageDescription {
    return Intl.message(
      'Engage in meaningful coversations and discover insights tailored for you.',
      name: 'onBoardingThirdPageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enterYourEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterYourPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Submit your password`
  String get submitYourPassword {
    return Intl.message(
      'Submit your password',
      name: 'submitYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get donotHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'donotHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `This field is required.`
  String get thisFieldRequired {
    return Intl.message(
      'This field is required.',
      name: 'thisFieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Phone`
  String get continueWithPhone {
    return Intl.message(
      'Continue with Phone',
      name: 'continueWithPhone',
      desc: '',
      args: [],
    );
  }

  /// `  or login with  `
  String get orLoginWith {
    return Intl.message(
      '  or login with  ',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me`
  String get rememberMe {
    return Intl.message(
      'Remember Me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Change Theme`
  String get changeTheme {
    return Intl.message(
      'Change Theme',
      name: 'changeTheme',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get arabic {
    return Intl.message(
      'العربية',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Ask Gemini`
  String get askGemini {
    return Intl.message(
      'Ask Gemini',
      name: 'askGemini',
      desc: '',
      args: [],
    );
  }

  /// `Let’s start chatting! Ask me anything you want.`
  String get startConversation {
    return Intl.message(
      'Let’s start chatting! Ask me anything you want.',
      name: 'startConversation',
      desc: '',
      args: [],
    );
  }

  /// `Tap the button to start a new conversation.`
  String get tapToStart {
    return Intl.message(
      'Tap the button to start a new conversation.',
      name: 'tapToStart',
      desc: '',
      args: [],
    );
  }

  /// `Start Chat`
  String get startChat {
    return Intl.message(
      'Start Chat',
      name: 'startChat',
      desc: '',
      args: [],
    );
  }

  /// `Chatbot App`
  String get chatbotApp {
    return Intl.message(
      'Chatbot App',
      name: 'chatbotApp',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Recent Chats`
  String get recentChats {
    return Intl.message(
      'Recent Chats',
      name: 'recentChats',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `About App`
  String get aboutApp {
    return Intl.message(
      'About App',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get helpSupport {
    return Intl.message(
      'Help & Support',
      name: 'helpSupport',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message(
      'Sign Out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `please wait...`
  String get pleaseWait {
    return Intl.message(
      'please wait...',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Login successfully`
  String get loginSuccessfully {
    return Intl.message(
      'Login successfully',
      name: 'loginSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Logout successfully`
  String get logoutSuccessfully {
    return Intl.message(
      'Logout successfully',
      name: 'logoutSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Change language successfully`
  String get changeLanguageSuccessfully {
    return Intl.message(
      'Change language successfully',
      name: 'changeLanguageSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get getStarted {
    return Intl.message(
      'Get started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to sign out?`
  String get areYouSureToSignOut {
    return Intl.message(
      'Are you sure you want to sign out?',
      name: 'areYouSureToSignOut',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `yes`
  String get yes {
    return Intl.message(
      'yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
