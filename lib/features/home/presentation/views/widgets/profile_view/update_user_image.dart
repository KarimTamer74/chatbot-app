import 'dart:io';

import 'package:chatbot_app/features/home/data/models/supabase_services.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateUserImage extends StatefulWidget {
  const UpdateUserImage({
    super.key,
    required this.image,
  });
  final Function(File? userImage) image;
  @override
  State<UpdateUserImage> createState() => _UpdateUserImageState();
}

File? userImage;

class _UpdateUserImageState extends State<UpdateUserImage> {
  SupabaseService supabaseService = SupabaseService();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 60.r,
            backgroundColor: AppColors.kGreyColor300,
            backgroundImage: userImage != null ? FileImage(userImage!) : null,
            child: userImage == null
                ? Icon(Icons.person, size: 56.sp, color: AppColors.kWhiteColor)
                : null,
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: InkWell(
              onTap: () async {
                File? imageFile = await supabaseService.pickImage();
                supabaseService.uploadImage(imageFile!);
              },
              child: CircleAvatar(
                radius: 18.r,
                backgroundColor: AppColors.kIndigoShade700,
                child: Icon(Icons.add, color: AppColors.kWhiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
