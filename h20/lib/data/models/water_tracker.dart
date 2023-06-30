import 'package:flutter/foundation.dart';

class WaterTracker with ChangeNotifier {
  int _waterIntake = 0;

  int get waterIntake => _waterIntake;

  void incrementWaterIntake(int amount) {
    _waterIntake += amount;
    notifyListeners();
  }
}
