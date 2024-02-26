import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomMyPlanComponent extends StatelessWidget {
  const CustomMyPlanComponent({
    super.key,
    required this.index,
    required this.images,
    required this.texts,
  });
  final int index;
  final List<String> images;
  final List<List<String>> texts;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 1),
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: MediaQuery.of(context).size.width,
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(images[index]), fit: BoxFit.cover)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: MediaQuery.of(context).size.width,
          height: 180,
          color: const Color.fromARGB(90, 0, 0, 0),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              texts[index][0],
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColor.kWhite, fontSize: 24),
            ),
            subtitle: Text(
              texts[index][1],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColor.kWhite,
                fontFamily: '',
                fontSize: 18,
              ),
              maxLines: 2,
            ),
          ),
        )
      ],
    );
  }
}
