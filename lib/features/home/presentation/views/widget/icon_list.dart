import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';

class IconList extends StatelessWidget {
  const IconList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 30, height: 30, child: Image.asset(AppAssets.iconList)),
        SizedBox(width: 32, height: 32, child: Image.asset(AppAssets.iconTune)),
      ],
    );
  }
}
