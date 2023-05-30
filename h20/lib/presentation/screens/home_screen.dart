import 'package:flutter/material.dart';
import 'package:h20/presentation/screens/reminder_screen.dart';
import 'package:h20/presentation/screens/weekly_report_screen.dart';
import 'package:provider/provider.dart';
import 'package:h20/models/water_tracker.dart';

import 'daily_report_screen.dart';
import 'monthly_report_screen.dart';

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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DailyReportScreen()),
                );
              },
              child: Text('Daily Report'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeeklyReportScreen()),
                );
              },
              child: Text('Weekly Report'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MonthlyReportScreen()),
                );
              },
              child: Text('Monthly Report'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReminderScreen()),
                );
              },
              child: Text('Set Reminder'),
            ),
          ],
        ),
      ),
    );
  }
}
