import 'package:flutter/material.dart';
import 'package:h20/presentation/screens/home_screen.dart';
import 'package:h20/presentation/screens/splash_screen.dart';

class H2OApp extends StatelessWidget {
  const H2OApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set the initial route to '/'
      routes: {
        '/': (context) => SplashScreen(), // Define the splash screen as the '/' route
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
