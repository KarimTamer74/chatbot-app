import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

ThemeData getLightTheme() {
  return ThemeData(
    primaryColorDark: AppColors.kPrimaryColor,
    scaffoldBackgroundColor: AppColors.kWhiteColor,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.kBlackColor, brightness: Brightness.light),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle:
          Styles.textStyle18.copyWith(color: AppColors.kWhiteColor),
      backgroundColor: AppColors.kBlackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      behavior: SnackBarBehavior.floating,
      width: 200,
      insetPadding: const EdgeInsets.all(8.0),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.kBlackColor),
      bodyMedium: TextStyle(color: AppColors.kBlackColor),
      bodySmall: TextStyle(color: AppColors.kBlackColor),
      headlineLarge: TextStyle(color: AppColors.kBlackColor),
      headlineMedium: TextStyle(color: AppColors.kBlackColor),
      headlineSmall: TextStyle(color: AppColors.kBlackColor),
      titleLarge: TextStyle(color: AppColors.kBlackColor),
      titleMedium: TextStyle(color: AppColors.kBlackColor),
      titleSmall: TextStyle(color: AppColors.kBlackColor),
      labelLarge: TextStyle(color: AppColors.kBlackColor),
      labelMedium: TextStyle(color: AppColors.kBlackColor),
      labelSmall: TextStyle(color: AppColors.kBlackColor),
      displayLarge: TextStyle(color: AppColors.kBlackColor),
      displayMedium: TextStyle(color: AppColors.kBlackColor),
      displaySmall: TextStyle(color: AppColors.kBlackColor),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.kBlackColor,
    ),
    textButtonTheme: TextButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kWhiteColor,
            foregroundColor: AppColors.kBlackColor)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kButtonColor.withOpacity(.8),
        minimumSize: const Size(double.infinity, 50),
        maximumSize: const Size(double.infinity, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.kButtonColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.kBlueColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.kBlueColor),
        ),
        hintStyle: Styles.greyTextStyle16,
        prefixIconColor: AppColors.kBlueColor,
        labelStyle: Styles.textStyle16),
  );
}
