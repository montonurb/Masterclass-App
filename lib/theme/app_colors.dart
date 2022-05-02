import 'package:flutter/material.dart';

abstract class AppColors {
  Color get primary;
  Color get branco;
  Color get scaffoldBackground;
  Color get cardBackground;
  Color get bodytext;
  Color get textHighlight;
}

class AppColorsDefault implements AppColors {
  @override
  Color get primary => const Color(0xFF055AA3);

  @override
  Color get branco => const Color(0xFFFFFFFF);

  @override
  Color get scaffoldBackground => const Color(0xFF121517);

  @override
  Color get cardBackground => const Color(0xFF172026);

  @override
  Color get textHighlight => const Color(0xFFEDF4F8);

  @override
  Color get bodytext => const Color(0xFF51565A);
}
