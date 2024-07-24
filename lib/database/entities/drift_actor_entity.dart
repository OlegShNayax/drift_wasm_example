import 'package:drift/drift.dart';
import 'package:drift_wasm_example/database/drift_database.dart';

class DriftActorEntity implements Insertable<DriftActorEntity> {
  String? actorID;
  String? parentActorID;
  String? actorDescription;
  String? actorDistributorId;
  int? actorTypeID;
  int? actorStatus;
  int? actorMachinesCount;

  DriftActorEntity(
      {this.parentActorID,
      this.actorID,
      this.actorDescription,
      this.actorDistributorId,
      this.actorTypeID,
      this.actorStatus,
      this.actorMachinesCount});

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return DriftActorTableCompanion(
      actorID: Value(actorID),
      parentActorID: Value(parentActorID),
      actorDescription: Value(actorDescription),
      actorDistributorId: Value(actorDistributorId),
      actorTypeID: Value(actorTypeID),
      actorStatus: Value(actorStatus),
      actorMachinesCount: Value(actorMachinesCount),
    ).toColumns(nullToAbsent);
  }

  @override
  String toString() {
    return 'DriftActorEntity{actorID: $actorID, parentActorID: $parentActorID, actorDescription: $actorDescription, actorDistributorId: $actorDistributorId, actorTypeID: $actorTypeID, actorStatus: $actorStatus, actorMachinesCount: $actorMachinesCount}';
  }
}
