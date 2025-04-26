import 'package:chatbot_app/features/home/presentation/views/widgets/bottom_nav_bar_body.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_drawer_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerListView(),
      bottomNavigationBar: CustomBottomNavBar(
        returnIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: getBottomNavBarBody()[currentIndex],
      ),
    );
  }
}
