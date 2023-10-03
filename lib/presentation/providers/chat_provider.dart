import 'package:fh_yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:fh_yes_no_app/domain/entities/message.dart';
import 'package:flutter/cupertino.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messagesList = [];

  Future<void> addMessage(String message) async {
    if (message.isEmpty) return;
    messagesList.add(Message(text: message, fromHow: FromHow.me));
    if (message.endsWith('?')) {
      await herAnswer();
    }

    notifyListeners();
    moveScrollToEnd();
  }

  Future<void> herAnswer() async {
    final answer = await getYesNoAnswer.getAnswer();
    messagesList.add(answer);
    notifyListeners();
    moveScrollToEnd();
  }

  Future<void> moveScrollToEnd() async {
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
