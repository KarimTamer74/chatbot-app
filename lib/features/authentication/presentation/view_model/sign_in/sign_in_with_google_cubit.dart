import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'sign_in_with_google_state.dart';

class SignInWithGoogleCubit extends Cubit<SignInWithGoogleState> {
  SignInWithGoogleCubit() : super(SignInWithGoogleInitialState());

  Future<void> signInWithGoogle() async {
    emit(SignInWithGoogleLoadingState());
    try {
      await _loginWithGoogleSuccessfuly();
      emit(SignInWithGoogleSuccessState());
    } catch (e) {
      emit(
        SignInWithGoogleFailureState(errorMessage: e.toString()),
      );
    }
  }

  Future<UserCredential> _loginWithGoogleSuccessfuly() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
