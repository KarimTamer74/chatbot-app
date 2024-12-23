import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/theme/app_theming_cubit/app_theme_cubit.dart';
import 'package:chatbot_app/utils/theme/extentaions/app_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        backgroundColor: !context.isDarkMode
            ? AppColors.kWhiteColor
            : AppColors.kBlackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: BorderSide(
          color: context.isDarkMode
              ? AppColors.kWhiteColor
              : AppColors.kBlackColor,
          width: 3,
        ),
        minimumSize: const Size(100, 40),
        maximumSize: const Size(100, 40),
      ),
      child: context.isDarkMode
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Icon(
                  Icons.dark_mode_outlined,
                  size: 30,
                  color: context.isDarkMode
                      ? AppColors.kWhiteColor
                      : AppColors.kBlackColor,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.light_mode_outlined,
                  size: 30,
                  color: context.isDarkMode
                      ? AppColors.kWhiteColor
                      : AppColors.kBlackColor,
                ),
                const SizedBox(),
              ],
            ),
    );
  }
}
