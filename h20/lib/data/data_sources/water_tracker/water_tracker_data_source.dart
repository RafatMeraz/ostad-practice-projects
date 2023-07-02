abstract class WaterTrackerDataSource {
  Future<void> addNewWaterTrack(int amount, int timestamp);

  Future<void> deleteWaterTrack(int id);

  Future<void> getWaterTrackDailyHistory(int date, int month, int year);

  Future<void> getWaterTrackMonthlyHistory(int month, int year);
}
