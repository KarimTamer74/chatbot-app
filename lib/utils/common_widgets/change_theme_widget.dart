import 'package:chatbot_app/utils/theme/app_theming_cubit/app_theme_cubit.dart';
import 'package:chatbot_app/utils/theme/extentaions/app_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';

class CustomChangeThemeWidget extends StatefulWidget {
  const CustomChangeThemeWidget({super.key});

  @override
  State<CustomChangeThemeWidget> createState() =>
      _CustomChangeThemeWidgetState();
}

class _CustomChangeThemeWidgetState extends State<CustomChangeThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (context.isDarkMode) {
            context.read<AppThemeCubit>().changeTheme(ThemeMode.light);
          } else {
            context.read<AppThemeCubit>().changeTheme(ThemeMode.dark);
          }
        });
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        backgroundColor:
            !context.isDarkMode ? AppColors.kWhiteColor : AppColors.kBlackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.sp),
        ),
        side: BorderSide(
          color: context.isDarkMode
              ? AppColors.kWhiteColor
              : AppColors.kBlackColor,
          width: 3.w,
        ),
        minimumSize: Size(90.sp, 36.sp),
        maximumSize: Size(90.sp, 36.sp),
      ),
      child: context.isDarkMode
          ? Row(
              children: [
                const Spacer(),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Icon(
                    Icons.dark_mode_outlined,
                    color: context.isDarkMode
                        ? AppColors.kWhiteColor
                        : AppColors.kBlackColor,
                  ),
                ),
              ],
            )
          : Row(
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: Icon(
                    Icons.light_mode_outlined,
                    color: context.isDarkMode
                        ? AppColors.kWhiteColor
                        : AppColors.kBlackColor,
                  ),
                ),
                const Spacer(),
              ],
            ),
    );
  }
}
