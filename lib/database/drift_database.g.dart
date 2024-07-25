// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $DriftActorTableTable extends DriftActorTable
    with TableInfo<$DriftActorTableTable, DriftActorEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftActorTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _actorIDMeta =
      const VerificationMeta('actorID');
  @override
  late final GeneratedColumn<String> actorID = GeneratedColumn<String>(
      'actorID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _parentActorIDMeta =
      const VerificationMeta('parentActorID');
  @override
  late final GeneratedColumn<String> parentActorID = GeneratedColumn<String>(
      'parentActorID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _actorDescriptionMeta =
      const VerificationMeta('actorDescription');
  @override
  late final GeneratedColumn<String> actorDescription = GeneratedColumn<String>(
      'actorDescription', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _actorDistributorIdMeta =
      const VerificationMeta('actorDistributorId');
  @override
  late final GeneratedColumn<String> actorDistributorId =
      GeneratedColumn<String>('actorDistributorId', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _actorTypeIDMeta =
      const VerificationMeta('actorTypeID');
  @override
  late final GeneratedColumn<int> actorTypeID = GeneratedColumn<int>(
      'actorTypeID', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _actorStatusMeta =
      const VerificationMeta('actorStatus');
  @override
  late final GeneratedColumn<int> actorStatus = GeneratedColumn<int>(
      'actorStatus', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _actorMachinesCountMeta =
      const VerificationMeta('actorMachinesCount');
  @override
  late final GeneratedColumn<int> actorMachinesCount = GeneratedColumn<int>(
      'actorMachinesCount', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        actorID,
        parentActorID,
        actorDescription,
        actorDistributorId,
        actorTypeID,
        actorStatus,
        actorMachinesCount
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'actor';
  @override
  VerificationContext validateIntegrity(Insertable<DriftActorEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('actorID')) {
      context.handle(_actorIDMeta,
          actorID.isAcceptableOrUnknown(data['actorID']!, _actorIDMeta));
    }
    if (data.containsKey('parentActorID')) {
      context.handle(
          _parentActorIDMeta,
          parentActorID.isAcceptableOrUnknown(
              data['parentActorID']!, _parentActorIDMeta));
    }
    if (data.containsKey('actorDescription')) {
      context.handle(
          _actorDescriptionMeta,
          actorDescription.isAcceptableOrUnknown(
              data['actorDescription']!, _actorDescriptionMeta));
    }
    if (data.containsKey('actorDistributorId')) {
      context.handle(
          _actorDistributorIdMeta,
          actorDistributorId.isAcceptableOrUnknown(
              data['actorDistributorId']!, _actorDistributorIdMeta));
    }
    if (data.containsKey('actorTypeID')) {
      context.handle(
          _actorTypeIDMeta,
          actorTypeID.isAcceptableOrUnknown(
              data['actorTypeID']!, _actorTypeIDMeta));
    }
    if (data.containsKey('actorStatus')) {
      context.handle(
          _actorStatusMeta,
          actorStatus.isAcceptableOrUnknown(
              data['actorStatus']!, _actorStatusMeta));
    }
    if (data.containsKey('actorMachinesCount')) {
      context.handle(
          _actorMachinesCountMeta,
          actorMachinesCount.isAcceptableOrUnknown(
              data['actorMachinesCount']!, _actorMachinesCountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {actorID};
  @override
  DriftActorEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftActorEntity(
      parentActorID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parentActorID']),
      actorID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}actorID']),
      actorDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}actorDescription']),
      actorDistributorId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}actorDistributorId']),
      actorTypeID: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}actorTypeID']),
      actorStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}actorStatus']),
      actorMachinesCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}actorMachinesCount']),
    );
  }

  @override
  $DriftActorTableTable createAlias(String alias) {
    return $DriftActorTableTable(attachedDatabase, alias);
  }
}

class DriftActorTableCompanion extends UpdateCompanion<DriftActorEntity> {
  final Value<String?> actorID;
  final Value<String?> parentActorID;
  final Value<String?> actorDescription;
  final Value<String?> actorDistributorId;
  final Value<int?> actorTypeID;
  final Value<int?> actorStatus;
  final Value<int?> actorMachinesCount;
  final Value<int> rowid;
  const DriftActorTableCompanion({
    this.actorID = const Value.absent(),
    this.parentActorID = const Value.absent(),
    this.actorDescription = const Value.absent(),
    this.actorDistributorId = const Value.absent(),
    this.actorTypeID = const Value.absent(),
    this.actorStatus = const Value.absent(),
    this.actorMachinesCount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DriftActorTableCompanion.insert({
    this.actorID = const Value.absent(),
    this.parentActorID = const Value.absent(),
    this.actorDescription = const Value.absent(),
    this.actorDistributorId = const Value.absent(),
    this.actorTypeID = const Value.absent(),
    this.actorStatus = const Value.absent(),
    this.actorMachinesCount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<DriftActorEntity> custom({
    Expression<String>? actorID,
    Expression<String>? parentActorID,
    Expression<String>? actorDescription,
    Expression<String>? actorDistributorId,
    Expression<int>? actorTypeID,
    Expression<int>? actorStatus,
    Expression<int>? actorMachinesCount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (actorID != null) 'actorID': actorID,
      if (parentActorID != null) 'parentActorID': parentActorID,
      if (actorDescription != null) 'actorDescription': actorDescription,
      if (actorDistributorId != null) 'actorDistributorId': actorDistributorId,
      if (actorTypeID != null) 'actorTypeID': actorTypeID,
      if (actorStatus != null) 'actorStatus': actorStatus,
      if (actorMachinesCount != null) 'actorMachinesCount': actorMachinesCount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DriftActorTableCompanion copyWith(
      {Value<String?>? actorID,
      Value<String?>? parentActorID,
      Value<String?>? actorDescription,
      Value<String?>? actorDistributorId,
      Value<int?>? actorTypeID,
      Value<int?>? actorStatus,
      Value<int?>? actorMachinesCount,
      Value<int>? rowid}) {
    return DriftActorTableCompanion(
      actorID: actorID ?? this.actorID,
      parentActorID: parentActorID ?? this.parentActorID,
      actorDescription: actorDescription ?? this.actorDescription,
      actorDistributorId: actorDistributorId ?? this.actorDistributorId,
      actorTypeID: actorTypeID ?? this.actorTypeID,
      actorStatus: actorStatus ?? this.actorStatus,
      actorMachinesCount: actorMachinesCount ?? this.actorMachinesCount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (actorID.present) {
      map['actorID'] = Variable<String>(actorID.value);
    }
    if (parentActorID.present) {
      map['parentActorID'] = Variable<String>(parentActorID.value);
    }
    if (actorDescription.present) {
      map['actorDescription'] = Variable<String>(actorDescription.value);
    }
    if (actorDistributorId.present) {
      map['actorDistributorId'] = Variable<String>(actorDistributorId.value);
    }
    if (actorTypeID.present) {
      map['actorTypeID'] = Variable<int>(actorTypeID.value);
    }
    if (actorStatus.present) {
      map['actorStatus'] = Variable<int>(actorStatus.value);
    }
    if (actorMachinesCount.present) {
      map['actorMachinesCount'] = Variable<int>(actorMachinesCount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftActorTableCompanion(')
          ..write('actorID: $actorID, ')
          ..write('parentActorID: $parentActorID, ')
          ..write('actorDescription: $actorDescription, ')
          ..write('actorDistributorId: $actorDistributorId, ')
          ..write('actorTypeID: $actorTypeID, ')
          ..write('actorStatus: $actorStatus, ')
          ..write('actorMachinesCount: $actorMachinesCount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftDatabaseImpl extends GeneratedDatabase {
  _$DriftDatabaseImpl(QueryExecutor e) : super(e);
  $DriftDatabaseImplManager get managers => $DriftDatabaseImplManager(this);
  late final $DriftActorTableTable driftActorTable =
      $DriftActorTableTable(this);
  late final DriftActorDao driftActorDao =
      DriftActorDao(this as DriftDatabaseImpl);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftActorTable];
}

typedef $$DriftActorTableTableCreateCompanionBuilder = DriftActorTableCompanion
    Function({
  Value<String?> actorID,
  Value<String?> parentActorID,
  Value<String?> actorDescription,
  Value<String?> actorDistributorId,
  Value<int?> actorTypeID,
  Value<int?> actorStatus,
  Value<int?> actorMachinesCount,
  Value<int> rowid,
});
typedef $$DriftActorTableTableUpdateCompanionBuilder = DriftActorTableCompanion
    Function({
  Value<String?> actorID,
  Value<String?> parentActorID,
  Value<String?> actorDescription,
  Value<String?> actorDistributorId,
  Value<int?> actorTypeID,
  Value<int?> actorStatus,
  Value<int?> actorMachinesCount,
  Value<int> rowid,
});

class $$DriftActorTableTableTableManager extends RootTableManager<
    _$DriftDatabaseImpl,
    $DriftActorTableTable,
    DriftActorEntity,
    $$DriftActorTableTableFilterComposer,
    $$DriftActorTableTableOrderingComposer,
    $$DriftActorTableTableCreateCompanionBuilder,
    $$DriftActorTableTableUpdateCompanionBuilder> {
  $$DriftActorTableTableTableManager(
      _$DriftDatabaseImpl db, $DriftActorTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DriftActorTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DriftActorTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String?> actorID = const Value.absent(),
            Value<String?> parentActorID = const Value.absent(),
            Value<String?> actorDescription = const Value.absent(),
            Value<String?> actorDistributorId = const Value.absent(),
            Value<int?> actorTypeID = const Value.absent(),
            Value<int?> actorStatus = const Value.absent(),
            Value<int?> actorMachinesCount = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftActorTableCompanion(
            actorID: actorID,
            parentActorID: parentActorID,
            actorDescription: actorDescription,
            actorDistributorId: actorDistributorId,
            actorTypeID: actorTypeID,
            actorStatus: actorStatus,
            actorMachinesCount: actorMachinesCount,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> actorID = const Value.absent(),
            Value<String?> parentActorID = const Value.absent(),
            Value<String?> actorDescription = const Value.absent(),
            Value<String?> actorDistributorId = const Value.absent(),
            Value<int?> actorTypeID = const Value.absent(),
            Value<int?> actorStatus = const Value.absent(),
            Value<int?> actorMachinesCount = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftActorTableCompanion.insert(
            actorID: actorID,
            parentActorID: parentActorID,
            actorDescription: actorDescription,
            actorDistributorId: actorDistributorId,
            actorTypeID: actorTypeID,
            actorStatus: actorStatus,
            actorMachinesCount: actorMachinesCount,
            rowid: rowid,
          ),
        ));
}

class $$DriftActorTableTableFilterComposer
    extends FilterComposer<_$DriftDatabaseImpl, $DriftActorTableTable> {
  $$DriftActorTableTableFilterComposer(super.$state);
  ColumnFilters<String> get actorID => $state.composableBuilder(
      column: $state.table.actorID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get parentActorID => $state.composableBuilder(
      column: $state.table.parentActorID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get actorDescription => $state.composableBuilder(
      column: $state.table.actorDescription,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get actorDistributorId => $state.composableBuilder(
      column: $state.table.actorDistributorId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get actorTypeID => $state.composableBuilder(
      column: $state.table.actorTypeID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get actorStatus => $state.composableBuilder(
      column: $state.table.actorStatus,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get actorMachinesCount => $state.composableBuilder(
      column: $state.table.actorMachinesCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftActorTableTableOrderingComposer
    extends OrderingComposer<_$DriftDatabaseImpl, $DriftActorTableTable> {
  $$DriftActorTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get actorID => $state.composableBuilder(
      column: $state.table.actorID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get parentActorID => $state.composableBuilder(
      column: $state.table.parentActorID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get actorDescription => $state.composableBuilder(
      column: $state.table.actorDescription,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get actorDistributorId => $state.composableBuilder(
      column: $state.table.actorDistributorId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get actorTypeID => $state.composableBuilder(
      column: $state.table.actorTypeID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get actorStatus => $state.composableBuilder(
      column: $state.table.actorStatus,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get actorMachinesCount => $state.composableBuilder(
      column: $state.table.actorMachinesCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $DriftDatabaseImplManager {
  final _$DriftDatabaseImpl _db;
  $DriftDatabaseImplManager(this._db);
  $$DriftActorTableTableTableManager get driftActorTable =>
      $$DriftActorTableTableTableManager(_db, _db.driftActorTable);
}
