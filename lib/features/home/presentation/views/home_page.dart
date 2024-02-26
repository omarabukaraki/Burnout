import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'widget/all_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kWhite,
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.kWhite,
          body: AllPages(),
        ),
      ),
    );
  }
}
