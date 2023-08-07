import 'package:get/get.dart';
import 'package:h20/data/models/water_track.dart';
import 'package:h20/data/repositories/water_tracker_repository.dart';
import 'package:h20/presentation/state_managers/water_tracker_history_controller.dart';

class WaterTracker extends GetxController {
  int _waterIntake = 0;
  int _waterIntakeTarget = 12000;

  int get waterIntake => _waterIntake;

  int get waterIntakeTarget => _waterIntakeTarget;

  double get targetFullFilled =>
      _waterIntake == 0 ? 0 : (_waterIntake / _waterIntakeTarget);

  void initialization(int amount) {
    _waterIntake += amount;
    update();
  }

  Future<void> incrementWaterIntake(int amount) async {
    _waterIntake += amount;
    final waterTrack = WaterTrack(amount: amount, timestamp: DateTime.now().toString());
    final response = await Get.find<WaterTrackerRepository>().addNewWaterTrack(waterTrack);
    response.fold((error) {

    }, (id) {
      waterTrack.id = id;
      Get.find<WaterTrackerHistoryController>().addWaterConsume(waterTrack);
    });
    update();
  }

  void removeWaterIntake(int amount) {
    _waterIntake -= amount;
    update();
  }
}
