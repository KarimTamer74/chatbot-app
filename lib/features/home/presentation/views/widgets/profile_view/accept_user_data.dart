import 'package:chatbot_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../authentication/presentation/views/widgets/custom_text_form_field.dart';

class AcceptUserData extends StatelessWidget {
  const AcceptUserData(
      {super.key, required this.firstName, required this.lastName});
  final TextEditingController firstName, lastName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
            labelText: S.of(context).firstName,
            hintText: S.of(context).enterYourFirstName,
            controller: firstName),
        SizedBox(height: 14.h),
        CustomTextFormField(
            labelText: S.of(context).lastName,
            hintText: S.of(context).enterYourLastName,
            controller: lastName),
      ],
    );
  }
}
