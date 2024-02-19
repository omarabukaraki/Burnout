import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.labelOFButton, this.onTap});

  final String labelOFButton;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColor.kWhite),
        child: Center(
            child: Text(
          labelOFButton,
          style: const TextStyle(fontSize: 24, color: Color(0xff1c272e)),
        )),
      ),
    );
  }
}
