import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.labelOFButton,
  });

  final String labelOFButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColor.kWhite),
      child: Center(
          child: Text(
        labelOFButton,
        style: const TextStyle(fontSize: 24, color: Color(0xff1c272e)),
      )),
    );
  }
}
