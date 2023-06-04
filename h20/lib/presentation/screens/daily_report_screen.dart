import 'package:flutter/material.dart';

class DailyReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int totalWaterConsumed = 1200; // in milliliters

    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Report  '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total Water Consumed Today ',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '$totalWaterConsumed ml',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
