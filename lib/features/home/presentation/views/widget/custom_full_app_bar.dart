import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import 'icon_list.dart';
import 'pages_button_list.dart';

class CustomFullAppBar extends StatelessWidget {
  const CustomFullAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: const BoxDecoration(
          color: Colors.red,
          border: Border(bottom: BorderSide(color: AppColor.kPrimary))),
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
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
            ),
            PagesButtonList()
          ]),
    );
  }
}
