// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/app_theme.dart';

class CustomTech extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  String nameTech = "";
  String imageTech = "";
  CustomTech({
    Key? key,
    required this.height,
    required this.width,
    required this.nameTech,
    required this.imageTech,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.12,
      width: width * 0.25,
      decoration: BoxDecoration(
          color: AppTheme.colors.cardBackground,
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            imageTech,
          ),
          Text(
            nameTech,
            style: AppTheme.textStyle.poppinsMedium14,
          ),
        ],
      ),
    );
  }
}
