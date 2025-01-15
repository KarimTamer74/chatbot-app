import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
     this.iconData,
    required this.controller,
  });
  final String labelText;
  final String hintText;
  final IconData? iconData;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.textStyle16,
      controller: widget.controller,
      validator: (value) {
        if ((value == null || value.isEmpty)) {
          return S.of(context).thisFieldRequired;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: Icon(widget.iconData),
      ),
    );
  }
}
