import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Reminder'),
      ),
      body: Center(
        child: Text('This is the Reminder Screen'),
      ),
    );
  }
}