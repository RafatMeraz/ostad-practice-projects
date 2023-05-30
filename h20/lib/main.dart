import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:h20/models/water_tracker.dart';
import 'package:h20/presentation/screens/home_screen.dart';
import 'package:h20/presentation/screens/splash_screen.dart';

void main() {
  runApp(H2OApp());
}

class H2OApp extends StatelessWidget {
  const H2OApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WaterTracker>(
          create: (_) => WaterTracker(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Splash Screen',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
