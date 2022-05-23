// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:masterclass_app/models/exercise/card.dart';
import 'package:masterclass_app/screen/widgets/card_widget.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';

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
              HeaderWidget(title: "Atividades", logo: true),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: card.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardWidget(
                      height: height,
                      width: width,
                      imageIcon: card[index][0],
                      indice: index,
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
            ],
          ),
        ),
      ),
    );
  }
}
