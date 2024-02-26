import 'package:burnout/core/utils/app_assets.dart';
import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomCollectionCard extends StatelessWidget {
  const CustomCollectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 1.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.imageCard3,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.transparent,
                  Color.fromARGB(50, 28, 39, 46),
                  Color.fromARGB(125, 28, 39, 46),
                  Color.fromARGB(200, 28, 39, 46)
                ])),
          ),
          const Positioned(
            left: 20,
            bottom: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ALWAYS READY FOR THE BEACH',
                  style: TextStyle(color: AppColor.kWhite, fontSize: 22),
                ),
                Text(
                  '12 Workouts  intermediate',
                  style: TextStyle(color: AppColor.kWhite, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
