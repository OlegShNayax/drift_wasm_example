import 'package:drift_wasm_example/database/dao/drift_actor_dao.dart';
import 'package:drift_wasm_example/database/entities/drift_actor_entity.dart';
import 'package:drift_wasm_example/database/tables/drift_actor_table.dart';
import 'package:drift/drift.dart';

part 'drift_database.g.dart';

@DriftDatabase(tables: [
  DriftActorTable,
], daos: [
  DriftActorDao
])
class DriftDatabaseImpl extends _$DriftDatabaseImpl{
  DriftDatabaseImpl(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;


}