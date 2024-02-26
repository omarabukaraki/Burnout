import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Burnout',
          style: TextStyle(color: AppColor.kPrimary, fontSize: 48),
        ),
      ],
    );
  }
}
