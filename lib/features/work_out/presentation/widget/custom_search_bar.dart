import 'package:burnout/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        cursorColor: AppColor.kSecondary,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle:
              const TextStyle(color: AppColor.kSecondary, fontFamily: ''),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColor.kSecondary,
          ),
          focusedBorder: customSearchBorder(),
          enabledBorder: customSearchBorder(),
          contentPadding: const EdgeInsets.all(0),
          border: customSearchBorder(),
        ),
      ),
    ));
  }

  OutlineInputBorder customSearchBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.kSecondary));
  }
}
