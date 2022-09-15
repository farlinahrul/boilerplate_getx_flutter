import 'package:flutter/material.dart';

class Resources {
  static AppColors color = AppColors();
  static AppImages images = AppImages();
}

class AppColors {
  Color colorPrimary = const Color(0xFF2096F3);
  Color colorSecondary = const Color(0xFFE1F2FF);
  Color colorTertiary = const Color(0xFFECEFF7);

  Color colorAccent = Colors.white;
  Color black = Colors.black;
  Color white = Colors.white;
  Color grey = Colors.grey;
  Color red = Colors.red;

  Color borderColor = Colors.black12;
  Color subHintColor = Colors.black45;
  Color textHeadLine = const Color(0xFF232735);
  Color paragraphBody = const Color(0xFF505565);
  Color textSecondary1 = const Color(0xFF6E7692);
  Color textSecondary2 = const Color(0xFFB3B7C6);
  Color inverse = const Color(0xFFFFFFFF);
  Color link = const Color(0xFF2096F3);
  Color bgPrimary = const Color(0xFFFFFFFF);
  Color bgSecondary = const Color(0xFFF6F8FB);
  Color divider1 = const Color(0xFFF9F9FB);
  Color borderDivider2 = const Color(0xFFF3F3F3);
  Color borderEmphasis = const Color(0xFFCECECE);
  Color bgDark = const Color(0xFF222736);

  Color surface = const Color(0xFFDEECFD);
  Color subBrand = const Color(0xFFE53935);
  Color body2 = const Color(0xFF9296A3);
  Color warningColor = const Color(0xFFFBAF18);

  Color brandPrimary = const Color(0xFFFF9800);
  Color brandSecondary = const Color(0xFFE1F2FF);
  Color starColor = const Color(0xFFFF9800);
  Color shadowBlur = const Color(0xFF000E33);
  Color iconColor = const Color(0xFF222B45);

  Color tulip = const Color(0xFFF98B8B);
  Color sunny = const Color(0xFFEBFF72);
  Color purplePizzazz = const Color(0xFFE24CE5);
  Color turqoise = const Color(0xFF54EDE4);
  Color royalBlue = const Color(0xFF4370E5);
  Color yellowOrange = const Color(0xFFFFAC30);
  Color fuchsiaRose = const Color(0xFFC74973);
  Color munsell = const Color(0xFF00A67E);
  Color zaffre = const Color(0xFF00109F);
  Color laSalleGreen = const Color(0xFF00752F);
  Color mistyRose = const Color(0xFFFFE0E1);
  Color cgRed = const Color(0xFFE53935);
  Color colorDefault = const Color(0xFFC4C4C4);

  Color emphasizeBorder = const Color(0xFFCECECE);

  Color infoMain = const Color(0xFF3267E3);
  Color infoBorder = const Color(0xFFB1C5F6);
  Color infoSurface = const Color(0xFFDEECFD);

  Color dangerMain = const Color(0xFFE52A34);
  Color dangerBorder = const Color(0xFFEEB4B0);
  Color dangerSurface = const Color(0xFFFFE0E1);

  Color warningMain = const Color(0xFFFF9800);
  Color warningBorder = const Color(0xFFFCDFA7);
  Color warningSurface = const Color(0xFFFFF3DB);

  Color successMain = const Color(0xFF14C179);
  Color successBorder = const Color(0xFFB8DBCA);
  Color successSurface = const Color(0xFFE8F6F0);
}

class AppImages {
  AssetImage imageLogo = const AssetImage('lib/resources/images/github.png');
  AssetImage imageEmpty = const AssetImage('lib/resources/images/img_empty.png');
  AssetImage imageError = const AssetImage('lib/resources/images/img_error.png');
  AssetImage userPlaceholder =
      const AssetImage('lib/resources/images/user_placeholder.png');
  AssetImage emptyStateCode =
      const AssetImage('lib/resources/images/empty_state_code.png');
}
