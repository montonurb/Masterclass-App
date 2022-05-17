import 'package:flutter/material.dart';
import 'package:masterclass_app/screen/activity/activiy_screen.dart';
import 'package:masterclass_app/screen/cpf/cpf_screen.dart';
import 'package:masterclass_app/screen/home/home_screen.dart';
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
        "/cpf-screen": (context) => const CpfScreen(),
      },
    );
  }
}
