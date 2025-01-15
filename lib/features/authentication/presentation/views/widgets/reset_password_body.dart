import 'package:chatbot_app/features/authentication/presentation/view_model/reset_password/cubit/reset_password_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/reset_password.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/reset_pass_text_field.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/reset_password_button.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({super.key});

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  final emailControllerToResetPass = TextEditingController();
  @override
  void dispose() {
    emailControllerToResetPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.close),
          ),
          SizedBox(height: 70.h),
          Text(S.of(context).forgotPassword, style: Styles.textStyleBold32),
          SizedBox(height: 10.h),
          Text(S.of(context).pleaseEnterYourEmailToRecoverYourPassword,
              style: Styles.textStyle15.copyWith(color: AppColors.kGreyColor)),
          SizedBox(height: 40.h),
          Text(S.of(context).emailAddress, style: Styles.textStyleBold15),
          SizedBox(height: 10.h),
          ResetPasswordTextField(
              emailControllerToResetPass: emailControllerToResetPass),
          const SizedBox(height: 16),
          InkWell(
            onTap: () async {
              if (key.currentState!.validate()) {
                BlocProvider.of<ResetPasswordCubit>(context).resetPassword(
                    email: emailControllerToResetPass.text.trim());
              }
            },
            child: const ResetPasswordButton(),
          ),
        ],
      ),
    );
  }
}
