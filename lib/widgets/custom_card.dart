// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  String imageIcon = "";
  int indice = 0;
  String title = "";
  int exercise = 0;
  String text = "";
  String linkGitHub = "";

  CustomCard({
    Key? key,
    required this.height,
    required this.width,
    required this.imageIcon,
    required this.indice,
    required this.title,
    required this.exercise,
    required this.text,
    required this.linkGitHub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.24,
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
                        child: SvgPicture.asset(
                          imageIcon,
                          fit: BoxFit.scaleDown,
                        ),
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
                    SvgPicture.asset("assets/img/home/awesome-github.svg"),
                    const SizedBox(width: 5),
                    Text("Acessar código fonte.",
                        style: AppTheme.textStyle.padrao),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/activity-screen',
                        arguments: [indice, title, exercise]);
                  },
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
