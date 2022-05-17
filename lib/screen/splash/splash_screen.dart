import 'package:flutter/material.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void loadingSplashScreen() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushReplacementNamed("/home-screen");
  }

  @override
  void initState() {
    loadingSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.colors.scaffoldBackground,
      child: Center(
        child: Image.asset("assets/img/masterclass_logo.png"),
      ),
    );
  }
}
