import 'package:flutter/material.dart';
import 'package:h20/presentation/screens/reminder_screen.dart';
import 'package:h20/presentation/screens/weekly_report_screen.dart';
import 'package:provider/provider.dart';
import 'package:h20/data/models/water_tracker.dart';

import 'daily_report_screen.dart';
import 'monthly_report_screen.dart';

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
            Consumer<WaterTracker>(
              builder: (context, waterTracker, _) {
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

            ElevatedButton(
              onPressed: () {
                // Increment water intake
                Provider.of<WaterTracker>(context, listen: false)
                    .incrementWaterIntake(250);
              },
              child: const Text('Add 250 ml'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DailyReportScreen()),
                );
              },
              child: const Text('Daily Report'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeeklyReportScreen()),
                );
              },
              child: const Text('Weekly Report'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MonthlyReportScreen()),
                );
              },
              child: const Text('Monthly Report'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReminderScreen()),
                );
              },
              child: const Text('Set Reminder'),
            ),
          ],
        ),
      ),
    );
  }
}
