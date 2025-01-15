import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/sign_in_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitialState());
  final Logger _logger = Logger();
  Future<void> userSignIn(
      {required String email, required String password}) async {
    emit(SignInLoadingState());

    try {
      final auth = FirebaseAuth.instance;
      await auth.signInWithEmailAndPassword(email: email, password: password);
      _logger.i(
          "User signed in successfully with email: $email and password: $password");

      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(_handleFirebaseAuthError(e));
    } catch (e) {
      _logger.e("An unexpected error occurred: ${e.toString()}");
      emit(SignInFailureState(errorMessage: 'An unexpected error occurred.'));
    }
  }

  SignInFailureState _handleFirebaseAuthError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        _logger.w('No user found for that email.');
        return SignInFailureState(
            errorMessage: 'No user found for that email.');
      case 'wrong-password':
        _logger.w('Wrong password provided for that user.');
        return SignInFailureState(
            errorMessage: 'Wrong password provided for that user.');
      case 'invalid-email':
        _logger.w('invalid-email');
        return SignInFailureState(errorMessage: 'invalid-email.');
      default:
        _logger.e('Error code: ${e.code}');
        return SignInFailureState(errorMessage: '${e.code}.');
    }
  }
}
