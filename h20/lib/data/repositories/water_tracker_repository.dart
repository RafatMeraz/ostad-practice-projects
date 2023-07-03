import 'package:h20/data/data_sources/water_tracker/water_tracker_data_source.dart';
import 'package:h20/data/models/water_track.dart';

class WaterTrackerRepository {
  final WaterTrackerDataSource _waterTrackerDataSource;

  WaterTrackerRepository(this._waterTrackerDataSource);

  Future<bool> addNewWaterTrack(WaterTrack waterTrack) {
    return _waterTrackerDataSource.addNewWaterTrack(waterTrack);
  }

  Future<List<WaterTrack>> getDailyWaterTrack(int date, int month, int year) {
    return _waterTrackerDataSource.getWaterTrackDailyHistory(date, month, year);
  }
}
