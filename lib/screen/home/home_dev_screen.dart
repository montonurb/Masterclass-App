// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/screen/widgets/skill_widget.dart';
import 'package:masterclass_app/screen/widgets/tech_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DevScreen extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  DevScreen({Key? key, required this.height, required this.width})
      : super(key: key);

  Future<void> linkUrl(String url) async {
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
        child: SizedBox(
          child: Column(
            children: [
              HeaderWidget(title: "Sobre o dev", logo: true),
              const SizedBox(height: 16),
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: AppTheme.colors.cardBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 25, right: 25, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width),
                          child: Image.asset("assets/img/bruno.jpg"),
                        ),
                      ),
                      Text("Bruno Monteiro Cardoso",
                          style: AppTheme.textStyle.healine2),
                      Text(
                        "Graduado em Ciência da Computação pela Universidade Estadual do Piauí, aluno da MasterClass, turma 3.",
                        style: AppTheme.textStyle.poppinsMedium12,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => linkUrl('https://wa.me/5586999116978'),
                            child: SvgPicture.asset(
                              "assets/img/about/ionic-logo-whatsapp.svg",
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                linkUrl('https://github.com/montonurb'),
                            child: SvgPicture.asset(
                              "assets/img/about/awesome-github-alt.svg",
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                linkUrl('https://www.instagram.com/montonurb/'),
                            child: SvgPicture.asset(
                              "assets/img/about/awesome-instagram.svg",
                            ),
                          ),
                          GestureDetector(
                            onTap: () => linkUrl('https://facebook.com'),
                            child: SvgPicture.asset(
                              "assets/img/about/awesome-facebook-f.svg",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tecnologias Favoritas",
                    style: AppTheme.textStyle.poppinsMedium14,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TechWidget(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    TechWidget(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    TechWidget(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    TechWidget(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    TechWidget(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Habilidades e Competências",
                    style: AppTheme.textStyle.poppinsMedium14,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: width,
                decoration: BoxDecoration(
                  color: AppTheme.colors.cardBackground,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  children: [
                    SkillWidget(
                      nameSkill: "Dart/Flutter",
                      levelSkill: 8,
                      height: height,
                      width: width,
                    ),
                    SkillWidget(
                      nameSkill: "Regex",
                      levelSkill: 6,
                      height: height,
                      width: width,
                    ),
                    SkillWidget(
                      nameSkill: "HTML/CSS",
                      levelSkill: 4,
                      height: height,
                      width: width,
                    ),
                    SkillWidget(
                      nameSkill: "Javascript",
                      levelSkill: 4,
                      height: height,
                      width: width,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
