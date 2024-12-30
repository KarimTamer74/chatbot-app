import 'package:chatbot_app/features/home/presentation/views/widgets/bot_view_body.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';

class BotView extends StatefulWidget {
  const BotView({super.key});

  @override
  State<BotView> createState() => _BotViewState();
}

class _BotViewState extends State<BotView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: appPadding,
          child: BotViewBody(),
        ),
      ),
    );
  }
}
