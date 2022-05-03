// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/theme/app_theme.dart';
import 'package:masterclass_app/widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 42, left: 15, right: 15, bottom: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/img/home/logo.png"),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Atividades",
                                  style: AppTheme.textStyle.healine1,
                                ),
                                Text(
                                  "Flutterando Masterclass",
                                  style: AppTheme.textStyle.description,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/img/home/awesome-moon.svg",
                        color: AppTheme.colors.textHighlight,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                CustomCard(
                  height: height,
                  width: width,
                  imageIcon: "assets/img/home/awesome-running.svg",
                  title: "Animações",
                  exercise: 4,
                  text:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos.',
                  linkGitHub: '',
                ),
                const SizedBox(height: 16),
                CustomCard(
                  height: height,
                  width: width,
                  imageIcon: "assets/img/home/awesome-glasses.svg",
                  title: 'Leitura de Mockup',
                  exercise: 2,
                  text:
                      'Aplicação da técnica de leitura de mockup, contendo 2 exercícios.',
                  linkGitHub: '',
                ),
                const SizedBox(height: 16),
                CustomCard(
                  height: height,
                  width: width,
                  imageIcon: "assets/img/home/material-toys.svg",
                  title: 'Playground',
                  exercise: 2,
                  text: 'Ambiente destinado a testes e estudos em geral.',
                  linkGitHub: '',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppTheme.colors.scaffoldBackground,
          unselectedItemColor: AppTheme.colors.textHighlight,
          selectedFontSize: 12,
          selectedItemColor: AppTheme.colors.textHighlight,
          iconSize: 30,
          selectedIconTheme:
              IconThemeData(color: AppTheme.colors.cardBackground),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: AppTheme.colors.cardBackground,
              icon: Container(
                decoration: BoxDecoration(
                  color: AppTheme.colors.cardBackground,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 40,
                width: 50,
                child: SvgPicture.asset(
                  "assets/img/home/feather-target.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              label: "Atividades",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 40,
                width: 24,
                child: SvgPicture.asset(
                  "assets/img/home/awesome-github.svg",
                ),
              ),
              label: "Repositórios",
            ),
            const BottomNavigationBarItem(
              icon: SizedBox(
                height: 40,
                child: Icon(
                  Icons.person,
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
