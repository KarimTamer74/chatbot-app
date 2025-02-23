import 'dart:developer';

import 'package:chatbot_app/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'social_sign_in_state.dart';

class GoogleSignInAccountException implements Exception {
  final String message;
  GoogleSignInAccountException(this.message);
}

class SignInWithSocialCubit extends Cubit<SignInWithSocialState> {
  SignInWithSocialCubit() : super(SignInWithSocialInitialState());
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> signInWithGoogle(context) async {
    emit(SignInWithSocialLoadingState(
      isSignInWithGoogle: true,
    ));
    try {
      await googleSignIn.signOut();
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        log("User cancelled the sign-in.");
        throw GoogleSignInAccountException(S.of(context).googleSignInCancelled);
      }

      log("Selected Account Email: ${googleUser.email}");

      await _loginWithGoogleSuccessfully(googleUser, context);

      emit(SignInWithSocialSuccessState(
        isSignInWithGoogle: true,
      ));
    } on FirebaseAuthException catch (e) {
      log("Firebase Auth Error: ${e.message}");
      emit(SignInWithSocialFailureState(
        isSignInWithGoogle: true,
        errorMessage: _handleFirebaseAuthError(e, context),
      ));
    } on PlatformException {
      log("Platform Exception: ${S.of(context).networkError}");
      emit(SignInWithSocialFailureState(
        isSignInWithGoogle: true,
        errorMessage: S.of(context).networkError,
      ));
    } on GoogleSignInAccountException catch (e) {
      log("Google Sign-In Error: ${e.message}");
      emit(SignInWithSocialFailureState(
        isSignInWithGoogle: true,
        errorMessage: S.of(context).googleSignInCancelled,
      ));
    } on Exception catch (e) {
      log("Unexpected Error: ${e.toString()}");
      emit(SignInWithSocialFailureState(
        isSignInWithGoogle: true,
        errorMessage: "${S.of(context).unexpectedError} ${e.toString()}",
      ));
    }
  }

  Future<UserCredential> _loginWithGoogleSuccessfully(
      GoogleSignInAccount googleUser, context) async {
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    if (googleAuth.accessToken == null || googleAuth.idToken == null) {
      throw Exception(S.of(context).googleSignInFailed);
    }

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  String _handleFirebaseAuthError(FirebaseAuthException e, context) {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        return S.of(context).accountExistsWithDifferentCredential;
      case 'invalid-credential':
        return S.of(context).invalidCredential;
      case 'operation-not-allowed':
        return S.of(context).operationNotAllowed;
      case 'user-disabled':
        return S.of(context).userDisabled;
      case 'user-not-found':
        return S.of(context).userNotFound;
      case 'wrong-password':
        return S.of(context).wrongPassword;
      case 'network-request-failed':
        return S.of(context).networkError;
      default:
        return "${S.of(context).authError} ${e.message}";
    }
  }

  Future<void> signInWithFacebook() async {
    emit(SignInWithSocialLoadingState(isSignInWithGoogle: false));
    try {
      await _signInWithFacebookSuccessfully();
      emit(SignInWithSocialSuccessState(isSignInWithGoogle: false));
    } catch (e) {
      emit(SignInWithSocialFailureState(
          errorMessage: "error please try again", isSignInWithGoogle: false));
    }
  }

  Future<UserCredential> _signInWithFacebookSuccessfully() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
  }
}
