import 'package:chatbot_app/features/home/presentation/views/home_view.dart';
import 'package:chatbot_app/features/home/presentation/views/profile_view.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/settings_view.dart';
import 'package:flutter/material.dart';

List<StatelessWidget> getBottomNavBarBody() {
  return [
    /// * Settings page
    const SettingsView(),

    ///* Home page
    const HomeView(),

    //* Pofile page
    const ProfileView(),
  ];
}
// Notifications page
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Column(
          //     children: <Widget>[
          //       Card(
          //         child: ListTile(
          //           leading: Icon(Icons.notifications_sharp),
          //           title: Text('Notification 1'),
          //           subtitle: Text('This is a notification'),
          //         ),
          //       ),
          //       Card(
          //         child: ListTile(
          //           leading: Icon(Icons.notifications_sharp),
          //           title: Text('Notification 2'),
          //           subtitle: Text('This is a notification'),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),