import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants/color_constants.dart';

import '../../constants/app/app_constants.dart';

ThemeData get appTheme => ThemeData(
    useMaterial3: true,
    textTheme:
        GoogleFonts.latoTextTheme().apply(bodyColor: ColorConstants.white),
    scaffoldBackgroundColor: ColorConstants.black,
    iconTheme: iconThemeData,
    appBarTheme: appBarTheme,
    elevatedButtonTheme: elevatedButtonThemeData,
    inputDecorationTheme: inputDecorationTheme,
    navigationBarTheme: navigationBarThemeData);

ElevatedButtonThemeData get elevatedButtonThemeData {
  return const ElevatedButtonThemeData(
      style: ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
          fixedSize: MaterialStatePropertyAll(Size(500, 55)),
          textStyle: MaterialStatePropertyAll(TextStyle(
              color: ColorConstants.white,
              fontSize: 12,
              fontWeight: FontWeight.normal,
              wordSpacing: 0.4)),
          backgroundColor: MaterialStatePropertyAll(ColorConstants.red),
          foregroundColor: MaterialStatePropertyAll(ColorConstants.white)));
}

InputDecorationTheme get inputDecorationTheme {
  const outlineInputBorder =
      OutlineInputBorder(borderSide: BorderSide(color: ColorConstants.white));
  return const InputDecorationTheme(
      fillColor: ColorConstants.black,
      iconColor: ColorConstants.white,
      focusColor: ColorConstants.black,
      hoverColor: ColorConstants.black,
      prefixIconColor: ColorConstants.white,
      suffixIconColor: ColorConstants.white,
      enabledBorder: outlineInputBorder,
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
      hintStyle: TextStyle(
          color: ColorConstants.white,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          wordSpacing: 0.4),
      labelStyle: TextStyle(
          color: ColorConstants.white,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          wordSpacing: 0.4));
}

IconThemeData get iconThemeData {
  return const IconThemeData(size: 24, color: ColorConstants.white);
}

AppBarTheme get appBarTheme {
  return const AppBarTheme(
    /*
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(245, 245, 245, 1),
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      /*    systemNavigationBarColor: Color(0xFFF8FDFF),
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Color(0xFFF8FDFF),
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true*/
    ),*/
    iconTheme: IconThemeData(color: ColorConstants.white, size: 24),
    actionsIconTheme: IconThemeData(color: ColorConstants.white, size: 30),
    foregroundColor: ColorConstants.red,

    toolbarHeight: 64,
    scrolledUnderElevation: 2,
    elevation: 0,

    centerTitle: true,
    backgroundColor: ColorConstants.black,
    //color: const  Color.fromRGBO(245, 245, 245, 1),
    //surfaceTintColor: const Color.fromRGBO(245, 245, 245, 1),
    //foregroundColor:const  Color.fromRGBO(245, 245, 245, 1),
  );
}

NavigationBarThemeData get navigationBarThemeData {
  return NavigationBarThemeData(
    height: 80,
    indicatorColor: ColorConstants.black,
    labelTextStyle: MaterialStateProperty.all(const TextStyle(
      fontFamily: ApplicationConstants.FONT_FAMILY,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: ColorConstants.white,
    )),
    elevation: 2,
    iconTheme: MaterialStateProperty.all(const IconThemeData(size: 24)),
  );
}
