import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../pages/for_you_page.dart';
import '../pages/my_plan_page.dart';
import '../../../../work_out/presentation/view/work_out_page.dart';
import 'custom_app_bar.dart';
import 'pages_button.dart';

class AllPages extends StatefulWidget {
  const AllPages({
    super.key,
  });

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  bool isSelectOne = true;
  bool isSelectTwo = false;
  bool isSelectThree = false;
  int index = 0;
  List<Widget> pages = const [ForYouPage(), WorkOutPage(), MyPlanPage()];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColor.kSecondary))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomAppBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PagesButton(
                      isSelected: isSelectOne,
                      label: 'For You',
                      onTap: () {
                        setState(() {
                          isSelectOne = true;
                          isSelectTwo = false;
                          isSelectThree = false;
                          index = 0;
                        });
                      },
                    ),
                    PagesButton(
                      isSelected: isSelectTwo,
                      label: 'WorkOut',
                      onTap: () {
                        setState(() {
                          isSelectOne = false;
                          isSelectTwo = true;
                          isSelectThree = false;
                          index = 1;
                        });
                      },
                    ),
                    PagesButton(
                      isSelected: isSelectThree,
                      label: 'MyPlan',
                      onTap: () {
                        setState(() {
                          isSelectOne = false;
                          isSelectTwo = false;
                          isSelectThree = true;
                          index = 2;
                        });
                      },
                    ),
                  ],
                )
              ]),
        ),
        Expanded(
          child: pages[index],
        )
      ],
    );
  }
}
