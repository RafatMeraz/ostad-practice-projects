import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h20/presentation/widgets/scroller_button_list.dart';
import 'package:h20/presentation/state_managers/water_tracker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H20'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<WaterTracker>(
              builder: (waterTracker) {
                return Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CircularProgressIndicator(
                        value: waterTracker.targetFullFilled,
                        backgroundColor: Theme.of(context).primaryColorLight,
                        color: waterTracker.targetFullFilled >= 1
                            ? Colors.green
                            : Theme.of(context).primaryColorDark,
                        strokeWidth: 10,
                      ),
                    ),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.water_drop_outlined,
                            color: Colors.blue,
                            size: 36,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${waterTracker.waterIntakeTarget}/${waterTracker.waterIntake} ml',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 16),
            ScrollerButtonList(
              scrollDirection: Axis.horizontal,
              selectedIndex: 1,
              items: [
                ScrollerButtonItem('250 ml', 250),
                ScrollerButtonItem('500 ml', 500),
                ScrollerButtonItem('800 ml', 800),
                ScrollerButtonItem('1L', 1000),
              ],
            ),
            // ListView.builder(itemBuilder: (context, index) {
            //
            // })
          ],
        ),
      ),
    );
  }
}