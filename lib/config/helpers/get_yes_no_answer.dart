import 'package:dio/dio.dart';
import 'package:fh_yes_no_app/domain/entities/message.dart';
import 'package:fh_yes_no_app/infrastructure/models/yes_no_wtf.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final YesNoWtf yesNoWtf = YesNoWtf.fromJson(
      response.data,
    );

    return yesNoWtf.toMessage();
  }
}
