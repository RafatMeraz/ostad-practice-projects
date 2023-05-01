import 'dart:math';

import 'package:flutter/material.dart';

/*
From this project, you will learn
- Theme
- use of function
- Elevated button
- Random from math
- basic widgets like text, colum, expanded
 */

void main() {
  runApp(const GuessTheNumberApp());
}

class GuessTheNumberApp extends StatelessWidget {
  const GuessTheNumberApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
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
            ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
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
            ),
      ),
      themeMode: ThemeMode.dark, //  you can change theme by changing value .light/.dark
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? number;
  final Random random = Random();

  // this function used for the generating a random number 1..9 for guess
  void guessNumber() {
    number = random.nextInt(10); // here 10 in not included, means inclusive
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess the number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Guess a number from 1 to 9',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    '${number ?? ''}',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => guessNumber(),
                child: const Text('Guess'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
