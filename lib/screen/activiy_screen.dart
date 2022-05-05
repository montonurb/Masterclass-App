// ignore_for_file: must_be_immutable, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:masterclass_app/theme/app_theme.dart';
import 'package:masterclass_app/widgets/custom_header.dart';

class AcitivityScreen extends StatelessWidget {
  AcitivityScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    List arguments = args as List;
    String title = arguments[0];
    int exercizes = arguments[1];
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
              CustomHeader(title: title),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: exercizes,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: height * 0.07,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.cardBackground,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width * 0.08,
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
