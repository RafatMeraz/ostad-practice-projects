import 'package:get/get.dart';
import 'package:h20/data/models/water_track.dart';
import 'package:h20/data/repositories/water_tracker_repository.dart';

class WaterTrackerHistoryController extends GetxController {
  List<WaterTrack> _list = [];

  List<WaterTrack> get historyList => _list;

  void addWaterConsume(WaterTrack waterTrack) {
    _list.add(waterTrack);
    update();
  }

  Future<void> deleteWaterConsume(int index) async {
    await Get.find<WaterTrackerRepository>()
        .deleteWaterTrack(_list.elementAt(index).id!);
    _list.removeAt(index);
    update();
  }

  Future<void> getWaterTracks(int date, int month, int year) async {
    _list = await Get.find<WaterTrackerRepository>()
        .getDailyWaterTrack(date, month, year);
    update();
  }
}
