import 'package:chatbot_app/features/authentication/presentation/view_model/sign_in/social_sign_in_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/auth_option_button.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/login_divider_widget.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/common_widgets/button_loading_indicator.dart';
import 'package:chatbot_app/utils/common_widgets/show_snackbar_widget.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:chatbot_app/utils/theme/extentaions/app_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class OtherLoginWays extends StatelessWidget {
  const OtherLoginWays({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginDividerWidget(),
        SizedBox(
          height: 20.h,
        ),
        BlocConsumer<SignInWithSocialCubit, SignInWithSocialState>(
          listener: (context, state) {
            if (state is SignInWithSocialSuccessState &&
                state.isSignInWithGoogle) {
              Logger().d("in google User signed in successfully.");
              showSnackBar(context, S.of(context).loginSuccessfully);
              signInCompleted();
              Navigator.pushNamed(context, homeView);
            }
            if (state is SignInWithSocialFailureState &&
                state.isSignInWithGoogle) {
              Logger().d(state.errorMessage);
              showSnackBar(context, state.errorMessage);
            }
          },
          builder: (context, state) {
            if (state is SignInWithSocialLoadingState &&
                state.isSignInWithGoogle) {
              return const ButtonLoadingIndicator();
            }
            return AuthOptionButton(
              image: AppAssets.googleAvatar,
              text: S.of(context).continueWithGoogle,
              onPressed: () {
                BlocProvider.of<SignInWithSocialCubit>(context)
                    .signInWithGoogle();
              },
            );
          },
        ),
        SizedBox(
          height: 15.h,
        ),
        BlocConsumer<SignInWithSocialCubit, SignInWithSocialState>(
          listener: (context, state) {
            if (state is SignInWithSocialSuccessState &&
                !state.isSignInWithGoogle) {
              Logger().d("in facebook User signed in successfully.");
              showSnackBar(context, S.of(context).loginSuccessfully);
              signInCompleted();
              Navigator.pushNamed(context, homeView);
            }
            if (state is SignInWithSocialFailureState &&
                !state.isSignInWithGoogle) {
              Logger().d(state.errorMessage);
              showSnackBar(context, state.errorMessage);
            }
          },
          builder: (context, state) {
            if (state is SignInWithSocialLoadingState &&
                !state.isSignInWithGoogle) {
              return const ButtonLoadingIndicator();
            }
            return AuthOptionButton(
              image: AppAssets.facebookAvatar,
              iconColor: context.isDarkMode
                  ? AppColors.kWhiteColor
                  : AppColors.kBlueColor,
              text: S.of(context).contiueWithFacebook,
              onPressed: () {
                BlocProvider.of<SignInWithSocialCubit>(context)
                    .signInWithFacebook();
              },
            );
          },
        ),
      ],
    );
  }
}
