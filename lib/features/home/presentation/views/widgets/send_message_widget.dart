import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendMessageWidget extends StatefulWidget {
  const SendMessageWidget({
    super.key,
    required this.onSend,
    required this.botController,
  });
  final TextEditingController botController;

  final Future<void> Function() onSend;

  @override
  State<SendMessageWidget> createState() => _SendMessageWidgetState();
}

class _SendMessageWidgetState extends State<SendMessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            style: Styles.textStyle18,
            controller: widget.botController,
            decoration: InputDecoration(
              labelText: S.of(context).askGemini,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.kBlueColor),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.kButtonColor),
                borderRadius: BorderRadius.circular(25),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.kButtonColor),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        IconButton(
          onPressed: () async {
            await widget.onSend();
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.kBlueColor),
            foregroundColor: WidgetStateProperty.all(AppColors.kWhiteColor),
          ),
          icon: Icon(
            Icons.send,
            size: 28.sp,
          ),
        ),
      ],
    );
  }
}
