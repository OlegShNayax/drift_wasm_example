import 'package:drift/drift.dart';
import 'package:drift_wasm_example/database/entities/drift_actor_entity.dart';

@UseRowClass(DriftActorEntity)
class DriftActorTable extends Table {
  @override
  String get tableName => 'actor';

  TextColumn get actorID => text().named("actorID").nullable()();
  TextColumn get parentActorID => text().named("parentActorID").nullable()();
  TextColumn get actorDescription => text().named("actorDescription").nullable()();
  TextColumn get actorDistributorId => text().named("actorDistributorId").nullable()();
  IntColumn get actorTypeID => integer().named("actorTypeID").nullable()();
  IntColumn get actorStatus => integer().named("actorStatus").nullable()();
  IntColumn get actorMachinesCount => integer().named("actorMachinesCount").nullable()();

  @override
  Set<Column>? get primaryKey => {actorID};
}
