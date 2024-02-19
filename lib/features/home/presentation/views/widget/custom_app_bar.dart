import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'icon_list.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconList(),
        SizedBox(height: 20),
        Text(
          'Burnout',
          style: TextStyle(color: AppColor.kPrimary, fontSize: 48),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
