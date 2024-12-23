import 'package:chatbot_app/features/authentication/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_up_build_widgets.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/common_widgets/show_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpSuccessState) {
            showSnackBar(context, 'Account created successfully✔️.');
            Navigator.pushNamed(context, signInView);
          } else if (state is SignUpFailureState) {
            showSnackBar(context, state.errorMessage);
          } else if (state is SignUpLoadingState) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        builder: (context, state) {
          return const SignUpBuildWidgets();
        },
      ),
    );
  }
}
