import 'package:burnout/core/utils/app_color.dart';
import 'package:burnout/core/widgets/application_logo.dart';
import 'package:burnout/features/home/presentation/views/home_page.dart';
import 'package:flutter/material.dart';

import 'widget/auth_text_filed.dart';
import 'widget/custom_auth_button.dart';
import 'widget/horizontal_space.dart';
import 'widget/vertical_space.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isHide = true;
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1c272e),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff1c272e),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const VerticalSpace(height: 4),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        child: const ApplicationLogo()),
                    const VerticalSpace(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLogin = true;
                            });
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: isLogin == true
                                    ? AppColor.kWhite
                                    : AppColor.kSecondary,
                                fontSize: 30),
                          ),
                        ),
                        const HorizontalSpace(width: 50),
                        const Text(
                          '|',
                          style: TextStyle(
                              color: AppColor.kSecondary, fontSize: 18),
                        ),
                        const HorizontalSpace(width: 50),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLogin = false;
                            });
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                color: isLogin != false
                                    ? AppColor.kSecondary
                                    : AppColor.kWhite,
                                fontSize: 30),
                          ),
                        )
                      ],
                    ),
                    isLogin == true
                        ? const VerticalSpace(height: 8)
                        : const VerticalSpace(height: 24),
                    isLogin != true
                        ? const AuthTextFiled(hint: 'Name', isPassword: false)
                        : const SizedBox(),
                    const AuthTextFiled(hint: 'Email', isPassword: false),
                    AuthTextFiled(
                      hint: 'Password',
                      isPassword: true,
                      isHide: isHide,
                      onTap: () {
                        setState(() {
                          isHide = !isHide;
                        });
                      },
                    ),
                    const VerticalSpace(height: 8),
                    isLogin == true
                        ? CustomAuthButton(
                            labelOFButton: 'Login',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ));
                            },
                          )
                        : const CustomAuthButton(labelOFButton: 'SignUp'),
                    const VerticalSpace(height: 8),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
