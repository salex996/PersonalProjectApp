// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdentificarBarStruct extends BaseStruct {
  IdentificarBarStruct({
    int? id,
    String? name,
    int? numberOfTables,
    int? maxPeopleInTables,
    int? numberOfZones,
    int? maxPeopleInZones,
    BringFromCounter? bringFromCounter,
    Status? status,
  })  : _id = id,
        _name = name,
        _numberOfTables = numberOfTables,
        _maxPeopleInTables = maxPeopleInTables,
        _numberOfZones = numberOfZones,
        _maxPeopleInZones = maxPeopleInZones,
        _bringFromCounter = bringFromCounter,
        _status = status;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "number_of_tables" field.
  int? _numberOfTables;
  int get numberOfTables => _numberOfTables ?? 0;
  set numberOfTables(int? val) => _numberOfTables = val;
  void incrementNumberOfTables(int amount) =>
      _numberOfTables = numberOfTables + amount;
  bool hasNumberOfTables() => _numberOfTables != null;

  // "max_people_in_tables" field.
  int? _maxPeopleInTables;
  int get maxPeopleInTables => _maxPeopleInTables ?? 0;
  set maxPeopleInTables(int? val) => _maxPeopleInTables = val;
  void incrementMaxPeopleInTables(int amount) =>
      _maxPeopleInTables = maxPeopleInTables + amount;
  bool hasMaxPeopleInTables() => _maxPeopleInTables != null;

  // "number_of_zones" field.
  int? _numberOfZones;
  int get numberOfZones => _numberOfZones ?? 0;
  set numberOfZones(int? val) => _numberOfZones = val;
  void incrementNumberOfZones(int amount) =>
      _numberOfZones = numberOfZones + amount;
  bool hasNumberOfZones() => _numberOfZones != null;

  // "max_people_in_zones" field.
  int? _maxPeopleInZones;
  int get maxPeopleInZones => _maxPeopleInZones ?? 0;
  set maxPeopleInZones(int? val) => _maxPeopleInZones = val;
  void incrementMaxPeopleInZones(int amount) =>
      _maxPeopleInZones = maxPeopleInZones + amount;
  bool hasMaxPeopleInZones() => _maxPeopleInZones != null;

  // "Bring_from_counter" field.
  BringFromCounter? _bringFromCounter;
  BringFromCounter? get bringFromCounter => _bringFromCounter;
  set bringFromCounter(BringFromCounter? val) => _bringFromCounter = val;
  bool hasBringFromCounter() => _bringFromCounter != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  set status(Status? val) => _status = val;
  bool hasStatus() => _status != null;

  static IdentificarBarStruct fromMap(Map<String, dynamic> data) =>
      IdentificarBarStruct(
        id: castToType<int>(data['id']),
        name: data['Name'] as String?,
        numberOfTables: castToType<int>(data['number_of_tables']),
        maxPeopleInTables: castToType<int>(data['max_people_in_tables']),
        numberOfZones: castToType<int>(data['number_of_zones']),
        maxPeopleInZones: castToType<int>(data['max_people_in_zones']),
        bringFromCounter:
            deserializeEnum<BringFromCounter>(data['Bring_from_counter']),
        status: deserializeEnum<Status>(data['status']),
      );

  static IdentificarBarStruct? maybeFromMap(dynamic data) => data is Map
      ? IdentificarBarStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'Name': _name,
        'number_of_tables': _numberOfTables,
        'max_people_in_tables': _maxPeopleInTables,
        'number_of_zones': _numberOfZones,
        'max_people_in_zones': _maxPeopleInZones,
        'Bring_from_counter': _bringFromCounter?.serialize(),
        'status': _status?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'number_of_tables': serializeParam(
          _numberOfTables,
          ParamType.int,
        ),
        'max_people_in_tables': serializeParam(
          _maxPeopleInTables,
          ParamType.int,
        ),
        'number_of_zones': serializeParam(
          _numberOfZones,
          ParamType.int,
        ),
        'max_people_in_zones': serializeParam(
          _maxPeopleInZones,
          ParamType.int,
        ),
        'Bring_from_counter': serializeParam(
          _bringFromCounter,
          ParamType.Enum,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static IdentificarBarStruct fromSerializableMap(Map<String, dynamic> data) =>
      IdentificarBarStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        numberOfTables: deserializeParam(
          data['number_of_tables'],
          ParamType.int,
          false,
        ),
        maxPeopleInTables: deserializeParam(
          data['max_people_in_tables'],
          ParamType.int,
          false,
        ),
        numberOfZones: deserializeParam(
          data['number_of_zones'],
          ParamType.int,
          false,
        ),
        maxPeopleInZones: deserializeParam(
          data['max_people_in_zones'],
          ParamType.int,
          false,
        ),
        bringFromCounter: deserializeParam<BringFromCounter>(
          data['Bring_from_counter'],
          ParamType.Enum,
          false,
        ),
        status: deserializeParam<Status>(
          data['status'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'IdentificarBarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IdentificarBarStruct &&
        id == other.id &&
        name == other.name &&
        numberOfTables == other.numberOfTables &&
        maxPeopleInTables == other.maxPeopleInTables &&
        numberOfZones == other.numberOfZones &&
        maxPeopleInZones == other.maxPeopleInZones &&
        bringFromCounter == other.bringFromCounter &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        numberOfTables,
        maxPeopleInTables,
        numberOfZones,
        maxPeopleInZones,
        bringFromCounter,
        status
      ]);
}

IdentificarBarStruct createIdentificarBarStruct({
  int? id,
  String? name,
  int? numberOfTables,
  int? maxPeopleInTables,
  int? numberOfZones,
  int? maxPeopleInZones,
  BringFromCounter? bringFromCounter,
  Status? status,
}) =>
    IdentificarBarStruct(
      id: id,
      name: name,
      numberOfTables: numberOfTables,
      maxPeopleInTables: maxPeopleInTables,
      numberOfZones: numberOfZones,
      maxPeopleInZones: maxPeopleInZones,
      bringFromCounter: bringFromCounter,
      status: status,
    );
