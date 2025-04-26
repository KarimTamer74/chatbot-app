import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:chatbot_app/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      required this.hintText,
      this.iconData,
      required this.controller,
      this.isValidatePass,
      this.isValidateEmail});
  final String labelText;
  final String hintText;
  final IconData? iconData;
  final TextEditingController controller;
  final bool? isValidatePass, isValidateEmail;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isShowText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: Styles.textStyle16,
        controller: widget.controller,
        validator: (value) {
          if (widget.isValidateEmail == true) {
            return Validator.validateEmail(value!, context);
          }
          if (widget.isValidatePass == true) {
            return Validator.validatePassword(value!, context);
          }

          if (value!.isEmpty) {
            return S.of(context).fieldRequired;
          }
          return null;
        },
        obscureText: !isShowText ? true : false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            labelText: widget.labelText,
            hintText: widget.hintText,
            prefixIcon: Icon(widget.iconData),
            suffixIcon: (widget.labelText == S.of(context).password ||
                    widget.labelText == S.of(context).confirmPassword)
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: isShowText
                          ? const Icon(
                              Icons.visibility,
                            )
                          : const Icon(
                              Icons.visibility_off,
                            ),
                      onPressed: () {
                        setState(() {
                          isShowText = !isShowText;
                        });
                      },
                      iconSize: 28.sp,
                    ),
                  )
                : null));
  }
}
