import 'package:get/get.dart';
import 'package:h20/data/data_sources/water_tracker/water_tracker_local_data_source.dart';
import 'package:h20/data/repositories/water_tracker_repository.dart';
import 'package:h20/services/local_database_service/database_provider.dart';

/// this init function will initialize all the data source and repository
Future<void> initialize() async {
  final database = await DBProvider.db.database;
  Get.lazyPut(() => WaterTrackerLocalDataSource(database));
  Get.lazyPut(() => WaterTrackerRepository(Get.find()));
}