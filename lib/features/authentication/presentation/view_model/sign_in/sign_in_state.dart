

sealed class SignInState {}

final class SignInInitialState extends SignInState {}

final class SignInSuccessState extends SignInState {}

final class SignInLoadingState extends SignInState {}

final class SignInFailureState extends SignInState {
  final String errorMessage;

  SignInFailureState({required this.errorMessage});
}
