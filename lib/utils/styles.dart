import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static const textStyle14 = TextStyle(fontSize: 14);
  static const textStyle22 = TextStyle(fontSize: 22);
  static const textStyle20 = TextStyle(fontSize: 20); // regular font weight

  static TextStyle textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  ); //medium font weight

  static TextStyle textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  ); // medium font weight
  static TextStyle greyTextStyle16 = TextStyle(
    color: Colors.grey,
    fontSize: 16.sp,
  );
  static TextStyle greyTextStyle18 = TextStyle(
    color: Colors.grey,
    fontSize: 18.sp,
  ); static TextStyle whiteTextStyle18 = TextStyle(
    color: Colors.white,
    fontSize: 18.sp,
  ); // regular font weight
  static TextStyle whiteTextStyle24 = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.bold); // regular font weight
}
