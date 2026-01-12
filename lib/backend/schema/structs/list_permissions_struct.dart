// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListPermissionsStruct extends BaseStruct {
  ListPermissionsStruct({
    int? id,
    int? createdAt,
    int? updatedAt,
    int? deletedAt,
    int? userId,
    int? usersSystemAccessId,
    int? usersRolesId,
    int? usersControlSystemId,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        _userId = userId,
        _usersSystemAccessId = usersSystemAccessId,
        _usersRolesId = usersRolesId,
        _usersControlSystemId = usersControlSystemId;

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

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "users_system_access_id" field.
  int? _usersSystemAccessId;
  int get usersSystemAccessId => _usersSystemAccessId ?? 0;
  set usersSystemAccessId(int? val) => _usersSystemAccessId = val;

  void incrementUsersSystemAccessId(int amount) =>
      usersSystemAccessId = usersSystemAccessId + amount;

  bool hasUsersSystemAccessId() => _usersSystemAccessId != null;

  // "users_roles_id" field.
  int? _usersRolesId;
  int get usersRolesId => _usersRolesId ?? 0;
  set usersRolesId(int? val) => _usersRolesId = val;

  void incrementUsersRolesId(int amount) =>
      usersRolesId = usersRolesId + amount;

  bool hasUsersRolesId() => _usersRolesId != null;

  // "users_control_system_id" field.
  int? _usersControlSystemId;
  int get usersControlSystemId => _usersControlSystemId ?? 0;
  set usersControlSystemId(int? val) => _usersControlSystemId = val;

  void incrementUsersControlSystemId(int amount) =>
      usersControlSystemId = usersControlSystemId + amount;

  bool hasUsersControlSystemId() => _usersControlSystemId != null;

  static ListPermissionsStruct fromMap(Map<String, dynamic> data) =>
      ListPermissionsStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        updatedAt: castToType<int>(data['updated_at']),
        deletedAt: castToType<int>(data['deleted_at']),
        userId: castToType<int>(data['user_id']),
        usersSystemAccessId: castToType<int>(data['users_system_access_id']),
        usersRolesId: castToType<int>(data['users_roles_id']),
        usersControlSystemId: castToType<int>(data['users_control_system_id']),
      );

  static ListPermissionsStruct? maybeFromMap(dynamic data) => data is Map
      ? ListPermissionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt,
        'user_id': _userId,
        'users_system_access_id': _usersSystemAccessId,
        'users_roles_id': _usersRolesId,
        'users_control_system_id': _usersControlSystemId,
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
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'users_system_access_id': serializeParam(
          _usersSystemAccessId,
          ParamType.int,
        ),
        'users_roles_id': serializeParam(
          _usersRolesId,
          ParamType.int,
        ),
        'users_control_system_id': serializeParam(
          _usersControlSystemId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListPermissionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListPermissionsStruct(
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
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        usersSystemAccessId: deserializeParam(
          data['users_system_access_id'],
          ParamType.int,
          false,
        ),
        usersRolesId: deserializeParam(
          data['users_roles_id'],
          ParamType.int,
          false,
        ),
        usersControlSystemId: deserializeParam(
          data['users_control_system_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListPermissionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListPermissionsStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        userId == other.userId &&
        usersSystemAccessId == other.usersSystemAccessId &&
        usersRolesId == other.usersRolesId &&
        usersControlSystemId == other.usersControlSystemId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        updatedAt,
        deletedAt,
        userId,
        usersSystemAccessId,
        usersRolesId,
        usersControlSystemId
      ]);
}

ListPermissionsStruct createListPermissionsStruct({
  int? id,
  int? createdAt,
  int? updatedAt,
  int? deletedAt,
  int? userId,
  int? usersSystemAccessId,
  int? usersRolesId,
  int? usersControlSystemId,
}) =>
    ListPermissionsStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      userId: userId,
      usersSystemAccessId: usersSystemAccessId,
      usersRolesId: usersRolesId,
      usersControlSystemId: usersControlSystemId,
    );
