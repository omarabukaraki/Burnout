import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class MyPlanTitle extends StatelessWidget {
  const MyPlanTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: ListTile(
      title: Text(
        'Pick your plan',
        style: TextStyle(color: AppColor.kPrimary, fontSize: 26),
        textAlign: TextAlign.center,
      ),
      subtitle: Text(
        'Start training with a personal plan that guides you while  Start training with a personal',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.kSecondary,
          fontFamily: '',
          fontSize: 18,
        ),
        maxLines: 2,
      ),
    ));
  }
}
