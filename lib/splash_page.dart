import 'package:burnout/core/utils/app_color.dart';
import 'package:burnout/features/auth/presentation/view/auth_page.dart';
import 'package:burnout/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'core/widgets/application_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const AuthPage();
        },
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kPrimary,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.splashBackground),
                  fit: BoxFit.fill),
            ),
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                child: const ApplicationLogo(),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
