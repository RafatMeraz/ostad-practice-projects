import 'package:get/get.dart';
import 'package:h20/data/models/water_track.dart';

class WaterTrackerHistoryController extends GetxController {
  final List<WaterTrack> _list = [];

  List<WaterTrack> get historyList => _list;

  void addWaterConsume(WaterTrack waterTrack) {
    _list.add(waterTrack);
    update();
  }

  void deleteWaterConsume(int index) {
    _list.removeAt(index);
    update();
  }
}