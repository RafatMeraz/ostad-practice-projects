import 'package:flutter/material.dart';
import 'package:h20/presentation/screens/splash_screen.dart';

class H2OApp extends StatelessWidget {
  const H2OApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      home: const SplashScreen(),
    );
  }
}
