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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
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

  /// `Engage in meaningful conversations and discover insights tailored for you.`
  String get onBoardingThirdPageDescription {
    return Intl.message(
      'Engage in meaningful conversations and discover insights tailored for you.',
      name: 'onBoardingThirdPageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
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
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
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

  /// `Continue with Facebook`
  String get contiueWithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'contiueWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `or login with`
  String get orLoginWith {
    return Intl.message(
      'or login with',
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
    return Intl.message('Remember Me', name: 'rememberMe', desc: '', args: []);
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
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `العربية`
  String get arabic {
    return Intl.message('العربية', name: 'arabic', desc: '', args: []);
  }

  /// `Ask Gemini`
  String get askGemini {
    return Intl.message('Ask Gemini', name: 'askGemini', desc: '', args: []);
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
    return Intl.message('Start Chat', name: 'startChat', desc: '', args: []);
  }

  /// `Chatbot App`
  String get chatbotApp {
    return Intl.message('Chatbot App', name: 'chatbotApp', desc: '', args: []);
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
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
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `About App`
  String get aboutApp {
    return Intl.message('About App', name: 'aboutApp', desc: '', args: []);
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
    return Intl.message('Sign Out', name: 'signOut', desc: '', args: []);
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
    return Intl.message('Get started', name: 'getStarted', desc: '', args: []);
  }

  /// `Continue`
  String get Continue {
    return Intl.message('Continue', name: 'Continue', desc: '', args: []);
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
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Empty Email`
  String get emptyEmail {
    return Intl.message('Empty Email', name: 'emptyEmail', desc: '', args: []);
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address to recover your password.`
  String get pleaseEnterYourEmailToRecoverYourPassword {
    return Intl.message(
      'Please enter your email address to recover your password.',
      name: 'pleaseEnterYourEmailToRecoverYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message('Contact Us', name: 'contactUs', desc: '', args: []);
  }

  /// `Version`
  String get version {
    return Intl.message('Version', name: 'version', desc: '', args: []);
  }

  /// `Share App`
  String get shareApp {
    return Intl.message('Share App', name: 'shareApp', desc: '', args: []);
  }

  /// `Rate App`
  String get rateApp {
    return Intl.message('Rate App', name: 'rateApp', desc: '', args: []);
  }

  /// `Developer`
  String get developer {
    return Intl.message('Developer', name: 'developer', desc: '', args: []);
  }

  /// `First Name`
  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  /// `Last Name`
  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  /// `Enter your first name`
  String get enterYourFirstName {
    return Intl.message(
      'Enter your first name',
      name: 'enterYourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get enterYourLastName {
    return Intl.message(
      'Enter your last name',
      name: 'enterYourLastName',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Google Sign In Loading`
  String get googleSignInLoading {
    return Intl.message(
      'Google Sign In Loading',
      name: 'googleSignInLoading',
      desc: '',
      args: [],
    );
  }

  /// `Google Sign In Success`
  String get googleSignInSuccess {
    return Intl.message(
      'Google Sign In Success',
      name: 'googleSignInSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Google Sign In Failed`
  String get googleSignInFailed {
    return Intl.message(
      'Google Sign In Failed',
      name: 'googleSignInFailed',
      desc: '',
      args: [],
    );
  }

  /// `Google Sign In Cancelled`
  String get googleSignInCancelled {
    return Intl.message(
      'Google Sign In Cancelled',
      name: 'googleSignInCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Google Auth Failed`
  String get googleAuthFailed {
    return Intl.message(
      'Google Auth Failed',
      name: 'googleAuthFailed',
      desc: '',
      args: [],
    );
  }

  /// `Network Error, Please Try Again`
  String get networkError {
    return Intl.message(
      'Network Error, Please Try Again',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error`
  String get unexpectedError {
    return Intl.message(
      'Unexpected Error',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Account Exists With Different Credential`
  String get accountExistsWithDifferentCredential {
    return Intl.message(
      'Account Exists With Different Credential',
      name: 'accountExistsWithDifferentCredential',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Credential`
  String get invalidCredential {
    return Intl.message(
      'Invalid Credential',
      name: 'invalidCredential',
      desc: '',
      args: [],
    );
  }

  /// `Operation Not Allowed`
  String get operationNotAllowed {
    return Intl.message(
      'Operation Not Allowed',
      name: 'operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `User Disabled`
  String get userDisabled {
    return Intl.message(
      'User Disabled',
      name: 'userDisabled',
      desc: '',
      args: [],
    );
  }

  /// `User Not Found`
  String get userNotFound {
    return Intl.message(
      'User Not Found',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong Password`
  String get wrongPassword {
    return Intl.message(
      'Wrong Password',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Auth Error`
  String get authError {
    return Intl.message('Auth Error', name: 'authError', desc: '', args: []);
  }

  /// `Mobile Number`
  String get phone {
    return Intl.message('Mobile Number', name: 'phone', desc: '', args: []);
  }

  /// `Mobile Number Hint`
  String get phoneHint {
    return Intl.message(
      'Mobile Number Hint',
      name: 'phoneHint',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Mobile Number`
  String get phoneError {
    return Intl.message(
      'Invalid Mobile Number',
      name: 'phoneError',
      desc: '',
      args: [],
    );
  }

  /// `Search Country`
  String get searchCountry {
    return Intl.message(
      'Search Country',
      name: 'searchCountry',
      desc: '',
      args: [],
    );
  }

  /// `Email Empty`
  String get emailErrorEmpty {
    return Intl.message(
      'Email Empty',
      name: 'emailErrorEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Email Not Valid`
  String get emailNotValid {
    return Intl.message(
      'Email Not Valid',
      name: 'emailNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Password Empty`
  String get passwordErrorEmpty {
    return Intl.message(
      'Password Empty',
      name: 'passwordErrorEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password Hint`
  String get forgotPasswordHint {
    return Intl.message(
      'Reset Password Hint',
      name: 'forgotPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an email address`
  String get enterEmail {
    return Intl.message(
      'Please enter an email address',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send you a message to set or reset your new password`
  String get rPSMessage {
    return Intl.message(
      'Send you a message to set or reset your new password',
      name: 'rPSMessage',
      desc: '',
      args: [],
    );
  }

  /// `refresh`
  String get refresh {
    return Intl.message('refresh', name: 'refresh', desc: '', args: []);
  }

  /// `OTP Verified Successfully!`
  String get otpSuccessMessage {
    return Intl.message(
      'OTP Verified Successfully!',
      name: 'otpSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification Failed!`
  String get otpErrorMessage {
    return Intl.message(
      'OTP Verification Failed!',
      name: 'otpErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get emailRequired {
    return Intl.message(
      'Email is required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `The part before @ must be at least 6 characters long`
  String get emailMinLength {
    return Intl.message(
      'The part before @ must be at least 6 characters long',
      name: 'emailMinLength',
      desc: '',
      args: [],
    );
  }

  /// `Email must end with @gmail.com`
  String get emailMustEndGmail {
    return Intl.message(
      'Email must end with @gmail.com',
      name: 'emailMustEndGmail',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get emailInvalidFormat {
    return Intl.message(
      'Invalid email format',
      name: 'emailInvalidFormat',
      desc: '',
      args: [],
    );
  }

  /// `ID is required.`
  String get idRequired {
    return Intl.message(
      'ID is required.',
      name: 'idRequired',
      desc: '',
      args: [],
    );
  }

  /// `ID must be exactly 14 digits long and contain only numbers.`
  String get idInvalid {
    return Intl.message(
      'ID must be exactly 14 digits long and contain only numbers.',
      name: 'idInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is required.`
  String get phoneRequired {
    return Intl.message(
      'Phone number is required.',
      name: 'phoneRequired',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must start with '01' followed by 0, 1, 2, or 5.`
  String get phoneInvalidStart {
    return Intl.message(
      'Phone number must start with \'01\' followed by 0, 1, 2, or 5.',
      name: 'phoneInvalidStart',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must be exactly 11 digits long.`
  String get phoneInvalidLength {
    return Intl.message(
      'Phone number must be exactly 11 digits long.',
      name: 'phoneInvalidLength',
      desc: '',
      args: [],
    );
  }

  /// `Phone number can only contain numbers.`
  String get phoneInvalidFormat {
    return Intl.message(
      'Phone number can only contain numbers.',
      name: 'phoneInvalidFormat',
      desc: '',
      args: [],
    );
  }

  /// `Username is required.`
  String get usernameRequired {
    return Intl.message(
      'Username is required.',
      name: 'usernameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Username must be at least 3 characters long.`
  String get usernameMinLength {
    return Intl.message(
      'Username must be at least 3 characters long.',
      name: 'usernameMinLength',
      desc: '',
      args: [],
    );
  }

  /// `Username must start with a letter.`
  String get usernameMustStartWithLetter {
    return Intl.message(
      'Username must start with a letter.',
      name: 'usernameMustStartWithLetter',
      desc: '',
      args: [],
    );
  }

  /// `Username must contain at least 3 letters.`
  String get usernameMustContainAtLeast3Letters {
    return Intl.message(
      'Username must contain at least 3 letters.',
      name: 'usernameMustContainAtLeast3Letters',
      desc: '',
      args: [],
    );
  }

  /// `Username can only contain letters and numbers.`
  String get usernameInvalidFormat {
    return Intl.message(
      'Username can only contain letters and numbers.',
      name: 'usernameInvalidFormat',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long.`
  String get passwordAtLeast8Char {
    return Intl.message(
      'Password must be at least 8 characters long.',
      name: 'passwordAtLeast8Char',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter.`
  String get passwordAtLeast1Uppercase {
    return Intl.message(
      'Password must contain at least one uppercase letter.',
      name: 'passwordAtLeast1Uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one lowercase letter.`
  String get passwordAtLeast1Lowercase {
    return Intl.message(
      'Password must contain at least one lowercase letter.',
      name: 'passwordAtLeast1Lowercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one number.`
  String get passwordAtLeast1Number {
    return Intl.message(
      'Password must contain at least one number.',
      name: 'passwordAtLeast1Number',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one special character.`
  String get passwordAtLeast1SpecialChar {
    return Intl.message(
      'Password must contain at least one special character.',
      name: 'passwordAtLeast1SpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `Password and confirm password must be the same.`
  String get passwordNotTheSame {
    return Intl.message(
      'Password and confirm password must be the same.',
      name: 'passwordNotTheSame',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get emailError {
    return Intl.message(
      'Please enter a valid email address',
      name: 'emailError',
      desc: '',
      args: [],
    );
  }

  /// `This field is required.`
  String get fieldRequired {
    return Intl.message(
      'This field is required.',
      name: 'fieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid name (letters and spaces only).`
  String get nameError {
    return Intl.message(
      'Please enter a valid name (letters and spaces only).',
      name: 'nameError',
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
