import 'package:flutter/foundation.dart';

class WaterTracker with ChangeNotifier {
  int _waterIntake = 0;
  int _waterIntakeTarget = 12000;

  int get waterIntake => _waterIntake;

  int get waterIntakeTarget => _waterIntakeTarget;

  double get targetFullFilled =>
      _waterIntake == 0 ? 0 : (_waterIntake / _waterIntakeTarget);

  void incrementWaterIntake(int amount) {
    _waterIntake += amount;
    notifyListeners();
  }
}
