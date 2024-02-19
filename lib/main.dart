import 'package:burnout/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Burnout());
}

class Burnout extends StatelessWidget {
  const Burnout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'BebasNeue'),
      home: const SplashPage(),
    );
  }
}
