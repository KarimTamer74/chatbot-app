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
            padding: EdgeInsets.only(
              top: 8,
              bottom: 8,
              right: screenWidth * 0.05, // Responsive padding
            ),
            minimumSize: const Size(double.infinity, 20),
            maximumSize: const Size(double.infinity, 55),
            backgroundColor: const Color(0xff242125),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.05),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.all(screenWidth * 0.02), // Responsive padding
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
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
                  style: Styles.textStyle22.copyWith(
                    fontSize: screenWidth * 0.05, // Responsive text size
                  ),
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
