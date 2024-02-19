import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'widget/custom_full_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kWhite,
      child: const SafeArea(
        child: Scaffold(
          body: AllPages(),
        ),
      ),
    );
  }
}
