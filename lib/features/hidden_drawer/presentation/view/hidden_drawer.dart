import 'package:burnout/core/utils/app_assets.dart';
import 'package:burnout/core/utils/app_color.dart';
import 'package:burnout/features/home/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'drawer_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> screens = [];
  @override
  void initState() {
    screens = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: AppColor.kPrimary,
              name: 'Home',
              baseStyle:
                  const TextStyle(color: AppColor.kSecondary, fontSize: 24),
              selectedStyle:
                  const TextStyle(color: AppColor.kPrimary, fontSize: 26)),
          const HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: AppColor.kPrimary,
              name: 'Feed',
              baseStyle:
                  const TextStyle(color: AppColor.kSecondary, fontSize: 24),
              selectedStyle:
                  const TextStyle(color: AppColor.kPrimary, fontSize: 26)),
          const DrawerPage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: AppColor.kPrimary,
              name: 'Activity',
              baseStyle:
                  const TextStyle(color: AppColor.kSecondary, fontSize: 24),
              selectedStyle:
                  const TextStyle(color: AppColor.kPrimary, fontSize: 26)),
          const DrawerPage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: AppColor.kPrimary,
              name: 'Club',
              baseStyle:
                  const TextStyle(color: AppColor.kSecondary, fontSize: 24),
              selectedStyle:
                  const TextStyle(color: AppColor.kPrimary, fontSize: 26)),
          const DrawerPage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: AppColor.kPrimary,
              name: 'Favorites',
              baseStyle:
                  const TextStyle(color: AppColor.kSecondary, fontSize: 24),
              selectedStyle:
                  const TextStyle(color: AppColor.kPrimary, fontSize: 26)),
          const DrawerPage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: AppColor.kPrimary,
              name: 'Inbox',
              baseStyle:
                  const TextStyle(color: AppColor.kSecondary, fontSize: 24),
              selectedStyle:
                  const TextStyle(color: AppColor.kPrimary, fontSize: 26)),
          const DrawerPage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: AppColor.kPrimary,
              name: 'Settings',
              baseStyle:
                  const TextStyle(color: AppColor.kSecondary, fontSize: 24),
              selectedStyle:
                  const TextStyle(color: AppColor.kPrimary, fontSize: 26)),
          const DrawerPage()),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      actionsAppBar: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
              width: 24, height: 24, child: Image.asset(AppAssets.iconTune)),
        )
      ],
      tittleAppBar: const Text(''),
      disableAppBarDefault: false,
      elevationAppBar: 0,
      backgroundColorAppBar: Colors.white,
      backgroundColorMenu: Colors.white,
      screens: screens,
    );
  }
}
