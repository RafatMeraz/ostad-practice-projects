import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_color_generator/widget/color_text.dart';
import 'package:gradient_color_generator/widget/tap_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    for (int i = 0; i <= 7; i++) {
      colorValues.add(random.nextInt(256));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    firstColor = Color.fromARGB(colorValues[0], colorValues[1], colorValues[2],
        colorValues[3]); // [a,r,g,b]
    secondColor = Color.fromARGB(
        colorValues[4], colorValues[5], colorValues[6], colorValues[7]);

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [firstColor, secondColor],
            ),
          ),
          child: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColorText(
                    color: firstColor,
                    onTap: () => copyText(firstColor.toString())
                  ),
                  TapButton(onTap: updateColor),
                  ColorText(
                    color: secondColor,
                    onTap: () => copyText(secondColor.toString())
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void updateColor() {
    setState(() {
      colorValues.clear();
      for (int i = 0; i <= 7; i++) {
        colorValues.add(random.nextInt(256));
      }
    });
  }

  copyText(String colorText) {
    Clipboard.setData(ClipboardData(text: colorText));

    Fluttertoast.showToast(
      msg: "Color code copied!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 15.0
    );
  }
}
