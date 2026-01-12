// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StakesStruct extends BaseStruct {
  StakesStruct({
    int? id,
    bool? isMotor,
    int? createdAt,
    int? updatedAt,
    int? deletedAt,
    int? trackersId,
    int? stakesTypesId,
    String? position,
  })  : _id = id,
        _isMotor = isMotor,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        _trackersId = trackersId,
        _stakesTypesId = stakesTypesId,
        _position = position;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "is_motor" field.
  bool? _isMotor;
  bool get isMotor => _isMotor ?? false;
  set isMotor(bool? val) => _isMotor = val;

  bool hasIsMotor() => _isMotor != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  int? _updatedAt;
  int get updatedAt => _updatedAt ?? 0;
  set updatedAt(int? val) => _updatedAt = val;

  void incrementUpdatedAt(int amount) => updatedAt = updatedAt + amount;

  bool hasUpdatedAt() => _updatedAt != null;

  // "deleted_at" field.
  int? _deletedAt;
  int get deletedAt => _deletedAt ?? 0;
  set deletedAt(int? val) => _deletedAt = val;

  void incrementDeletedAt(int amount) => deletedAt = deletedAt + amount;

  bool hasDeletedAt() => _deletedAt != null;

  // "trackers_id" field.
  int? _trackersId;
  int get trackersId => _trackersId ?? 0;
  set trackersId(int? val) => _trackersId = val;

  void incrementTrackersId(int amount) => trackersId = trackersId + amount;

  bool hasTrackersId() => _trackersId != null;

  // "stakes_types_id" field.
  int? _stakesTypesId;
  int get stakesTypesId => _stakesTypesId ?? 0;
  set stakesTypesId(int? val) => _stakesTypesId = val;

  void incrementStakesTypesId(int amount) =>
      stakesTypesId = stakesTypesId + amount;

  bool hasStakesTypesId() => _stakesTypesId != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  static StakesStruct fromMap(Map<String, dynamic> data) => StakesStruct(
        id: castToType<int>(data['id']),
        isMotor: data['is_motor'] as bool?,
        createdAt: castToType<int>(data['created_at']),
        updatedAt: castToType<int>(data['updated_at']),
        deletedAt: castToType<int>(data['deleted_at']),
        trackersId: castToType<int>(data['trackers_id']),
        stakesTypesId: castToType<int>(data['stakes_types_id']),
        position: data['position'] as String?,
      );

  static StakesStruct? maybeFromMap(dynamic data) =>
      data is Map ? StakesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'is_motor': _isMotor,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt,
        'trackers_id': _trackersId,
        'stakes_types_id': _stakesTypesId,
        'position': _position,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'is_motor': serializeParam(
          _isMotor,
          ParamType.bool,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.int,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.int,
        ),
        'trackers_id': serializeParam(
          _trackersId,
          ParamType.int,
        ),
        'stakes_types_id': serializeParam(
          _stakesTypesId,
          ParamType.int,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
      }.withoutNulls;

  static StakesStruct fromSerializableMap(Map<String, dynamic> data) =>
      StakesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        isMotor: deserializeParam(
          data['is_motor'],
          ParamType.bool,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.int,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.int,
          false,
        ),
        trackersId: deserializeParam(
          data['trackers_id'],
          ParamType.int,
          false,
        ),
        stakesTypesId: deserializeParam(
          data['stakes_types_id'],
          ParamType.int,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StakesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StakesStruct &&
        id == other.id &&
        isMotor == other.isMotor &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        trackersId == other.trackersId &&
        stakesTypesId == other.stakesTypesId &&
        position == other.position;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        isMotor,
        createdAt,
        updatedAt,
        deletedAt,
        trackersId,
        stakesTypesId,
        position
      ]);
}

StakesStruct createStakesStruct({
  int? id,
  bool? isMotor,
  int? createdAt,
  int? updatedAt,
  int? deletedAt,
  int? trackersId,
  int? stakesTypesId,
  String? position,
}) =>
    StakesStruct(
      id: id,
      isMotor: isMotor,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      trackersId: trackersId,
      stakesTypesId: stakesTypesId,
      position: position,
    );
