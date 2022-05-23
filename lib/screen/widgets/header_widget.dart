// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class HeaderWidget extends StatelessWidget {
  String title = "";
  bool logo = true;
  HeaderWidget({Key? key, required this.title, required this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              logo == true
                  ? Image.asset("assets/img/home/logo.png")
                  : GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppTheme.colors.textHighlight,
                        size: 35,
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
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
    );
  }
}
