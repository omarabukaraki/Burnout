import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16, top: 8),
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.width / 1.7,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(color: AppColor.kPrimary, fontSize: 22),
        ),
        Text(
          subTitle,
          style: const TextStyle(
              color: AppColor.kSecondary, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
