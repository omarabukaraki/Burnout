import 'package:burnout/core/utils/app_assets.dart';
import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../widget/custom_card.dart';
import '../widget/custom_collection_card.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'New Workouts',
              style: TextStyle(color: AppColor.kPrimary, fontSize: 24),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.width / 1.25),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CustomCard(
                    image: AppAssets.imageCard1,
                    title: '5-Minuteplank finisher',
                    subTitle: '6 min - Intrmediate',
                  );
                },
              ),
            ),
            const Text(
              'New workout Collections',
              style: TextStyle(color: AppColor.kPrimary, fontSize: 24),
            ),
            const CustomCollectionCard(),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
