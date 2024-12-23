import 'package:chatbot_app/features/authentication/presentation/views/widgets/auth_option_button.dart';
import 'package:chatbot_app/features/authentication/presentation/views/widgets/login_divider_widget.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        AuthOptionButton(
            image: AppAssets.googleAvatar,
            text: S.of(context).continueWithGoogle),
        SizedBox(
          height: 15.h,
        ),
        AuthOptionButton(
            image: AppAssets.phoneAvatar,
            text: S.of(context).continueWithPhone),
      ],
    );
  }
}
