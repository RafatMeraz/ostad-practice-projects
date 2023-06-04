import 'package:flutter/material.dart';
import 'package:h20/presentation/screens/splash_screen.dart';
import 'package:h20/presentation/utils/color_utils.dart';

class H2OApp extends StatelessWidget {
  const H2OApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: ColorUtils.getMaterialColor(ColorUtils.spanishSkyBlue),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: ColorUtils.getMaterialColor(ColorUtils.spanishSkyBlue),
      ),
      home: const SplashScreen(),
    );
  }
}
