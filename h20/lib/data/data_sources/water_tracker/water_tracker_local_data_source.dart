import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:h20/data/data_sources/water_tracker/water_tracker_data_source.dart';
import 'package:h20/data/models/base_error.dart';
import 'package:h20/data/models/success_response.dart';
import 'package:h20/data/models/water_track.dart';
import 'package:h20/services/local_database_service/database_utils.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class WaterTrackerLocalDataSource extends WaterTrackerDataSource {
  final Database _database;

  WaterTrackerLocalDataSource(this._database);

  @override
  Future<Either<BaseError, int>> addNewWaterTrack(WaterTrack waterTrack) async {
    try {
      int result = await _database.insert(
          WaterTrackerTableUtils.tableName, waterTrack.toMap());
      if (result == 0) {
        return Left(BaseError(message: 'Add to local database failed!'));
      }
      return Right(result);
    } catch (e) {
      return Left(BaseError(message: 'Add to local database failed!'));
    }
  }

  @override
  Future<Either<BaseError, SuccessResponse>> deleteWaterTrack(int id) async {
    try {
      int result = await _database.delete(WaterTrackerTableUtils.tableName,
          where: "${WaterTrackerTableUtils.columnId} = ?", whereArgs: [id]);
      if (result == 0) {
        return Left(BaseError(
            message: 'Water track could not delete from local database'));
      }
      return Right(SuccessResponse(message: 'Deleted successfully!'));
    } catch (e) {
      return Left(
          BaseError(message: 'Delete from local database has been failed'));
    }
  }

  @override
  Future<Either<BaseError, List<WaterTrack>>> getWaterTrackDailyHistory(
      int date, int month, int year) async {
    try {
      List<WaterTrack> waterTracks = [];
      final dateTime =
          DateFormat("yyyy-MM-dd").format(DateTime(year, month, date));
      final response = await _database.query(WaterTrackerTableUtils.tableName,
          where: "date(${WaterTrackerTableUtils.columnTimeStamp}) = ?",
          whereArgs: [dateTime]);

      if (response.isNotEmpty) {
        for (var element in response) {
          waterTracks.add(WaterTrack.fromJson(element));
        }
      }
      return Right(waterTracks);
    } catch (e) {
      log(e.toString());
      return Left(BaseError(message: 'fetch from database has been failed'));
    }
  }

  @override
  Future<Either<BaseError, List<WaterTrack>>> getWaterTrackMonthlyHistory(
      int month, int year) {
    // TODO: implement getWaterTrackMonthlyHistory
    throw UnimplementedError();
  }
}
