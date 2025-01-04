import 'package:chatbot_app/features/home/presentation/views/widgets/custom_drawer_list_view.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).chatbotApp),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 10.sp),
            child: const CustomDrawerListView(),
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
