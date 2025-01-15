import 'package:chatbot_app/features/authentication/presentation/views/widgets/sign_in_build_widgets.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    String extractBeforeAt(String email) {
      RegExp regex = RegExp(r"^[^@]+");
      Match? match = regex.firstMatch(email);
      return match != null ? match.group(0)! : '';
    }

    final String userName = extractBeforeAt(email??"any");

    return Container(
      decoration: BoxDecoration(
          color: AppColors.kdarkGreyColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.asset(AppAssets.userImage),
        title:  Text(userName),
        titleTextStyle: Styles.textStyle18,
        subtitle: Text(email ?? "usernewwwwwwwwwww"),
        subtitleTextStyle: Styles.greyTextStyle16,
      ),
    );
  }
}
