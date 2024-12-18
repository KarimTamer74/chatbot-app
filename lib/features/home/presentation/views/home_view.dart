import 'package:chatbot_app/features/authentication/presentation/view_model/sign_out/sign_out_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignOutCubit(),
      child: const HomeViewBody(),
    );
  }
}
