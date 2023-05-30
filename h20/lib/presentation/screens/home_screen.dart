import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:h20/models/water_tracker.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('H20'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<WaterTracker>(
              builder: (context, waterTracker, _) {
                return Text(
                  'Water Intake: ${waterTracker.waterIntake} ml',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Increment water intake
                Provider.of<WaterTracker>(context, listen: false).incrementWaterIntake(250);
              },
              child: Text('Add 250 ml'),
            ),
          ],
        ),
      ),
    );
  }
}
