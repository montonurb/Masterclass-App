// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class CustomSkill extends StatelessWidget {
  String nameSkill = "";
  double levelSkill = 0.0;
  CustomSkill({
    Key? key,
    required this.nameSkill,
    required this.levelSkill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(nameSkill, style: AppTheme.textStyle.poppinsMedium12),
        LinearProgressIndicator(
          //color: AppTheme.colors.primary,
          color: Colors.white,
          value: levelSkill,
          backgroundColor: AppTheme.colors.scaffoldBackground,
        ),
      ],
    );
  }
}
