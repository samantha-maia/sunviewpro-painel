// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListTypeAcessStruct extends BaseStruct {
  ListTypeAcessStruct({
    int? id,
    int? createdAt,
    int? updatedAt,
    int? deletedAt,
    String? env,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        _env = env;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "env" field.
  String? _env;
  String get env => _env ?? '';
  set env(String? val) => _env = val;

  bool hasEnv() => _env != null;

  static ListTypeAcessStruct fromMap(Map<String, dynamic> data) =>
      ListTypeAcessStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        updatedAt: castToType<int>(data['updated_at']),
        deletedAt: castToType<int>(data['deleted_at']),
        env: data['env'] as String?,
      );

  static ListTypeAcessStruct? maybeFromMap(dynamic data) => data is Map
      ? ListTypeAcessStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt,
        'env': _env,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
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
        'env': serializeParam(
          _env,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListTypeAcessStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListTypeAcessStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
        env: deserializeParam(
          data['env'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListTypeAcessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListTypeAcessStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        env == other.env;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, updatedAt, deletedAt, env]);
}

ListTypeAcessStruct createListTypeAcessStruct({
  int? id,
  int? createdAt,
  int? updatedAt,
  int? deletedAt,
  String? env,
}) =>
    ListTypeAcessStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      env: env,
    );
