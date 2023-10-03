import 'dart:convert';

import 'package:fh_yes_no_app/domain/entities/message.dart';

YesNoWtf yesNoWtfFromJson(String str) => YesNoWtf.fromJson(json.decode(str));

String yesNoWtfToJson(YesNoWtf data) => json.encode(data.toJson());

class YesNoWtf {
  String? answer;
  bool? forced;
  String? image;

  YesNoWtf({
    this.answer,
    this.forced,
    this.image,
  });

  factory YesNoWtf.fromJson(Map<String, dynamic> json) => YesNoWtf(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessage() => Message(
        text: answer == 'yes' ? 'Si' : 'No',
        image: image,
        fromHow: FromHow.hers,
      );
}
