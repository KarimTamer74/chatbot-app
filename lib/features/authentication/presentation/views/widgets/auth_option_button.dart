import 'package:chatbot_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/styles.dart';

class AuthOptionButton extends StatelessWidget {
  const AuthOptionButton({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kGreyColor.withOpacity(.3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.all(screenWidth * 0.02), // Responsive padding
                  decoration: BoxDecoration(
                    color: AppColors.kGreyColor.withOpacity(.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      image,
                      // Responsive image scaling
                    ),
                  ),
                ),
              ),
              const Spacer(),
              FittedBox(
                child: Text(
                  text,
                  style: Styles.textStyle22
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
