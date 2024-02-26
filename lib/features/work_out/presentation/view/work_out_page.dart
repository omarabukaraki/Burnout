import 'package:flutter/material.dart';
import 'widget/custom_search_bar.dart';
import 'widget/custom_work_out_card.dart';

class WorkOutPage extends StatefulWidget {
  const WorkOutPage({super.key});

  @override
  State<WorkOutPage> createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
  List<String> images = [
    'assets/images/work_out3.jpg',
    'assets/images/work_out2.jpg',
    'assets/images/work_out1.jpg'
  ];
  List<String> texts = [
    'Browse by muscle group',
    'BROWSE BY workout type',
    'BROWSE workout collections'
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSearchBar(),
        SliverList.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return CustomWorkOutCard(
              index: index,
              images: images,
              texts: texts,
            );
          },
        )
      ],
    );
  }
}
