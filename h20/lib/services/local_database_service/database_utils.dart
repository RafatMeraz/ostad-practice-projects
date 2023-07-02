/// table information for "water_tracker"
class WaterTrackerTableUtils {
  static String tableName = 'water_tracker';
  static String columnId = 'id';
  static String columnTimeStamp = 'timestamp';
  static String columnAmount = 'amount';

  static get tableCreationQuery => "CREATE TABLE $tableName ("
      "$columnId INTEGER PRIMARY KEY,"
      "$columnTimeStamp INTEGER NOT NULL,"
      "$columnAmount INTEGER NOT NULL)";
}
