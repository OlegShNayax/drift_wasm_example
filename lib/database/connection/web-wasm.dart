import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
// import 'package:drift/web.dart';
import 'package:drift_wasm_example/database/drift_database.dart';

DatabaseConnection _openDatabaseConnection() {
  return DatabaseConnection.delayed(
    Future<DatabaseConnection>(() async {
      final WasmDatabaseResult result = await WasmDatabase.open(
        databaseName: 'db',
        sqlite3Uri: Uri.parse('sqlite3.wasm'),
        driftWorkerUri: Uri.parse('drift_worker.js'),
      );

      if (result.missingFeatures.isNotEmpty) {
        print('Using ${result.chosenImplementation} due to unsupported '
            'browser features: ${result.missingFeatures}');
      }

      return result.resolvedExecutor;
    }),
  );
}

Future<DriftDatabaseImpl> createDatabase() async {
    // return DriftDatabaseImpl(WebDatabase.withStorage(await DriftWebStorage.indexedDbIfSupported('db'));
  return DriftDatabaseImpl(_openDatabaseConnection());
}