// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class RepositoryScreen extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  RepositoryScreen({Key? key, required this.height, required this.width})
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
                                "Repositórios",
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
            ],
          ),
        ),
      ),
    );
  }
}
