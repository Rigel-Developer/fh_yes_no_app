import 'package:fh_yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:fh_yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/7577503/pexels-photo-7577503.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
          ),
          title: const Text('Amor de mi vida ❤️‍🔥'),
          centerTitle: false,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const MyMessageBubble()
                      : const HerMessageBubble();
                },
              ),
            ),
            Text(
              "data2",
            )
          ],
        ),
      ),
    );
  }
}
