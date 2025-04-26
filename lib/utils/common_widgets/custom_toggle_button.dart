import 'dart:developer';

import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({super.key, required this.userGender});
  final Function(String userGender) userGender;

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

String _selectedGender = AppConstants.male;

class _CustomToggleButtonState extends State<CustomToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        isSelected: [
          _selectedGender == AppConstants.male,
          _selectedGender == AppConstants.female
        ],
        onPressed: (index) {
          setState(
            () {
              if (index == 0) {
                _selectedGender = AppConstants.male;
                widget.userGender(_selectedGender);
              } else {
                _selectedGender = AppConstants.female;
                widget.userGender(_selectedGender);
              }
            },
          );
          log("selected gender: $_selectedGender");
        },
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              S.of(context).male,
              style: Styles.textStyle18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              S.of(context).female,
              style: Styles.textStyle18,
            ),
          ),
        ],
      ),
    );
  }
}
