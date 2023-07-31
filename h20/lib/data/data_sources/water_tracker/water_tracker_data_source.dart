import 'package:dartz/dartz.dart';
import 'package:h20/data/models/base_error.dart';
import 'package:h20/data/models/success_response.dart';
import 'package:h20/data/models/water_track.dart';

abstract class WaterTrackerDataSource {
  Future<Either<BaseError, int>> addNewWaterTrack(
      WaterTrack waterTrack);

  Future<Either<BaseError, SuccessResponse>> deleteWaterTrack(int id);

  Future<Either<BaseError, List<WaterTrack>>> getWaterTrackDailyHistory(
      int date, int month, int year);

  Future<Either<BaseError, List<WaterTrack>>> getWaterTrackMonthlyHistory(
      int month, int year);
}
