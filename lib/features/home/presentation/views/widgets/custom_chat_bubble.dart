import 'package:chatbot_app/features/home/data/models/message_model.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:chatbot_app/utils/theme/extentaions/app_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomChatBubble extends StatelessWidget {
  const CustomChatBubble({
    super.key,
    required this.messageModel,
  });

  final MessageModel messageModel;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          messageModel.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(top: 12.sp),
        padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 8.sp),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        decoration: BoxDecoration(
          color: messageModel.isUser
              ? context.isDarkMode
                  ? AppColors.kdarkBlueColor
                  : AppColors.kLightBlue
              : context.isDarkMode
                  ? AppColors.kdarkGreyColor
                  : AppColors.kGreyColor,
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(16),
            topLeft: const Radius.circular(16),
            bottomRight: messageModel.isUser
                ? const Radius.circular(0)
                : const Radius.circular(16),
            bottomLeft: messageModel.isUser
                ? const Radius.circular(16)
                : const Radius.circular(0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              messageModel.message,
              style: Styles.textStyle20,
            ),
            SizedBox(height: 5.h),
            Text(
              DateFormat('h:mm a')
                  .format(messageModel.createdAt), // This formats to 4:00 PM
              style: Styles.textStyle16,
            )
          ],
        ),
      ),
    );
  }
}
