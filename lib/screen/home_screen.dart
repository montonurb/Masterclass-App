// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/screen/home_activities_screen.dart';
import 'package:masterclass_app/screen/home_dev_screen.dart';
import 'package:masterclass_app/screen/home_repository_screen.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final screens = [
      HomeActivitiesScreen(height: height, width: width),
      RepositoryScreen(height: height, width: width),
      DevScreen(height: height, width: width),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          backgroundColor: AppTheme.colors.scaffoldBackground,
          unselectedItemColor: AppTheme.colors.textHighlight,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: AppTheme.colors.textHighlight,
          iconSize: 30,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color:
                      currentIndex == 0 ? AppTheme.colors.cardBackground : null,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SvgPicture.asset(
                  "assets/img/home/feather-target.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              label: "Atividades",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color:
                      currentIndex == 1 ? AppTheme.colors.cardBackground : null,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SvgPicture.asset(
                  "assets/img/home/awesome-github.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              label: "Repositórios",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color:
                      currentIndex == 2 ? AppTheme.colors.cardBackground : null,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.person,
                  size: 35,
                ),
              ),
              label: "Sobre o dev",
            )
          ],
        ),
      ),
    );
  }
}
