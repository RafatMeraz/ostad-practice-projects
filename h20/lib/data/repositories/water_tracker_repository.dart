import 'package:dartz/dartz.dart';
import 'package:h20/data/data_sources/water_tracker/water_tracker_data_source.dart';
import 'package:h20/data/models/base_error.dart';
import 'package:h20/data/models/success_response.dart';
import 'package:h20/data/models/water_track.dart';

class WaterTrackerRepository {
  final WaterTrackerDataSource _waterTrackerDataSource;

  WaterTrackerRepository(this._waterTrackerDataSource);

  Future<Either<BaseError, int>> addNewWaterTrack(WaterTrack waterTrack) {
    return _waterTrackerDataSource.addNewWaterTrack(waterTrack);
  }

  Future<Either<BaseError, List<WaterTrack>>> getDailyWaterTrack(
      int date, int month, int year) {
    return _waterTrackerDataSource.getWaterTrackDailyHistory(date, month, year);
  }

  Future<Either<BaseError, SuccessResponse>> deleteWaterTrack(int id) async {
    return _waterTrackerDataSource.deleteWaterTrack(id);
  }
}
