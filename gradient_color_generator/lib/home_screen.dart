import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Random random = Random();

  List<int> colorValues = [];
  late Color firstColor;
  late Color secondColor;

  @override
  void initState() {
    for(int i=0; i<=7; i++) {
      colorValues.add(random.nextInt(256));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    firstColor = Color.fromARGB(colorValues[0], colorValues[1], colorValues[2], colorValues[3]); // [a,r,g,b]
    secondColor = Color.fromARGB(colorValues[4], colorValues[5], colorValues[6], colorValues[7]);

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                firstColor,
                secondColor
              ],
            ),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: (){
                updateColor();
              },
              child: Text('Tap'),
            ),
          ),
        )
    );
  }

  void updateColor() {
    setState(() {
      colorValues.clear();
      for(int i=0; i<=7; i++) {
        colorValues.add(random.nextInt(256));
      }
    });


    print('F: $firstColor, L: $secondColor');
  }
}
