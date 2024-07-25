import 'package:drift/wasm.dart';
import 'package:drift_wasm_example/database/dao/drift_actor_dao.dart';
import 'package:drift_wasm_example/database/entities/drift_actor_entity.dart';
import 'package:drift_wasm_example/database/tables/drift_actor_table.dart';
import 'package:drift/drift.dart';

part 'drift_database.g.dart';

DatabaseConnection connectOnWeb() {
  return DatabaseConnection.delayed(Future(() async {
    final result = await WasmDatabase.open(
      databaseName: 'my_app_db', // prefer to only use valid identifiers here
      sqlite3Uri: Uri.parse('sqlite3.wasm'),
      driftWorkerUri: Uri.parse('drift_worker.js'),
    );

    if (result.missingFeatures.isNotEmpty) {
      // Depending how central local persistence is to your app, you may want
      // to show a warning to the user if only unrealiable implemetentations
      // are available.
      print('Using ${result.chosenImplementation} due to missing browser '
          'features: ${result.missingFeatures}');
    }

    return result.resolvedExecutor;
  }));
}

@DriftDatabase(tables: [
  DriftActorTable,
], daos: [
  DriftActorDao
])
class DriftDatabaseImpl extends _$DriftDatabaseImpl {
  DriftDatabaseImpl._(super.e);

  factory DriftDatabaseImpl() => DriftDatabaseImpl._(connectOnWeb());

  @override
  int get schemaVersion => 1;
}
