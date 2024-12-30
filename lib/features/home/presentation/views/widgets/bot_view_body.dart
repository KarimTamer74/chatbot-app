import 'package:chatbot_app/features/home/data/models/message_model.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_chat_bubble.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/send_message_widget.dart';
import 'package:chatbot_app/utils/app_assets.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class BotViewBody extends StatefulWidget {
  const BotViewBody({super.key});

  @override
  State<BotViewBody> createState() => _BotViewBodyState();
}

class _BotViewBodyState extends State<BotViewBody> {
  TextEditingController botController = TextEditingController();
  final scrollController = ScrollController();
  List<MessageModel> messages = [];
  @override
  void dispose() {
    botController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        messages.isEmpty
            ? Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.signInAsset),
                    SizedBox(height: 30.h),
                  ],
                ),
              )
            : Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return CustomChatBubble(
                      messageModel: messages[index],
                    );
                  },
                ),
              ),
        SizedBox(height: 20.h),
        SendMessageWidget(
          botController: botController,
          onSend: sendMessage,
        ),
      ],
    );
  }

  Future<void> sendMessage() async {
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: googleApiKey,
    );
    String message = addUserMessageInList();
    await addBotMessageInList(message, model);
  }

  Future<void> addBotMessageInList(
      String message, GenerativeModel model) async {
    final content = [Content.text(message)];
    final response = await model.generateContent(content);
    setState(() {
      messages.add(
        MessageModel(
          isUser: false,
          message: response.text ?? "",
          createdAt: DateTime.now(),
        ),
      );
    });
    scrollToBottom();
  }

  String addUserMessageInList() {
    final message = botController.text;
    botController.clear();
    setState(() {
      messages.add(
        MessageModel(
          isUser: true,
          message: message,
          createdAt: DateTime.now(),
        ),
      );
    });
    scrollToBottom();
    return message;
  }

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }
}
