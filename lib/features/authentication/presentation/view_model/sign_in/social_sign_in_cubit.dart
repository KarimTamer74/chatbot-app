import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'social_sign_in_state.dart';

class SignInWithSocialCubit extends Cubit<SignInWithSocialState> {
  SignInWithSocialCubit() : super(SignInWithSocialInitialState());

  Future<void> signInWithGoogle() async {
    emit(SignInWithSocialLoadingState());
    try {
      await _loginWithGoogleSuccessfuly();
      emit(SignInWithSocialSuccessState());
    } catch (e) {
      emit(
        SignInWithSocialFailureState(errorMessage: e.toString()),
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

  Future<void> signInWithFacebook() async {
    emit(SignInWithSocialLoadingState());
    try {
      await _signInWithFacebookSuccessfully();
      emit(SignInWithSocialSuccessState());
    } catch (e) {
      emit(SignInWithSocialFailureState(errorMessage: e.toString()));
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
