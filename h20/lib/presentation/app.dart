import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h20/dependency_manager.dart';
import 'package:h20/presentation/screens/home_screen.dart';
import 'package:h20/presentation/screens/splash_screen.dart';

void main() {
  runApp(const H2OApp());
}

class H2OApp extends StatelessWidget {
  const H2OApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        initialBinding: DependencyManager(), // all dependency initializer
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => const HomeScreen(),
        },
    );
  }
}