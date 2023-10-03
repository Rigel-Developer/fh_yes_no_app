import 'package:fh_yes_no_app/domain/entities/message.dart';
import 'package:fh_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:fh_yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:fh_yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:fh_yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            "https://images.pexels.com/photos/7577503/pexels-photo-7577503.jpeg?auto=compress&cs=tinysrgb&w=600",
          ),
        ),
        title: const Text('Amor de mi vida ❤️‍🔥'),
        // centerTitle: true,
        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: const _ChatView(),
      // body: Image.network(
      //   "https://images.pexels.com/photos/7577503/pexels-photo-7577503.jpeg?auto=compress&cs=tinysrgb&w=600",
      // ),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messagesList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messagesList[index];
                  return (message.fromHow == FromHow.me)
                      ? MyMessageBubble(
                          message: message,
                        )
                      : const HerMessageBubble();
                },
              ),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
