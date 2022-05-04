// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class CustomSkill extends StatelessWidget {
  String nameSkill = "";
  double levelSkill = 0.0;
  double height = 0.0;
  double width = 0.0;
  CustomSkill({
    Key? key,
    required this.nameSkill,
    required this.levelSkill,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthNew = width * 0.5;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nameSkill,
            style: AppTheme.textStyle.poppinsMedium12,
          ),
          Stack(
            children: [
              Container(
                height: 15,
                width: widthNew,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppTheme.colors.scaffoldBackground,
                ),
              ),
              Container(
                height: 15,
                width: (widthNew / 10) * levelSkill,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppTheme.colors.primary,
                ),
              ),
            ],
          ),
          //CustomSkill(nameSkill: "Flutter", levelSkill: 0.5)
        ],
      ),
    );
  }
}
