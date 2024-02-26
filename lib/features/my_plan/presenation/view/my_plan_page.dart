import 'package:flutter/material.dart';
import 'widget/custom_my_plan_component.dart';
import 'widget/my_plan_title.dart';

class MyPlanPage extends StatefulWidget {
  const MyPlanPage({super.key});

  @override
  State<MyPlanPage> createState() => _MyPlanPageState();
}

class _MyPlanPageState extends State<MyPlanPage> {
  List<String> images = [
    'assets/images/my_plan3.jpg',
    'assets/images/my_plan2.jpg',
    'assets/images/my_plan1.jpg'
  ];
  List<List<String>> texts = [
    [
      'Start up',
      'Kick it off with 4 weeks of guided, well-balanced workouts to get you fit.'
    ],
    [
      'Lean fit',
      'Get lean and fit over 6 weeks with a balanced plan that builds'
    ],
    [
      'Bodyweight only',
      'push your strength and improve muscle tone over 4 weeks'
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const MyPlanTitle(),
        SliverList.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return CustomMyPlanComponent(
              images: images,
              texts: texts,
              index: index,
            );
          },
        ),
      ],
    );
  }
}
