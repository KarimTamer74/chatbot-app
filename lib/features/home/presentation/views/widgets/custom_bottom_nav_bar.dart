import 'package:chatbot_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, required this.returnIndex});
  final Function(int currentIndex) returnIndex;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

int currentIndex = 0;

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      animationDuration: const Duration(seconds: 2),
      onDestinationSelected: (value) {
        setState(() {
          currentIndex = value;
          widget.returnIndex(value);
        });
      },
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.settings_outlined),
          label: S.of(context).settings,
          selectedIcon: const Icon(Icons.settings),
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.home),
          icon: const Icon(Icons.home_outlined),
          label: S.of(context).home,
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.person),
          icon: const Icon(Icons.person_outlined),
          label: S.of(context).profile,
        ),
       
      ],
    );
  }
}
