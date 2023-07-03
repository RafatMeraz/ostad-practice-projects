import 'package:h20/data/data_sources/water_tracker/water_tracker_data_source.dart';
import 'package:h20/data/models/water_track.dart';
import 'package:h20/services/local_database_service/database_utils.dart';
import 'package:sqflite/sqflite.dart';

class WaterTrackerLocalDataSource extends WaterTrackerDataSource {
  final Database _database;

  WaterTrackerLocalDataSource(this._database);

  @override
  Future<bool> addNewWaterTrack(WaterTrack waterTrack) async {
    return await _database.insert(
            WaterTrackerTableUtils.tableName, waterTrack.toMap()) !=
        0;
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