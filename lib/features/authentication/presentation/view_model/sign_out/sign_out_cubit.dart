import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_out_state.dart';

class SignOutCubit extends Cubit<SignOutState> {
  SignOutCubit() : super(SignOutInitialState());
  Future<void> userSignOut() async {
    emit(SignOutLoadingState());
    try {
      await FirebaseAuth.instance.signOut();
      log("Sign out successfully");
      emit(SignOutSuccessState());
    } catch (e) {
      emit(SignOutFailureState(errorMessage: e.toString()));
    }
  }
}
