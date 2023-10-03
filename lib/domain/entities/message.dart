enum FromHow { me, hers }

class Message {
  final String text;
  final String? image;
  final FromHow? fromHow;

  Message({
    required this.text,
    this.fromHow,
    this.image,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      text: json['answer'],
      image: json['image'],
      fromHow: json['fromHow'] == 'me' ? FromHow.me : FromHow.hers,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'answer': text,
      'image': image,
      'fromHow': fromHow == FromHow.me ? 'me' : 'hers',
    };
  }
}
