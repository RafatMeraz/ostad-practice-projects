import 'package:flutter/material.dart';
import 'package:h20/presentation/utils/color_utils.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 2)).then((_) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      });
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
