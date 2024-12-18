import 'package:chatbot_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.iconData,
      this.onChanged});
  final String labelText;
  final String hintText;
  final IconData iconData;
  final Function(String)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      validator: (value) {
        if ((value == null || value.isEmpty)) {
          return 'This field is required.';
        }
        return null; // Return null if the input is valid
      },
      decoration: InputDecoration(
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
        labelText: widget.labelText,
        labelStyle: Styles.textStyle16.copyWith(
          color: AppColors.kWhiteColor,
        ),
        hintStyle: Styles.greyTextStyle16,
        hintText: widget.hintText,
        prefixIconColor: AppColors.kBlueColor,
        prefixIcon: Icon(widget.iconData),
      ),
    );
  }
}
