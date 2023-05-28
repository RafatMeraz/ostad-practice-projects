import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        fontFamily: 'Noto_Sans',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: .6,
            ),
          ),
        ),
        textTheme: const TextTheme(
            // by default there are several default text styles like titleLarge
            // you can access all of these by Theme.of(context).textTheme.yourDesireStyle
            // even you can customize a previous style
            titleLarge: TextStyle(color: Colors.black)),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
        fontFamily: 'Noto_Sans',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: .6,
            ),
          ),
        ),
        textTheme: const TextTheme(
            // by default there are several default text styles like titleLarge
            // you can access all of these by Theme.of(context).textTheme.yourDesireStyle
            // even you can customize a previous style
            titleLarge: TextStyle(color: Colors.teal)),
      ),
      themeMode: ThemeMode.light,
      //  you can change theme by changing value .light/.dark
      home: const HomeScreen(),
    );
  }
}
