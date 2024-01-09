import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pitza_mitza/constant/solid_color.dart';
import 'package:pitza_mitza/gen/fonts.gen.dart';
import 'package:pitza_mitza/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('fa'),
      theme: ThemeData(

        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: SolidColor.textFieldBorderSideColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: SolidColor.textFieldBorderSideColor)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStateProperty.all(SolidColor.primaryColor),
            fixedSize: MaterialStateProperty.all(
                Size(size.width / 1.1, size.height / 15)),
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: FontFamily.kalameh,
            fontSize: 20,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w700,
          ),
          displayMedium: TextStyle(
            fontFamily: FontFamily.kalameh,
            fontSize: 20,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 14,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 12,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 10,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 20,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 16,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 14,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w500,
          ),
          labelLarge: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 16,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w700,
          ),
          labelMedium: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 14,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w600,
          ),
          labelSmall: TextStyle(
            fontFamily: FontFamily.iransansX,
            fontSize: 12,
            color: SolidColor.darkColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: SolidColor.primaryColor),
      ),
      home: const SplashScreen(),
    );
  }
}
