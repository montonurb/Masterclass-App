// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/widgets/custom_card.dart';
import '../theme/app_theme.dart';

class ActivitiesScreen extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  ActivitiesScreen({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
        child: SizedBox(
          height: height,
          width: width,
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
    );
  }
}
