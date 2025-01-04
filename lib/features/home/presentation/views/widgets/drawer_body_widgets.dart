import 'package:chatbot_app/features/home/presentation/views/widgets/custom_drawer_list_tile.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/common_widgets/change_theme_widget.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';

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
          Navigator.pushNamed(context, profileView);
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
          Navigator.pushNamed(context, aboutApp);
        },
      ),
      CustomDrawerListTile(
        title: S.of(context).helpSupport,
        icon: Icons.help,
      ),
      CustomDrawerListTile(
        title: S.of(context).signOut,
        icon: Icons.logout,
      ),
    ];

    return ListView.builder(
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
    );
  }
}
