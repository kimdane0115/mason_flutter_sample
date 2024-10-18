// ignore_for_file: unused_element

import '../../core/constants/index.dart';

ThemeData lightThemeData(ColorScheme colorScheme, BuildContext context) {
  return ThemeData(
      // 터치 이펙트 제거
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      chipTheme: ChipThemeData(
        backgroundColor: colorScheme.grey800,
        selectedColor: colorScheme.customWhite,
      ),
      splashFactory: NoSplash.splashFactory,
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      fontFamily: BaseFontFamily.koreanFontFamily,
      progressIndicatorTheme: ProgressIndicatorThemeData(color: colorScheme.neutral80),
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      dividerTheme: DividerThemeData(color: colorScheme.outlineVariant),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimary;
          }
          if (!states.contains(MaterialState.disabled)) {
            return colorScheme.surface;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.grey700;
          }
          if (states.contains(MaterialState.disabled)) {
            return colorScheme.onSurface.withOpacity(0.12);
          }
          return null;
        }),
        trackOutlineColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 16,
        ),
        hintStyle: TextStyle(color: colorScheme.outline),

        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: colorScheme.onSurface),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: colorScheme.onSurface),
        ),
        suffixIconColor: colorScheme.neutral70,
        // fillColor: colorScheme.onSurface.withOpacity(0.12),
        fillColor: colorScheme.surfaceContainerHighest,
        filled: true,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.tertiary,
        selectionColor: colorScheme.tertiaryFixedDim.withOpacity(0.5),
        selectionHandleColor: colorScheme.tertiary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.grey700,
            foregroundColor: colorScheme.primaryContainer,
            disabledBackgroundColor: colorScheme.onSurface.withOpacity(0.12),
            disabledForegroundColor: colorScheme.outline,
            minimumSize: const Size(64, 46),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 0),
      ),
      checkboxTheme: CheckboxThemeData(
        side: MaterialStateBorderSide.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return BorderSide(color: colorScheme.grey700, width: 2);
            }
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(color: colorScheme.onSurface.withOpacity(0.38), width: 2);
            }
            if (states.contains(MaterialState.error)) {
              return BorderSide(color: colorScheme.error, width: 2);
            }

            return BorderSide(color: colorScheme.grey400, width: 2);
          },
        ),
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.grey700;
            }
            if (states.contains(MaterialState.disabled)) {
              return colorScheme.onSurface.withOpacity(0.38);
            }
            return null;
          },
        ),
        checkColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primaryContainer;
          }
          if (states.contains(MaterialState.disabled)) {
            return colorScheme.surface;
          }
          return null;
        }),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      )

      // outlinedButtonTheme: OutlinedButtonThemeData(
      //   style: OutlinedButton.styleFrom(
      //       minimumSize: const Size(double.infinity, 60),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(50.0),
      //       ),
      //       foregroundColor: TSColors.flyGrey700,
      //       textStyle: TSTextStyle.size20.medium,
      //       elevation: 0),
      // ),
      //   textButtonTheme: TextButtonThemeData(
      //     style: TextButton.styleFrom(
      //         foregroundColor: TSColors.flyGrey700, textStyle: TSTextStyle.size20.medium, elevation: 0),
      //   ),
      //   iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom()),
      //   bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //     selectedLabelStyle: TSTextStyle.size11.medium,
      //     unselectedLabelStyle: TSTextStyle.size11.medium,
      //   ),
      //   textTheme: TextTheme(
      //     titleLarge: TSTextStyle.size24.semiBold, // AppBar Title 스타일
      //     titleMedium: TSTextStyle.size14.semiBold, //TextField 스타일
      //     bodyMedium: TSTextStyle.size16, // Text위젯 기본값
      //   ),

      );
}

ThemeData darkThemeData(ColorScheme colorScheme) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    dialogTheme: const DialogTheme(elevation: 0),
    // appBarTheme: const AppBarTheme(
    //   surfaceTintColor: Colors.transparent,
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent, // statusBar 색상(android)
    //     statusBarIconBrightness: Brightness.dark, // 아이콘 밝기(android)
    //     statusBarBrightness: Brightness.light, //status 밝기에 대비되는 아이콘 밝기(ios)
    //   ),
    //   centerTitle: true,
    //   iconTheme: IconThemeData(
    //     size: 24,
    //     color: Colors.black,
    //   ),
    //   backgroundColor: Colors.transparent,
    //   titleTextStyle: TextStyle(
    //     fontSize: 24,
    //     fontWeight: TSFontWeight.semiBold,
    //     color: Colors.black,
    //     letterSpacing: -1,
    //   ),
    //   elevation: 0,
    // ),
    // iconTheme: IconThemeData(color: CustomDarkTheme().kakaoYellow),
    // dividerTheme: const DividerThemeData(color: TSColors.flyGrey400),
    // inputDecorationTheme: const InputDecorationTheme(
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(50.0)),
    //   ),
    //   contentPadding: EdgeInsets.symmetric(
    //     horizontal: 24.0,
    //     vertical: 20,
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //       backgroundColor: colorScheme.error,
    //       minimumSize: const Size(double.infinity, 60),
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(50.0),
    //       ),
    //       foregroundColor: Colors.white,
    //       // textStyle: TSTextStyle.size20.medium,
    //       elevation: 0),
    // ),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: OutlinedButton.styleFrom(
    //       minimumSize: const Size(double.infinity, 60),
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(50.0),
    //       ),
    //       foregroundColor: TSColors.flyGrey700,
    //       textStyle: TSTextStyle.size20.medium,
    //       elevation: 0),
    // ),
    //   textButtonTheme: TextButtonThemeData(
    //     style: TextButton.styleFrom(
    //         foregroundColor: TSColors.flyGrey700, textStyle: TSTextStyle.size20.medium, elevation: 0),
    //   ),
    //   iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom()),
    //   bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //     selectedLabelStyle: TSTextStyle.size11.medium,
    //     unselectedLabelStyle: TSTextStyle.size11.medium,
    //   ),
    //   textTheme: TextTheme(
    //     titleLarge: TSTextStyle.size24.semiBold, // AppBar Title 스타일
    //     titleMedium: TSTextStyle.size14.semiBold, //TextField 스타일
    //     bodyMedium: TSTextStyle.size16, // Text위젯 기본값
    //   ),
  );
}
