import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/styles.dart';

class AuthOptionButton extends StatelessWidget {
  const AuthOptionButton({
    super.key,
    required this.image,
    required this.text,
    this.onPressed,
  });

  final String image;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: AppColors.kBlueColor.withOpacity(.35),
        ),
        child: Row(
          children: [
            SizedBox(width: 15.w),
            Padding(
              padding: EdgeInsets.fromLTRB(8.sp, 8.sp, 0, 8.sp),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Spacer(),
            FittedBox(
              child: Text(
                text,
                style: Styles.textStyle22,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
