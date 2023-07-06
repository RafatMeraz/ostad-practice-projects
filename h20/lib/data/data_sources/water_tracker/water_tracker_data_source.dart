import 'package:h20/data/models/water_track.dart';

abstract class WaterTrackerDataSource {
  Future<bool> addNewWaterTrack(WaterTrack waterTrack);

  Future<void> deleteWaterTrack(int id);

  Future<List<WaterTrack>> getWaterTrackDailyHistory(int date, int month, int year);

  Future<void> getWaterTrackMonthlyHistory(int month, int year);
}
