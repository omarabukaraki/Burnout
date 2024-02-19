import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class AuthTextFiled extends StatelessWidget {
  const AuthTextFiled(
      {super.key,
      required this.hint,
      required this.isPassword,
      this.onTap,
      this.isHide});

  final String hint;
  final bool isPassword;
  final bool? isHide;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.4,
      child: TextField(
        style: const TextStyle(color: AppColor.kSecondary, fontSize: 18),
        obscureText: isHide == true ? true : false,
        cursorColor: AppColor.kWhite,
        decoration: InputDecoration(
          suffixIcon: isPassword == true
              ? IconButton(
                  onPressed: onTap,
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: AppColor.kSecondary,
                  ))
              : const SizedBox(),
          hintText: hint,
          hintStyle: const TextStyle(color: AppColor.kSecondary, fontSize: 18),
          focusedBorder: borderDesign(),
          enabledBorder: borderDesign(),
          border: borderDesign(),
        ),
      ),
    );
  }

  UnderlineInputBorder borderDesign() {
    return const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColor.kWhite));
  }
}
