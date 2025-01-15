import 'dart:developer';

import 'package:chatbot_app/features/authentication/data/models/reset_password_model.dart';
import 'package:chatbot_app/features/authentication/presentation/views/reset_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(ResetPasswordInitialState());
  String generateErrorMessage(error) {
    String errorMessage;
    switch (error) {
      case AuthStatus.invalidEmail:
        errorMessage = "Your email address appears to be malformed.";
        break;
      case AuthStatus.weakPassword:
        errorMessage = "Your password should be at least 6 characters.";
        break;
      case AuthStatus.wrongPassword:
        errorMessage = "Your email or password is wrong.";
        break;
      case AuthStatus.emailAlreadyExists:
        errorMessage =
            "The email address is already in use by another account.";
        break;
      default:
        errorMessage = "An error occured. Please try again later.";
    }
    return errorMessage;
  }

  Future<void> resetPassword({required String email}) async {
    emit(ResetPasswordLoadingState());
    AuthStatus status;
    final auth = FirebaseAuth.instance;
    await auth.sendPasswordResetEmail(email: email).then((value) {
      status = AuthStatus.successful;
      log('Password reset email sent successfully');
      log("in cubit ${status.toString()}");
      emit(ResetPasswordSuccessState());
    }).catchError((e) {
      status = AuthExceptionHandler.handleAuthException(e);
      String errorMessage = generateErrorMessage(status.toString());
      log("in cubit $errorMessage");
      emit(ResetPasswordFailureState(errorMessage));
    });
  }
}
