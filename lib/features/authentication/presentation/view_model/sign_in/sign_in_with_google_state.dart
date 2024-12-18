part of 'sign_in_with_google_cubit.dart';

sealed class SignInWithGoogleState {}

final class SignInWithGoogleInitialState extends SignInWithGoogleState {}
final class SignInWithGoogleLoadingState extends SignInWithGoogleState {}
final class SignInWithGoogleSuccessState extends SignInWithGoogleState {}
final class SignInWithGoogleFailureState extends SignInWithGoogleState {
  final String errorMessage;

  SignInWithGoogleFailureState({required this.errorMessage});
}
