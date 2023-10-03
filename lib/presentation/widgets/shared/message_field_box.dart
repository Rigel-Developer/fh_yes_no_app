import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final inputDecoration = InputDecoration(
      hintText: "Escribe un mensaje",
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          print(textController.text);
          textController.clear();
        },
      ),
    );

    return TextFormField(
      controller: textController,
      decoration: inputDecoration,
    );
  }
}
