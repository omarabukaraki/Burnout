import 'package:flutter/material.dart';

class CustomWorkOutCard extends StatelessWidget {
  const CustomWorkOutCard({
    super.key,
    required this.index,
    required this.images,
    required this.texts,
  });
  final int index;
  final List<String> images;
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0),
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    images[index],
                  ),
                  fit: BoxFit.cover)),
          height: 200,
        ),
        Text(
          texts[index],
          style: const TextStyle(color: Colors.white, fontSize: 24),
        )
      ],
    );
  }
}
