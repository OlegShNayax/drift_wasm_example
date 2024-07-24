import 'package:drift/drift.dart';
import 'package:drift_wasm_example/database/drift_database.dart';
import 'package:drift_wasm_example/database/entities/drift_actor_entity.dart';
import 'package:drift_wasm_example/database/tables/drift_actor_table.dart';

part 'drift_actor_dao.g.dart';

@DriftAccessor(tables: [DriftActorTable])
class DriftActorDao extends DatabaseAccessor<DriftDatabaseImpl>
    with _$DriftActorDaoMixin {
  DriftActorDao(DriftDatabaseImpl db) : super(db);

  @override
  Future<void> insertActors(List<DriftActorEntity> actors) {
    return batch((batch) {
      batch.insertAll(driftActorTable, actors,
          mode: InsertMode.insertOrReplace);
    });
  }

  @override
  Future<List<DriftActorEntity>> getActors() {
    return (select(driftActorTable)).get();
  }
}
