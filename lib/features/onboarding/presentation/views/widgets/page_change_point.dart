import 'onboarding_view_body.dart';
import 'package:flutter/material.dart';

class PageChangePoints extends StatelessWidget {
  const PageChangePoints({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => GestureDetector(
          onTap: () {
            if (index != currentIndex) {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.ease);
            }
          },
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            width: currentIndex == index ? 25 : 12,
            height: 10,
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? const Color(0xff76F3F7)
                  : Colors.grey.shade700,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
