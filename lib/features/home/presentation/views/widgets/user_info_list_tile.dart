import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfoListTile extends StatefulWidget {
  const UserInfoListTile({super.key});

  @override
  State<UserInfoListTile> createState() => _UserInfoListTileState();
}

class _UserInfoListTileState extends State<UserInfoListTile> {
  @override
  Widget build(BuildContext context) {
    String userName = "";
    String getUserEmail() {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) return 'yyyyyy';
      return user.email!;
    }

    return Container(
      decoration: BoxDecoration(
          color: AppColors.kdarkGreyColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.all(2.0.sp),
          child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.circular(25.r),
              child: Image.asset(AppAssets.userImage)),
        ),
        title: Text(userName),
        titleTextStyle: Styles.textStyle18,
        subtitle: Text(getUserEmail()),
        subtitleTextStyle: Styles.greyTextStyle16,
      ),
    );
  }
}
