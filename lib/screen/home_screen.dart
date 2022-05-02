// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masterclass_app/theme/app_theme.dart';

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
    return Material(
      color: AppTheme.colors.scaffoldBackground,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 42, left: 15, right: 15, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("/img/home/logo.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
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
                    "/img/home/awesome-moon.svg",
                    color: AppTheme.colors.textHighlight,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomCard(
                height: height,
                width: width,
                imageIcon: "/img/home/awesome-running.svg",
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
                imageIcon: "/img/home/awesome-running.svg",
                title: 'Leitura de Mockup',
                exercise: 2,
                text:
                    'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos.',
                linkGitHub: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  String imageIcon;
  String title = "";
  int exercise = 0;
  String text = "";
  String linkGitHub = "";

  CustomCard({
    Key? key,
    required this.height,
    required this.width,
    required this.imageIcon,
    required this.title,
    required this.exercise,
    required this.text,
    required this.linkGitHub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.25,
      width: width,
      decoration: BoxDecoration(
        color: AppTheme.colors.cardBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.primary,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: SvgPicture.asset(imageIcon),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Text(title, style: AppTheme.textStyle.healine2),
                  ],
                ),
                Row(
                  children: [
                    Text("Exercicios:", style: AppTheme.textStyle.padrao),
                    const SizedBox(width: 13),
                    Text("$exercise", style: AppTheme.textStyle.description),
                  ],
                ),
              ],
            ),
            Text(
              text,
              style: AppTheme.textStyle.bodyText,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("/img/home/awesome-github.svg"),
                    const SizedBox(width: 5),
                    Text("Acessar código fonte.",
                        style: AppTheme.textStyle.padrao),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppTheme.colors.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      "Ver mais",
                      style: AppTheme.textStyle.description,
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
