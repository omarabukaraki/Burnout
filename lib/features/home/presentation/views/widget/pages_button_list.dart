import 'package:flutter/material.dart';

import 'pages_button.dart';

class PagesButtonList extends StatefulWidget {
  const PagesButtonList({
    super.key,
  });

  @override
  State<PagesButtonList> createState() => _PagesButtonListState();
}

class _PagesButtonListState extends State<PagesButtonList> {
  bool isSelectOne = true;
  bool isSelectTwo = false;
  bool isSelectThree = false;
  @override
  Widget build(BuildContext context) {
    return Row(
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
            });
          },
        ),
      ],
    );
  }
}
