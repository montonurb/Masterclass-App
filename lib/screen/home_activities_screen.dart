// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:masterclass_app/models/card.dart';
import 'package:masterclass_app/theme/app_theme.dart';
import 'package:masterclass_app/widgets/custom_card.dart';
import 'package:masterclass_app/widgets/custom_header.dart';

class HomeActivitiesScreen extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  HomeActivitiesScreen({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.scaffoldBackground,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              CustomHeader(title: "Atividades"),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: card.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard(
                      height: height,
                      width: width,
                      imageIcon: card[index][0],
                      title: card[index][1],
                      exercise: card[index][2],
                      text: card[index][3],
                      linkGitHub: card[index][4],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16);
                  },
                ),
              ),
              /*
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
              */
            ],
          ),
        ),
      ),
    );
  }
}
