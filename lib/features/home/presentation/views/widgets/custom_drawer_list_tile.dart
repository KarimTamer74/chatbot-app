import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerListTile extends StatelessWidget {
  const CustomDrawerListTile(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: ListTile(
            leading: Icon(
              icon,
              size: 28.sp,
            ),
            title: Text(title),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
