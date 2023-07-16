import 'package:get/get.dart';
import 'package:h20/data/data_sources/water_tracker/water_tracker_local_data_source.dart';
import 'package:h20/data/repositories/water_tracker_repository.dart';
import 'package:h20/presentation/state_managers/water_tracker.dart';
import 'package:h20/presentation/state_managers/water_tracker_history_controller.dart';
import 'package:h20/services/local_database_service/database_provider.dart';

/// this init function will initialize all the data source and repository

class DependencyManager extends Bindings {
  @override
  Future<void> dependencies() async {
    final database = await DBProvider.db.database;
    Get.lazyPut(() => WaterTrackerLocalDataSource(database));
    Get.lazyPut(
        () => WaterTrackerRepository(Get.find<WaterTrackerLocalDataSource>()));
    Get.put<WaterTracker>(WaterTracker());
    Get.put<WaterTrackerHistoryController>(WaterTrackerHistoryController());
  }
}
