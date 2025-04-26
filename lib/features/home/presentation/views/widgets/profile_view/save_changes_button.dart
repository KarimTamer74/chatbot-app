import 'package:chatbot_app/features/authentication/presentation/views/widgets/custom_elevated_button.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton(
      {super.key,
      required this.firstName,
      required this.lastName,
      this.onPressed});
  final String firstName, lastName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      buttonText: S.of(context).saveChanges,
      onPressed: onPressed,
      textStyle: Styles.whiteTextStyle20,
      buttonStyle: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kIndigoShade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
