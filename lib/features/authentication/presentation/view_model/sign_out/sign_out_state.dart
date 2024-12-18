part of 'sign_out_cubit.dart';

sealed class SignOutState {}

final class SignOutInitialState extends SignOutState {}

final class SignOutSuccessState extends SignOutState {}

final class SignOutLoadingState extends SignOutState {}

final class SignOutFailureState extends SignOutState {
  final String errorMessage;

  SignOutFailureState({required this.errorMessage});
}
