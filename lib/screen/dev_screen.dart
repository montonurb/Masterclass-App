// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/widgets/custom_header.dart';
import 'package:masterclass_app/widgets/custom_skill.dart';
import 'package:masterclass_app/widgets/custom_tech.dart';

import '../theme/app_theme.dart';

class DevScreen extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  DevScreen({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
        child: SizedBox(
          child: Column(
            children: [
              CustomHeader(title: "Sobre o dev"),
              const SizedBox(height: 16),
              Container(
                height: height * 0.32,
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
                          SvgPicture.asset(
                            "assets/img/about/ionic-logo-whatsapp.svg",
                          ),
                          SvgPicture.asset(
                            "assets/img/about/awesome-github-alt.svg",
                          ),
                          SvgPicture.asset(
                            "assets/img/about/awesome-instagram.svg",
                          ),
                          SvgPicture.asset(
                            "assets/img/about/awesome-facebook-f.svg",
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
                    CustomTech(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    CustomTech(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    CustomTech(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    CustomTech(
                      height: height,
                      width: width,
                      nameTech: "Flutter",
                      imageTech: "assets/img/about/simple-flutter-1.svg",
                    ),
                    const SizedBox(width: 16),
                    CustomTech(
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
                height: height * 0.20,
                width: width,
                decoration: BoxDecoration(
                  color: AppTheme.colors.cardBackground,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  children: const [
                    //CustomSkill(nameSkill: "Flutter", levelSkill: 0.5)
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
