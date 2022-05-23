// ignore_for_file: must_be_immutable, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:masterclass_app/models/exercise/card.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class AcitivityScreen extends StatelessWidget {
  AcitivityScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    List arguments = args as List;
    int indice = arguments[0];
    String title = arguments[1];
    int exercizes = arguments[2];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
          child: Column(
            children: [
              HeaderWidget(title: title, logo: false),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: exercizes,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        print(card[indice][5][index]);
                        Navigator.of(context).pushNamed(card[indice][5][index]);
                      },
                      child: Container(
                        height: height * 0.085,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: AppTheme.colors.cardBackground,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: width * 0.09,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: AppTheme.colors.primary,
                                ),
                                child: Center(
                                  child: Text(
                                    "${index + 1}",
                                    style: AppTheme.textStyle.healine2,
                                  ),
                                ),
                              ),
                              Text(
                                "Exercício 0${index + 1}",
                                style: AppTheme.textStyle.healine2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 8);
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
