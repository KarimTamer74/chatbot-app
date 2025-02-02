import 'package:chatbot_app/features/authentication/presentation/view_model/sign_out/sign_out_cubit.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_drawer_list_tile.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/common_widgets/change_theme_widget.dart';
import 'package:chatbot_app/utils/common_widgets/show_alert_widget.dart';
import 'package:chatbot_app/utils/common_widgets/show_snackbar_widget.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerBodyWidgets extends StatelessWidget {
  const DrawerBodyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomDrawerListTile> listTileComponents = [
      CustomDrawerListTile(
        title: S.of(context).recentChats,
        icon: Icons.chat,
      ),
      CustomDrawerListTile(
        title: S.of(context).profile,
        icon: Icons.person,
        onTap: () {
          Navigator.pushNamed(context, AppConstants.profileView);
        },
      ),
      CustomDrawerListTile(
        title: S.of(context).theme,
        icon: Icons.brightness_4,
      ),
      CustomDrawerListTile(
        title: S.of(context).aboutApp,
        icon: Icons.info,
        onTap: () {
          Navigator.pushNamed(context, AppConstants.aboutApp);
        },
      ),
      CustomDrawerListTile(
        title: S.of(context).helpSupport,
        icon: Icons.help,
      ),
    ];
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: ListView.builder(
            itemCount: listTileComponents.length,
            itemBuilder: (context, index) {
              return index == 2
                  ? Row(
                      children: [
                        Expanded(child: listTileComponents[index]),
                        const CustomChangeThemeWidget()
                      ],
                    )
                  : listTileComponents[index];
            },
          ),
        ),
        Expanded(
          child: BlocListener<SignOutCubit, SignOutState>(
            listener: (context, state) {
              if (state is SignOutSuccessState) {
                signOutCompleted();
                Navigator.pushReplacementNamed(context, AppConstants.signInView);
              } else if (state is SignOutFailureState) {
                showSnackBar(context, state.errorMessage);
              } else if (state is SignOutLoadingState) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            child: CustomDrawerListTile(
              title: S.of(context).signOut,
              icon: Icons.logout,
              onTap: () {
                showDialogWidget(
                  context,
                  title: S.of(context).signOut,
                  bottonText: S.of(context).yes,
                  subTitle: S.of(context).areYouSureToSignOut,
                  onOkPressed: () {
                    BlocProvider.of<SignOutCubit>(context).userSignOut();
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
