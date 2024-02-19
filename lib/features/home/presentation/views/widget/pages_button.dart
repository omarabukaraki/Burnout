import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class PagesButton extends StatelessWidget {
  const PagesButton({
    super.key,
    required this.label,
    required this.isSelected,
    this.onTap,
  });
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: TextStyle(
            fontSize: 26,
            color:
                isSelected == true ? AppColor.kPrimary : AppColor.kSecondary),
      ),
    );
  }
}
