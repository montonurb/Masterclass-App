// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:masterclass_app/theme/app_theme.dart';

class TinderScreen extends StatelessWidget {
  const TinderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final heigthMediaquery = mediaQuery.height;
    final widthMediaquery = mediaQuery.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color(0xFFEE7363),
              Color(0xFFE94976),
            ])),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: widthMediaquery * 0.85),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppTheme.colors.textHighlight,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: heigthMediaquery * 0.25,
                        maxHeight: heigthMediaquery * 0.35),
                    child: Image.asset(
                      'assets/img/tinder_logo.png',
                      height: widthMediaquery * 0.25,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to our ',
                      ),
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                        ),
                      ),
                      TextSpan(
                        text: '. Learn how we process your data in our ',
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                        text: 'Cookies Policy.',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                        ),
                      ),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  CustomButtom(
                      icon: Icons.apps_outlined, text: 'Sign in with Apple'),
                  const SizedBox(height: 10),
                  CustomButtom(
                      icon: Icons.facebook, text: 'Sign in with Facebook'),
                  const SizedBox(height: 10),
                  CustomButtom(
                      icon: Icons.phone, text: 'Sign in with Phone Number'),
                  const SizedBox(height: 10),
                  const Text(
                    'Trouble Signin In',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: math.min(
                        heigthMediaquery * 0.1, heigthMediaquery * 0.02),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  IconData icon;
  String text;
  CustomButtom({Key? key, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.white),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          const Spacer(),
          Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
