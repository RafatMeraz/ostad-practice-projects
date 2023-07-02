import 'package:h20/data/data_sources/water_tracker/water_tracker_data_source.dart';

class WaterTrackerLocalDataSource extends WaterTrackerDataSource {
  @override
  Future<void> addNewWaterTrack(int amount, int timestamp) {
    // TODO: implement addNewWaterTrack
    throw UnimplementedError();
  }

  @override
  Future<void> deleteWaterTrack(int id) {
    // TODO: implement deleteWaterTrack
    throw UnimplementedError();
  }

  @override
  Future<void> getWaterTrackDailyHistory(int date, int month, int year) {
    // TODO: implement getWaterTrackDailyHistory
    throw UnimplementedError();
  }

  @override
  Future<void> getWaterTrackMonthlyHistory(int month, int year) {
    // TODO: implement getWaterTrackMonthlyHistory
    throw UnimplementedError();
  }

}