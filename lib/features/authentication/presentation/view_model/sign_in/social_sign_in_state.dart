part of 'social_sign_in_cubit.dart';

sealed class SignInWithSocialState {}

final class SignInWithSocialInitialState extends SignInWithSocialState {}

final class SignInWithSocialLoadingState extends SignInWithSocialState {
  final bool isSignInWithGoogle;
  SignInWithSocialLoadingState({required this.isSignInWithGoogle});
}

final class SignInWithSocialSuccessState extends SignInWithSocialState {
  final bool isSignInWithGoogle;
  SignInWithSocialSuccessState({required this.isSignInWithGoogle});
}

final class SignInWithSocialFailureState extends SignInWithSocialState {
  final String errorMessage;
  final bool isSignInWithGoogle;
  SignInWithSocialFailureState({required this.errorMessage, required this.isSignInWithGoogle});
}
