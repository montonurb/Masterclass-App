import 'package:flutter/material.dart';
import 'package:masterclass_app/screen/activity/activiy_screen.dart';
import 'package:masterclass_app/screen/animation/explicit_animation/first_explicit_animation_screen.dart';
import 'package:masterclass_app/screen/animation/implied_animation/first_implied_animation_screen.dart';
import 'package:masterclass_app/screen/animation/implied_animation/second_implied_animation_screen.dart';
import 'package:masterclass_app/screen/design_pattern/cpf/cpf_screen.dart';
import 'package:masterclass_app/screen/home/home_screen.dart';
import 'package:masterclass_app/screen/mockup/bank/bank_screen.dart';
import 'package:masterclass_app/screen/mockup/tinder/tinder_screen.dart';
import 'package:masterclass_app/screen/splash/splash_screen.dart';

void main(List<String> args) {
  runApp(const MasterClassApp());
}

class MasterClassApp extends StatefulWidget {
  const MasterClassApp({Key? key}) : super(key: key);

  @override
  State<MasterClassApp> createState() => _MasterClassAppState();
}

class _MasterClassAppState extends State<MasterClassApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      darkTheme: ThemeData.dark(),
      routes: <String, WidgetBuilder>{
        "/splash-screen": (context) => const SplashScreen(),
        "/home-screen": (context) => const HomeScreen(),
        "/activity-screen": (context) => AcitivityScreen(),
        "/cpf-design-pattern-screen": (context) => const CpfScreen(),
        "/first-implied-animation-screen": (context) =>
            const FirstImpliedAnimationScreen(),
        "/second-implied-animation-screen": (context) =>
            const SecondImpliedAnimationScreen(),
        "/first-controlled-animation-screen": (context) =>
            const FirstExplicitAnimationScreenMyWidget(),
        "/bank-mockup-screen": (context) => const BankScreen(),
        "/tinder-mockup-screen": (context) => const TinderScreen(),
      },
    );
  }
}
