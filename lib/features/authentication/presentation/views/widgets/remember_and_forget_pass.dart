import 'package:chatbot_app/features/authentication/presentation/view_model/reset_password/cubit/reset_password_cubit.dart';
import 'package:chatbot_app/features/authentication/presentation/views/reset_password.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/common_widgets/cutom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberAndForgetPass extends StatefulWidget {
  const RememberAndForgetPass({super.key});

  @override
  State<RememberAndForgetPass> createState() => _RememberAndForgetPassState();
}

bool isPressed = false;

class _RememberAndForgetPassState extends State<RememberAndForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
          icon: isPressed
              ? const Icon(Icons.check_box)
              : Icon(
                  Icons.rectangle,
                  color: Colors.grey,
                  size: 22.sp,
                ),
        ),
        CustomTextButton(
          text: S.of(context).rememberMe,
          onPressed: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
        ),
        const Spacer(),
        CustomTextButton(
          text: S.of(context).forgotPassword,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider(
                          create: (context) => ResetPasswordCubit(),
                          child: const ResetPasswordScreen(),
                        )));
          },
        )
      ],
    );
  }
}
