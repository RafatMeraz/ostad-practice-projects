import 'dart:async';
import 'package:flutter/material.dart';
import 'package:h20/presentation/utils/color_utils.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Lottie.asset('assets/lotties/water-animation.json', width: 100),
          const SizedBox(
            height: 16,
          ),
          Text('Water Reminder',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: ColorUtils.spanishSkyBlue)),
          const Spacer(),
          const Padding(
              padding: EdgeInsets.all(16), child: CircularProgressIndicator()),
          const Row(),
        ],
      ),
    );
  }
}
