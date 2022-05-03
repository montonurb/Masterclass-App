import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_theme.dart';

class CustomHeader extends StatelessWidget {
  String title = "";
  CustomHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
