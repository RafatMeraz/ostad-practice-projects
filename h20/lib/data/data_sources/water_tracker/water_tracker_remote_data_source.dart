import 'package:h20/data/data_sources/water_tracker/water_tracker_data_source.dart';
import 'package:h20/data/models/water_track.dart';

class WaterTrackerRemoteDataSource extends WaterTrackerDataSource {

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

  @override
  Future<bool> addNewWaterTrack(WaterTrack waterTrack) {
    // TODO: implement addNewWaterTrack
    throw UnimplementedError();
  }

}