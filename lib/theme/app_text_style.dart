import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masterclass_app/theme/app_theme.dart';

abstract class AppTextStyle {
  TextStyle get padrao;
  TextStyle get healine1;
  TextStyle get healine2;
  TextStyle get description;
  TextStyle get bodyText;
}

class AppTextStyleDefault implements AppTextStyle {
  @override
  TextStyle get padrao => GoogleFonts.montserrat(
        fontSize: 12,
        color: AppTheme.colors.bodytext,
      );

  @override
  TextStyle get healine1 => GoogleFonts.poppins(
        fontSize: 20,
        color: AppTheme.colors.textHighlight,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get healine2 => GoogleFonts.poppins(
        fontSize: 16,
        color: AppTheme.colors.textHighlight,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get description => GoogleFonts.poppins(
        fontSize: 12,
        color: AppTheme.colors.textHighlight,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyText => GoogleFonts.montserrat(
        fontSize: 14,
        color: AppTheme.colors.bodytext,
      );
}
