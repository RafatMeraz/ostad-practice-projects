import 'package:h20/data/data_sources/water_tracker/water_tracker_data_source.dart';
import 'package:h20/data/models/water_track.dart';
import 'package:h20/services/local_database_service/database_utils.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class WaterTrackerLocalDataSource extends WaterTrackerDataSource {
  final Database _database;

  WaterTrackerLocalDataSource(this._database);

  @override
  Future<int> addNewWaterTrack(WaterTrack waterTrack) async {
    return await _database.insert(
            WaterTrackerTableUtils.tableName, waterTrack.toMap());
  }

  @override
  Future<void> deleteWaterTrack(int id) async {
    await _database.delete(WaterTrackerTableUtils.tableName,
        where: "${WaterTrackerTableUtils.columnId} = ?", whereArgs: [id]);
  }

  @override
  Future<List<WaterTrack>> getWaterTrackDailyHistory(int date, int month, int year) async {
    List<WaterTrack> waterTracks = [];
    final dateTime = DateFormat("yyyy-MM-dd").format(DateTime(year, month, date));
    final response = await _database.query(WaterTrackerTableUtils.tableName,
        where:
            "date(${WaterTrackerTableUtils.columnTimeStamp}) = ?",
        whereArgs: [dateTime]);

    if (response.isNotEmpty) {
      for (var element in response) {
        waterTracks.add(WaterTrack.fromJson(element));
      }
    }
    return waterTracks;
  }

  @override
  Future<void> getWaterTrackMonthlyHistory(int month, int year) {
    // TODO: implement getWaterTrackMonthlyHistory
    throw UnimplementedError();
  }

}