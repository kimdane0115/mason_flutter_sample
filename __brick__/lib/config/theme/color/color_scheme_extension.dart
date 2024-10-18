import '../../../core/constants/index.dart';

extension ColorSchemeExtension on ColorScheme {
  Color get customBlack => const Color(0xFF000000);
  Color get customWhite => const Color(0xFFFFFFFF);
  Color get customGreen => const Color(0xFFDFFF00);
  Color get customYellow => Colors.yellow;
  Color get surfaceContainerLowest => const Color(0xFFFFFFFF);
  Color get surfaceContainerLow => const Color(0xFFF6F4EB);
  Color get surfaceContainer => const Color(0xFFF0EEE5);
  Color get surfaceContainerHigh => const Color(0xFFEAE8E0);
  Color get surfaceContainerHighest => const Color(0xFFF0F0F0);
  Color get surfaceDim => const Color(0xFFDCDAD2);
  Color get surfaceBright => const Color(0xFFFCF9F1);
  Color get primaryFixed => const Color(0xFFD2F002);
  Color get primaryFixedDim => const Color(0xFFA7D003);
  Color get onPrimaryFixed => const Color(0xFF191E00);
  Color get onPrimaryFixedVariant => const Color(0xFF545454);
  Color get secondaryFixed => const Color(0xFFE9DDFF);
  Color get secondaryFixedDim => const Color(0xFFD1BCFF);
  Color get onSecondaryFixed => const Color(0xFF23005B);
  Color get onSecondaryFixedVariant => const Color(0xFF5700C9);
  Color get tertiaryFixed => const Color(0xFFCDE5FF);
  Color get tertiaryFixedDim => const Color(0xFF94CCFF);
  Color get onTertiaryFixed => const Color(0xFF001D32);
  Color get onTertiaryFixedVariant => const Color(0xFF004A75);

  Color get partyGreen => const Color(0xFF2DDF00);
  Color get neutral70 => const Color(0xFFB1B1B1);
  Color get neutral80 => const Color(0xFFCDCDCD);
  Color get neutral90 => const Color(0xFFE3E3E3);
  Color get neutral95 => const Color(0xFFF0F0F0);
  Color get neutral98 => const Color(0xFFFCF9F1);
  Color get photoCardBackground => const Color(0xFF000000);

  Color get grey50 => const Color(0xfff0f0f0);
  Color get grey100 => const Color(0xffe3e3e3);
  Color get grey200 => const Color(0xffd9d9d9);
  Color get grey300 => const Color(0xffcdcdcd);
  Color get grey400 => const Color(0xffb1b1b1);
  Color get grey500 => const Color(0xff7c7c7c);
  Color get grey600 => const Color(0xff4a4a4a);
  Color get grey700 => const Color(0xff353535);
  Color get grey800 => const Color(0xff2b2b2b);
  Color get grey900 => const Color(0xff1d1d1d);
}
