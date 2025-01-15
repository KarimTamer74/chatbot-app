import 'package:chatbot_app/features/authentication/presentation/view_model/sign_out/sign_out_cubit.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_drawer_list_tile.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/drawer_body_widgets.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/user_info_list_tile.dart';
import 'package:chatbot_app/utils/common_widgets/select_language_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDrawerListTile(
          title: "",
          icon: Icons.arrow_back,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const UserInfoListTile(),
        SizedBox(
          height: 5.h,
        ),
        const Divider(),
        SizedBox(
          height: 20.h,
        ),
        const SelectLanguageWidget(),
        SizedBox(
          height: 15.h,
        ),
         Expanded(
          child: BlocProvider(
            create: (context) => SignOutCubit(),
            child: const DrawerBodyWidgets(),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
