import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              "mi amor te amo mucho",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const _ImageBubble(),
        const SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
          "https://yesno.wtf/assets/no/6-4bf0a784c173f70a0cab96efd9ff80c9.gif",
          width: size.width * 0.7,
          height: 150.0,
          fit: BoxFit.cover, loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          width: size.width * 0.7,
          height: 150.0,
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
