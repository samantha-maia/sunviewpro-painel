import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Trackers Map Group Code

class TrackersMapGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:6L6t8cws';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static QueryAllFieldsRecordsCall queryAllFieldsRecordsCall =
      QueryAllFieldsRecordsCall();
  static QueryAllSectionsRecordsCall queryAllSectionsRecordsCall =
      QueryAllSectionsRecordsCall();
  static AddRowsTrackersRecordCall addRowsTrackersRecordCall =
      AddRowsTrackersRecordCall();
  static AddRowsRecordCall addRowsRecordCall = AddRowsRecordCall();
  static DeleteRowsRecordCall deleteRowsRecordCall = DeleteRowsRecordCall();
  static DeleteRowsTrackersStatusesRecordCall
      deleteRowsTrackersStatusesRecordCall =
      DeleteRowsTrackersStatusesRecordCall();
  static GetRowsTrackersRecordCall getRowsTrackersRecordCall =
      GetRowsTrackersRecordCall();
  static EditFieldsRecordCall editFieldsRecordCall = EditFieldsRecordCall();
  static GetRowsRecordCall getRowsRecordCall = GetRowsRecordCall();
  static GetRowsTrackersStatusesRecordCall getRowsTrackersStatusesRecordCall =
      GetRowsTrackersStatusesRecordCall();
  static EditSectionsRecordCall editSectionsRecordCall =
      EditSectionsRecordCall();
  static AddSectionsRecordCall addSectionsRecordCall = AddSectionsRecordCall();
  static EditRowsRecordCall editRowsRecordCall = EditRowsRecordCall();
  static EditRowsTrackersStatusesRecordCall editRowsTrackersStatusesRecordCall =
      EditRowsTrackersStatusesRecordCall();
  static GetFieldsRecordCall getFieldsRecordCall = GetFieldsRecordCall();
  static EditRowsTrackersRecordCall editRowsTrackersRecordCall =
      EditRowsTrackersRecordCall();
  static AddFieldsRecordCall addFieldsRecordCall = AddFieldsRecordCall();
  static QueryAllRowsTrackersRecordsCall queryAllRowsTrackersRecordsCall =
      QueryAllRowsTrackersRecordsCall();
  static QueryAllRowsTrackersStatusesRecordsCall
      queryAllRowsTrackersStatusesRecordsCall =
      QueryAllRowsTrackersStatusesRecordsCall();
  static GetSectionsRecordCall getSectionsRecordCall = GetSectionsRecordCall();
  static AddRowsTrackersStatusesRecordCall addRowsTrackersStatusesRecordCall =
      AddRowsTrackersStatusesRecordCall();
  static QueryAllRowsRecordsCall queryAllRowsRecordsCall =
      QueryAllRowsRecordsCall();
  static DeleteRowsTrackersRecordCall deleteRowsTrackersRecordCall =
      DeleteRowsTrackersRecordCall();
  static DeleteFieldsRecordCall deleteFieldsRecordCall =
      DeleteFieldsRecordCall();
  static DuplicateSectionCall duplicateSectionCall = DuplicateSectionCall();
  static DeleteSectionsRecordCall deleteSectionsRecordCall =
      DeleteSectionsRecordCall();
  static DeleteRowCall deleteRowCall = DeleteRowCall();
  static ImportMapTrackersCall importMapTrackersCall = ImportMapTrackersCall();
}

class QueryAllFieldsRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? projectsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all fields records',
      apiUrl: '${baseUrl}/fields',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class QueryAllSectionsRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? fieldsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all sections records',
      apiUrl: '${baseUrl}/sections',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'fields_id': fieldsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class AddRowsTrackersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? rowsId,
    dynamic? rowsTrackersJson,
    int? projectsId,
    int? fieldsId,
    int? sectionsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final rowsTrackers = _serializeJson(rowsTrackersJson, true);
    final ffApiRequestBody = '''
{
  "rows_id": ${rowsId},
  "projects_id": ${projectsId},
  "fields_id": ${fieldsId},
  "sections_id": ${sectionsId},
  "rows_trackers": ${rowsTrackers}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add rows_trackers record',
      apiUrl: '${baseUrl}/rows_trackers',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddRowsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? rowNumber,
    int? sectionsId,
    int? quantity,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sections_id": ${sectionsId},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add rows record',
      apiUrl: '${baseUrl}/rows',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteRowsRecordCall {
  Future<ApiCallResponse> call({
    int? rowsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete rows record.',
      apiUrl: '${baseUrl}/rows/${rowsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteRowsTrackersStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? rowsTrackersStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete rows_trackers_statuses record.',
      apiUrl: '${baseUrl}/rows_trackers_statuses/${rowsTrackersStatusesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRowsTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? rowsTrackersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get rows_trackers record',
      apiUrl: '${baseUrl}/rows_trackers/${rowsTrackersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditFieldsRecordCall {
  Future<ApiCallResponse> call({
    int? fieldsId,
    String? bearerAuth = '',
    String? name = '',
    int? projectsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "projects_id": ${projectsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit fields record',
      apiUrl: '${baseUrl}/fields/${fieldsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRowsRecordCall {
  Future<ApiCallResponse> call({
    int? rowsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get rows record',
      apiUrl: '${baseUrl}/rows/${rowsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRowsTrackersStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? rowsTrackersStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get rows_trackers_statuses record',
      apiUrl: '${baseUrl}/rows_trackers_statuses/${rowsTrackersStatusesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditSectionsRecordCall {
  Future<ApiCallResponse> call({
    int? sectionsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "section_number": 0,
  "fields_id": 0,
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit sections record',
      apiUrl: '${baseUrl}/sections/${sectionsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddSectionsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? fieldsId,
    int? rowsQuantity,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "fields_id":${fieldsId},
  "rows_quantity":${rowsQuantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add sections record',
      apiUrl: '${baseUrl}/sections',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditRowsRecordCall {
  Future<ApiCallResponse> call({
    int? rowsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "row_number": 0,
  "updated_at": 0,
  "deleted_at": 0,
  "sections_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit rows record',
      apiUrl: '${baseUrl}/rows/${rowsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditRowsTrackersStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? rowsTrackersStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit rows_trackers_statuses record',
      apiUrl: '${baseUrl}/rows_trackers_statuses/${rowsTrackersStatusesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFieldsRecordCall {
  Future<ApiCallResponse> call({
    int? fieldsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get fields record',
      apiUrl: '${baseUrl}/fields/${fieldsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  int? qtdSection(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.section_quantity''',
      ));
  int? qtdRows(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.rows_per_section''',
      ));
  int? projectsId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.projects_id''',
      ));
}

class EditRowsTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? rowsTrackersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "position": "",
  "updated_at": 0,
  "deleted_at": 0,
  "rows_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit rows_trackers record',
      apiUrl: '${baseUrl}/rows_trackers/${rowsTrackersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddFieldsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? name = '',
    int? projectsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "projects_id": ${projectsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add fields record',
      apiUrl: '${baseUrl}/fields',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllRowsTrackersRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all rows_trackers records',
      apiUrl: '${baseUrl}/rows_trackers',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllRowsTrackersStatusesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all rows_trackers_statuses records',
      apiUrl: '${baseUrl}/rows_trackers_statuses',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSectionsRecordCall {
  Future<ApiCallResponse> call({
    int? sectionsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get sections record',
      apiUrl: '${baseUrl}/sections/${sectionsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddRowsTrackersStatusesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add rows_trackers_statuses record',
      apiUrl: '${baseUrl}/rows_trackers_statuses',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllRowsRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? sectionsId,
    List<int>? stakesStatusesIdList,
    List<int>? rowsTrackersStatusesIdList,
    List<int>? trackersTypesIdList,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();
    final stakesStatusesId = _serializeList(stakesStatusesIdList);
    final rowsTrackersStatusesId = _serializeList(rowsTrackersStatusesIdList);
    final trackersTypesId = _serializeList(trackersTypesIdList);

    final ffApiRequestBody = '''
{
  "sections_id": ${sectionsId},
  "stakes_statuses_id": ${stakesStatusesId},
  "rows_trackers_statuses_id":${rowsTrackersStatusesId},
  "trackers_types_id": ${trackersTypesId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Query all rows records',
      apiUrl: '${baseUrl}/rows_list',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? listRows(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List? listRowsTrackers(dynamic response) => getJsonField(
        response,
        r'''$[:].list_rows_trackers''',
        true,
      ) as List?;
  List? listStakes(dynamic response) => getJsonField(
        response,
        r'''$[:].list_rows_trackers[:].list_trackers_stakes''',
        true,
      ) as List?;
}

class DeleteRowsTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? rowsTrackersId,
    String? bearerAuth = '',
    int? projectsId,
    int? fieldsId,
    int? sectionsId,
    int? rowsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete rows_trackers record.',
      apiUrl: '${baseUrl}/rows_trackers/${rowsTrackersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'projects_id': projectsId,
        'fields_id': fieldsId,
        'sections_id': sectionsId,
        'rows_id': rowsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFieldsRecordCall {
  Future<ApiCallResponse> call({
    int? fieldsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete fields record.',
      apiUrl: '${baseUrl}/fields/${fieldsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DuplicateSectionCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? fieldsId,
    int? sectionsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "fields_id": ${fieldsId},
  "sections_id": ${sectionsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'duplicate section',
      apiUrl: '${baseUrl}/section_duplicate',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSectionsRecordCall {
  Future<ApiCallResponse> call({
    int? sectionsId,
    String? bearerAuth = '',
    int? fieldsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete sections record.',
      apiUrl: '${baseUrl}/sections/${sectionsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'fields_id': fieldsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteRowCall {
  Future<ApiCallResponse> call({
    int? rowsId,
    int? sectionsId,
    String? token = '',
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete row',
      apiUrl: '${baseUrl}/rows_trackers_map',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'rows_id': rowsId,
        'sections_id': sectionsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ImportMapTrackersCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? fieldsId,
  }) async {
    final baseUrl = TrackersMapGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Import map trackers',
      apiUrl: '${baseUrl}/sections_import',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'fields_id': fieldsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic list(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

/// End Trackers Map Group Code

/// Start Reports Group Code

class ReportsGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:6JnM9cvj';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'X-data-source': 'dev',
  };
  static QueryAllDailyReportRecordsCall queryAllDailyReportRecordsCall =
      QueryAllDailyReportRecordsCall();
  static DailyReportDateCall dailyReportDateCall = DailyReportDateCall();
  static DeleteDailyReportRecordCall deleteDailyReportRecordCall =
      DeleteDailyReportRecordCall();
  static AddDailyReportRecordCall addDailyReportRecordCall =
      AddDailyReportRecordCall();
  static BurndownCall burndownCall = BurndownCall();
  static ScheduleoCall scheduleoCall = ScheduleoCall();
  static EditDailyReportRecordCall editDailyReportRecordCall =
      EditDailyReportRecordCall();
  static GetDailyReportRecordCall getDailyReportRecordCall =
      GetDailyReportRecordCall();
  static GetDailyreportRecordPdfCall getDailyreportRecordPdfCall =
      GetDailyreportRecordPdfCall();
  static DashboardCall dashboardCall = DashboardCall();
  static GetInformeDiarioCall getInformeDiarioCall = GetInformeDiarioCall();
  static NovoGetInformeDiarioCall novoGetInformeDiarioCall =
      NovoGetInformeDiarioCall();
}

class QueryAllDailyReportRecordsCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    int? page,
    int? perPage,
    String? initialDate = '',
    String? finalDate = '',
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query all daily_report records',
      apiUrl: '${baseUrl}/daily_report',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'projects_id': projectsId,
        'page': page,
        'per_page': perPage,
        'initial_date': initialDate,
        'final_date': finalDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$.result1.items''',
        true,
      ) as List?;
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.pageTotal''',
      ));
  int? dailyreportpending(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.daily_report_pending''',
      ));
}

class DailyReportDateCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Daily report date',
      apiUrl: '${baseUrl}/daily_report_dates',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class DeleteDailyReportRecordCall {
  Future<ApiCallResponse> call({
    int? dailyReportId,
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete daily_report record.',
      apiUrl: '${baseUrl}/daily_report/${dailyReportId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddDailyReportRecordCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    List<int>? scheduleIdList,
    String? date = '',
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );
    final scheduleId = _serializeList(scheduleIdList);

    final ffApiRequestBody = '''
{
  "projects_id": ${projectsId},
  "schedule_id": ${scheduleId},
  "date": "${escapeStringForJson(date)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add daily_report record',
      apiUrl: '${baseUrl}/daily_report',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BurndownCall {
  Future<ApiCallResponse> call({
    int? sprintsId,
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'burndown',
      apiUrl: '${baseUrl}/burndown',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'sprints_id': sprintsId,
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? concluidas(dynamic response) => (getJsonField(
        response,
        r'''$[:].concluidas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? restantes(dynamic response) => (getJsonField(
        response,
        r'''$[:].restantes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? acumuladas(dynamic response) => (getJsonField(
        response,
        r'''$[:].acumuladas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? valorreferencia(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_referencia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ScheduleoCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? date = '',
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'scheduleo',
      apiUrl: '${baseUrl}/schedule_per_day',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'projects_id': projectsId,
        'date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class EditDailyReportRecordCall {
  Future<ApiCallResponse> call({
    int? dailyReportId,
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "updated_at": 0,
  "deleted_at": 0,
  "projects_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit daily_report record',
      apiUrl: '${baseUrl}/daily_report/${dailyReportId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDailyReportRecordCall {
  Future<ApiCallResponse> call({
    int? dailyReportId,
    int? page,
    int? perPage,
    String? search = '',
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get daily_report record',
      apiUrl: '${baseUrl}/daily_report/${dailyReportId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
}

class GetDailyreportRecordPdfCall {
  Future<ApiCallResponse> call({
    int? dailyReportId,
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get dailyreport record pdf',
      apiUrl: '${baseUrl}/daily_report/${dailyReportId}/pdf',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? lista(dynamic response) => getJsonField(
        response,
        r'''$.items''',
      );
}

class DashboardCall {
  Future<ApiCallResponse> call({
    String? initialDate = '',
    String? finalDate = '',
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard',
      apiUrl: '${baseUrl}/dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'initial_date': initialDate,
        'final_date': finalDate,
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetInformeDiarioCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? date = '',
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get informe diario',
      apiUrl: '${baseUrl}/informe_diario',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'projects_id': projectsId,
        'date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? qtdDiaria(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidade_executada_diaria''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? qtdAcumulada(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidade_executada_acumulada''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? qtdPrevista(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidade_prevista''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class NovoGetInformeDiarioCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    int? date,
    String? token = '',
  }) async {
    final baseUrl = ReportsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Novo Get informe diario',
      apiUrl: '${baseUrl}/informe_diario_0',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'projects_id': projectsId,
        'date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Reports Group Code

/// Start User Group Code

class UserGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:E6YADvqY';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static GetUserCall getUserCall = GetUserCall();
  static EditUsersPermissionsRecordCall editUsersPermissionsRecordCall =
      EditUsersPermissionsRecordCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static AddUsersPermissionsRecordCall addUsersPermissionsRecordCall =
      AddUsersPermissionsRecordCall();
  static DeleteUsersSystemAccessRecordCall deleteUsersSystemAccessRecordCall =
      DeleteUsersSystemAccessRecordCall();
  static QueryAllUsersPermissionsRecordsCall
      queryAllUsersPermissionsRecordsCall =
      QueryAllUsersPermissionsRecordsCall();
  static UsersZeroCall usersZeroCall = UsersZeroCall();
  static APIQueBuscaUsuariosQuePodemSerLideresDeEquipeCall
      aPIQueBuscaUsuariosQuePodemSerLideresDeEquipeCall =
      APIQueBuscaUsuariosQuePodemSerLideresDeEquipeCall();
  static EditUsersControlSystemRecordCall editUsersControlSystemRecordCall =
      EditUsersControlSystemRecordCall();
  static GetUsersSystemAccessRecordCall getUsersSystemAccessRecordCall =
      GetUsersSystemAccessRecordCall();
  static GetUsersControlSystemRecordCall getUsersControlSystemRecordCall =
      GetUsersControlSystemRecordCall();
  static DeleteUsersPermissionsRecordCall deleteUsersPermissionsRecordCall =
      DeleteUsersPermissionsRecordCall();
  static DeleteUsersRolesRecordCall deleteUsersRolesRecordCall =
      DeleteUsersRolesRecordCall();
  static QueryAllUsersRolesRecordsCall queryAllUsersRolesRecordsCall =
      QueryAllUsersRolesRecordsCall();
  static DeleteUsersControlSystemRecordCall deleteUsersControlSystemRecordCall =
      DeleteUsersControlSystemRecordCall();
  static GetUsersRolesRecordCall getUsersRolesRecordCall =
      GetUsersRolesRecordCall();
  static QueryAllUsersSystemAccessRecordsCall
      queryAllUsersSystemAccessRecordsCall =
      QueryAllUsersSystemAccessRecordsCall();
  static QuerryAllUsersRecordCall querryAllUsersRecordCall =
      QuerryAllUsersRecordCall();
  static QueryAllUsersControlSystemRecordsCall
      queryAllUsersControlSystemRecordsCall =
      QueryAllUsersControlSystemRecordsCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static AddUsersCall addUsersCall = AddUsersCall();
  static PatchUsersCall patchUsersCall = PatchUsersCall();
  static GetUsersPermissionsRecordCall getUsersPermissionsRecordCall =
      GetUsersPermissionsRecordCall();
  static EditUsersSystemAccessRecordCall editUsersSystemAccessRecordCall =
      EditUsersSystemAccessRecordCall();
  static AddUsersControlSystemRecordCall addUsersControlSystemRecordCall =
      AddUsersControlSystemRecordCall();
  static AddUsersSystemAccessRecordCall addUsersSystemAccessRecordCall =
      AddUsersSystemAccessRecordCall();
  static AddUsersRolesRecordCall addUsersRolesRecordCall =
      AddUsersRolesRecordCall();
  static EditUsersRolesRecordCall editUsersRolesRecordCall =
      EditUsersRolesRecordCall();
  static GetUserExportCall getUserExportCall = GetUserExportCall();
  static ImportUsersCsvCall importUsersCsvCall = ImportUsersCsvCall();
  static AllUserDropCall allUserDropCall = AllUserDropCall();
  static CreatCompanyCall creatCompanyCall = CreatCompanyCall();
  static EditCompanyCall editCompanyCall = EditCompanyCall();
  static GetCompanyCall getCompanyCall = GetCompanyCall();
}

class GetUserCall {
  Future<ApiCallResponse> call({
    int? usersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get user',
      apiUrl: '${baseUrl}/users/${usersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.email''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.phone''',
      ));
  int? permissionsId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.users_permissions_id''',
      ));
  String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.profile_picture.url''',
      ));
  String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.qrcode''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.users_permissions.users_roles.role''',
      ));
  String? accessLevel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.users_permissions.users_control_system.access_level''',
      ));
  String? systemAccess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result1.users_permissions.users_system_access.env''',
      ));
  int? systemAccessID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.users_permissions.users_system_access_id''',
      ));
  int? roleID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.users_permissions.users_roles_id''',
      ));
  int? accessLevelID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.users_permissions.users_control_system_id''',
      ));
  int? companyID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.company_id''',
      ));
}

class EditUsersPermissionsRecordCall {
  Future<ApiCallResponse> call({
    int? usersPermissionsId,
    String? bearerAuth = '',
    int? userId,
    int? usersSystemAccessId,
    int? usersRolesId,
    int? usersControlSystemId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "users_system_access_id":${usersSystemAccessId},
  "users_roles_id":${usersRolesId},
  "users_control_system_id":${usersControlSystemId} 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit users_permissions record',
      apiUrl: '${baseUrl}/users_permissions/${usersPermissionsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? usersId,
    String? password = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "users_id": ${usersId},
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change password',
      apiUrl: '${baseUrl}/change_password',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddUsersPermissionsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? userId,
    int? usersSystemAccessId,
    int? usersRolesId,
    int? usersControlSystemId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id":${userId},
  "users_system_access_id":${usersSystemAccessId},
  "users_roles_id":${usersRolesId},
  "users_control_system_id":${usersControlSystemId} 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add users_permissions record',
      apiUrl: '${baseUrl}/users_permissions',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUsersSystemAccessRecordCall {
  Future<ApiCallResponse> call({
    int? usersSystemAccessId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete users_system_access record.',
      apiUrl: '${baseUrl}/users_system_access/${usersSystemAccessId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllUsersPermissionsRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all users_permissions records',
      apiUrl: '${baseUrl}/users_permissions',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UsersZeroCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? search = '',
    List<int>? usersRolesIdList,
    int? page,
    int? perPage,
    int? teamsId,
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();
    final usersRolesId = _serializeList(usersRolesIdList);

    final ffApiRequestBody = '''
{
  "page": ${page},
  "per_page": ${perPage},
  "users_roles_id": ${usersRolesId},
  "search": "${escapeStringForJson(search)}",
  "teams_id": ${teamsId},
"company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'users zero',
      apiUrl: '${baseUrl}/users_0',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
}

class APIQueBuscaUsuariosQuePodemSerLideresDeEquipeCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? bearerAuth = '',
    int? teamsId,
    int? page,
    int? perPage,
    List<int>? usersRolesIdList,
    String? search = '',
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();
    final usersRolesId = _serializeList(usersRolesIdList);

    final ffApiRequestBody = '''
{
  "projects_id": ${projectsId},
  "page": ${page},
  "per_page": ${perPage},
  "teams_id": ${teamsId},
  "users_roles_id": ${usersRolesId},
  "search": "${escapeStringForJson(search)}",
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API que busca usuarios que podem ser lideres de equipe',
      apiUrl: '${baseUrl}/users_leaders_0',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
}

class EditUsersControlSystemRecordCall {
  Future<ApiCallResponse> call({
    int? usersControlSystemId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "updated_at": 0,
  "deleted_at": 0,
  "access_level": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit users_control_system record',
      apiUrl: '${baseUrl}/users_control_system/${usersControlSystemId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersSystemAccessRecordCall {
  Future<ApiCallResponse> call({
    int? usersSystemAccessId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get users_system_access record',
      apiUrl: '${baseUrl}/users_system_access/${usersSystemAccessId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersControlSystemRecordCall {
  Future<ApiCallResponse> call({
    int? usersControlSystemId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get users_control_system record',
      apiUrl: '${baseUrl}/users_control_system/${usersControlSystemId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUsersPermissionsRecordCall {
  Future<ApiCallResponse> call({
    int? usersPermissionsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete users_permissions record.',
      apiUrl: '${baseUrl}/users_permissions/${usersPermissionsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUsersRolesRecordCall {
  Future<ApiCallResponse> call({
    int? usersRolesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete users_roles record.',
      apiUrl: '${baseUrl}/users_roles/${usersRolesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllUsersRolesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all users_roles records',
      apiUrl: '${baseUrl}/users_roles',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUsersControlSystemRecordCall {
  Future<ApiCallResponse> call({
    int? usersControlSystemId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete users_control_system record.',
      apiUrl: '${baseUrl}/users_control_system/${usersControlSystemId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersRolesRecordCall {
  Future<ApiCallResponse> call({
    int? usersRolesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get users_roles record',
      apiUrl: '${baseUrl}/users_roles/${usersRolesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllUsersSystemAccessRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all users_system_access records',
      apiUrl: '${baseUrl}/users_system_access',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuerryAllUsersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? perPage,
    int? page,
    String? search = '',
    List<int>? usersRolesIdList,
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();
    final usersRolesId = _serializeList(usersRolesIdList);

    final ffApiRequestBody = '''
{
  "page": ${page},
  "per_page": ${perPage},
  "search": "${escapeStringForJson(search)}",
  "users_roles_id": ${usersRolesId},
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Querry all users record',
      apiUrl: '${baseUrl}/users_list',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageTotal''',
      ));
}

class QueryAllUsersControlSystemRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all users_control_system records',
      apiUrl: '${baseUrl}/users_control_system',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    int? usersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete user',
      apiUrl: '${baseUrl}/users/${usersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddUsersCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? name = '',
    String? phone = '',
    String? email = '',
    int? usersRolesId,
    int? usersSystemAccessId,
    String? password = '',
    FFUploadedFile? profilePicture,
    int? projectsId,
    int? usersControlSystemId,
    int? companyId,
    int? teamsId = 0,
    bool? isLeader = false,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Add users ',
      apiUrl: '${baseUrl}/users',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'name': name,
        'phone': phone,
        'email': email,
        'users_roles_id': usersRolesId,
        'users_control_system_id': usersControlSystemId,
        'users_system_access_id': usersSystemAccessId,
        'password': password,
        'profile_picture': profilePicture,
        'projects_id': projectsId,
        'company_id': companyId,
        'teams_id': teamsId,
        'is_leader': isLeader,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchUsersCall {
  Future<ApiCallResponse> call({
    int? usersId,
    String? bearerAuth = '',
    String? name = '',
    String? phone = '',
    FFUploadedFile? profilePicture,
    int? usersControlSystemId,
    int? usersRolesId,
    int? usersSystemAccessId,
    String? email = '',
    String? password = '',
    int? projectsId,
    List<bool>? firstLoginList,
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();
    final firstLogin = _serializeList(firstLoginList);

    return ApiManager.instance.makeApiCall(
      callName: 'Patch users',
      apiUrl: '${baseUrl}/users/${usersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'name': name,
        'email': email,
        'users_system_access_id': usersSystemAccessId,
        'users_roles_id': usersRolesId,
        'users_control_system_id': usersControlSystemId,
        'profile_picture': profilePicture,
        'phone': phone,
        'password': password,
        'projects_id': projectsId,
        'company_id': companyId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersPermissionsRecordCall {
  Future<ApiCallResponse> call({
    int? usersPermissionsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get users_permissions record',
      apiUrl: '${baseUrl}/users_permissions/${usersPermissionsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? userssystemaccessid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.users_system_access_id''',
      ));
}

class EditUsersSystemAccessRecordCall {
  Future<ApiCallResponse> call({
    int? usersSystemAccessId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "updated_at": 0,
  "deleted_at": 0,
  "env": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit users_system_access record',
      apiUrl: '${baseUrl}/users_system_access/${usersSystemAccessId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddUsersControlSystemRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "updated_at": 0,
  "deleted_at": 0,
  "access_level": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add users_control_system record',
      apiUrl: '${baseUrl}/users_control_system',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddUsersSystemAccessRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "updated_at": 0,
  "deleted_at": 0,
  "env": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add users_system_access record',
      apiUrl: '${baseUrl}/users_system_access',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddUsersRolesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "updated_at": 0,
  "deleted_at": 0,
  "role": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add users_roles record',
      apiUrl: '${baseUrl}/users_roles',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditUsersRolesRecordCall {
  Future<ApiCallResponse> call({
    int? usersRolesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "updated_at": 0,
  "deleted_at": 0,
  "role": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit users_roles record',
      apiUrl: '${baseUrl}/users_roles/${usersRolesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserExportCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? search = '',
    List<int>? usersRolesIdList,
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();
    final usersRolesId = _serializeList(usersRolesIdList);

    final ffApiRequestBody = '''
{
  "search": "${escapeStringForJson(search)}",
  "users_roles_id": ${usersRolesId},
 "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get user export',
      apiUrl: '${baseUrl}/users_list_clone_0',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ImportUsersCsvCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? csv,
    String? token = '',
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Import users csv',
      apiUrl: '${baseUrl}/import_user',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'csv': csv,
        'company_id': companyId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AllUserDropCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'all user drop',
      apiUrl: '${baseUrl}/query_all_users',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'token': token,
        'company_id': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CreatCompanyCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? brandName = '',
    String? legalName = '',
    String? cnpj = '',
    String? phone = '',
    String? email = '',
    String? cep = '',
    String? numero = '',
    String? addressLine = '',
    String? addressLine2 = '',
    String? city = '',
    String? state = '',
    int? statusPaymentId = 1,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "brand_name": "${escapeStringForJson(brandName)}",
  "legal_name": "${escapeStringForJson(legalName)}",
  "cnpj": "${escapeStringForJson(cnpj)}",
  "phone": "${escapeStringForJson(phone)}",
  "email": "${escapeStringForJson(email)}",
  "cep": "${escapeStringForJson(cep)}",
  "numero": "${escapeStringForJson(numero)}",
  "address_line": "${escapeStringForJson(addressLine)}",
  "address_line2": "${escapeStringForJson(addressLine2)}",
  "city": "${escapeStringForJson(city)}",
  "state": "${escapeStringForJson(state)}",
  "status_payment_id": ${statusPaymentId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Creat company',
      apiUrl: '${baseUrl}/company',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCompanyCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? brandName = '',
    String? legalName = '',
    String? cnpj = '',
    String? phone = '',
    String? email = '',
    String? cep = '',
    String? numero = '',
    String? addressLine = '',
    String? addressLine2 = '',
    String? city = '',
    String? state = '',
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
   "brand_name": "${escapeStringForJson(brandName)}",
  "legal_name": "${escapeStringForJson(legalName)}",
  "cnpj": "${escapeStringForJson(cnpj)}",
  "phone": "${escapeStringForJson(phone)}",
  "email": "${escapeStringForJson(email)}",
  "cep": "${escapeStringForJson(cep)}",
  "numero": "${escapeStringForJson(numero)}",
  "address_line": "${escapeStringForJson(addressLine)}",
  "address_line2": "${escapeStringForJson(addressLine2)}",
  "city": "${escapeStringForJson(city)}",
  "state": "${escapeStringForJson(state)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit company',
      apiUrl: '${baseUrl}/company/${companyId}',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCompanyCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? companyId,
  }) async {
    final baseUrl = UserGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get company',
      apiUrl: '${baseUrl}/company/${companyId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? brandname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.brand_name''',
      ));
  String? legalname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.legal_name''',
      ));
  String? cnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cnpj''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.numero''',
      ));
  String? addressline(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address_line''',
      ));
  String? addressline2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address_line2''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city''',
      ));
  String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
}

/// End User Group Code

/// Start Tasks Group Code

class TasksGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:tYJj64-Q';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static EditTasksRecordCall editTasksRecordCall = EditTasksRecordCall();
  static QueryAllTasksRecordsCall queryAllTasksRecordsCall =
      QueryAllTasksRecordsCall();
  static QueryAllIdsTasksCall queryAllIdsTasksCall = QueryAllIdsTasksCall();
  static AddTasksRecordCall addTasksRecordCall = AddTasksRecordCall();
  static GetTasksRecordCall getTasksRecordCall = GetTasksRecordCall();
  static QueryAllTasksSemPaginacaoCall queryAllTasksSemPaginacaoCall =
      QueryAllTasksSemPaginacaoCall();
  static EditTasksPrioritiesRecordCall editTasksPrioritiesRecordCall =
      EditTasksPrioritiesRecordCall();
  static DeleteTasksPrioritiesRecordCall deleteTasksPrioritiesRecordCall =
      DeleteTasksPrioritiesRecordCall();
  static GetTasksPrioritiesRecordCall getTasksPrioritiesRecordCall =
      GetTasksPrioritiesRecordCall();
  static AddTasksPrioritiesRecordCall addTasksPrioritiesRecordCall =
      AddTasksPrioritiesRecordCall();
  static QueryAllTasksPrioritiesRecordsCall queryAllTasksPrioritiesRecordsCall =
      QueryAllTasksPrioritiesRecordsCall();
  static DeactivateTaskCall deactivateTaskCall = DeactivateTaskCall();
  static GetUnityCall getUnityCall = GetUnityCall();
  static QueryAllCommentsBacklogsCall queryAllCommentsBacklogsCall =
      QueryAllCommentsBacklogsCall();
  static QueryAllCommentSubtasksCall queryAllCommentSubtasksCall =
      QueryAllCommentSubtasksCall();
  static DisciplineCall disciplineCall = DisciplineCall();
  static TarefasSemPageEPerpageCall tarefasSemPageEPerpageCall =
      TarefasSemPageEPerpageCall();
}

class EditTasksRecordCall {
  Future<ApiCallResponse> call({
    int? tasksId,
    String? bearerAuth = '',
    String? description = '',
    int? equipamentsTypesId,
    double? weight,
    int? unity,
    int? companyId,
    int? disciplineId,
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "description": "${escapeStringForJson(description)}",
  "equipaments_types_id": ${equipamentsTypesId},
  "weight": ${weight},
  "unity_id": ${unity},
  "company_id": ${companyId},
  "discipline_id": ${disciplineId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit tasks record',
      apiUrl: '${baseUrl}/tasks/${tasksId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllTasksRecordsCall {
  Future<ApiCallResponse> call({
    int? page,
    int? perPage,
    String? bearerAuth = '',
    String? search = '',
    List<int>? equipamentsTypesIdList,
    int? companyId,
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();
    final equipamentsTypesId = _serializeList(equipamentsTypesIdList);

    final ffApiRequestBody = '''
{
  "page": ${page},
  "per_page": ${perPage},
  "search": "${escapeStringForJson(search)}",
  "equipaments_types_id": ${equipamentsTypesId},
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Query all tasks records',
      apiUrl: '${baseUrl}/tasks_list',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:]._equipaments_types.type''',
      ));
}

class QueryAllIdsTasksCall {
  Future<ApiCallResponse> call({
    int? page,
    int? perPage,
    String? bearerAuth = '',
    String? search = '',
    List<int>? equipamentsTypesIdList,
    int? companyId,
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();
    final equipamentsTypesId = _serializeList(equipamentsTypesIdList);

    final ffApiRequestBody = '''
{
  "page": ${page},
  "per_page": ${perPage},
  "search": "${escapeStringForJson(search)}",
  "equipaments_types_id": ${equipamentsTypesId},
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Query all ids tasks',
      apiUrl: '${baseUrl}/tasks_list_clone0',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AddTasksRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? description = '',
    int? equipamentsTypesId,
    double? weight,
    int? unity,
    int? companyId,
    int? disciplineId,
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "description": "${escapeStringForJson(description)}",
  "equipaments_types_id": ${equipamentsTypesId},
  "weight": ${weight},
  "unity_id": ${unity},
  "company_id": ${companyId},
"discipline_id" : ${disciplineId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add tasks record',
      apiUrl: '${baseUrl}/tasks',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTasksRecordCall {
  Future<ApiCallResponse> call({
    int? tasksId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get tasks record',
      apiUrl: '${baseUrl}/tasks/${tasksId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllTasksSemPaginacaoCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all tasks sem paginacao',
      apiUrl: '${baseUrl}/tasks',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:]._equipaments_types.type''',
      ));
}

class EditTasksPrioritiesRecordCall {
  Future<ApiCallResponse> call({
    int? tasksPrioritiesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "priority": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit tasks_priorities record',
      apiUrl: '${baseUrl}/tasks_priorities/${tasksPrioritiesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTasksPrioritiesRecordCall {
  Future<ApiCallResponse> call({
    int? tasksPrioritiesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete tasks_priorities record.',
      apiUrl: '${baseUrl}/tasks_priorities/${tasksPrioritiesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTasksPrioritiesRecordCall {
  Future<ApiCallResponse> call({
    int? tasksPrioritiesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get tasks_priorities record',
      apiUrl: '${baseUrl}/tasks_priorities/${tasksPrioritiesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTasksPrioritiesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "priority": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add tasks_priorities record',
      apiUrl: '${baseUrl}/tasks_priorities',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllTasksPrioritiesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all tasks_priorities records',
      apiUrl: '${baseUrl}/tasks_priorities',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeactivateTaskCall {
  Future<ApiCallResponse> call({
    int? tasksId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Deactivate task',
      apiUrl: '${baseUrl}/tasks/${tasksId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUnityCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get unity',
      apiUrl: '${baseUrl}/unity',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? unity(dynamic response) => (getJsonField(
        response,
        r'''$[:].unity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class QueryAllCommentsBacklogsCall {
  Future<ApiCallResponse> call({
    int? projectsBacklogsId,
    String? token = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all comments backlogs',
      apiUrl: '${baseUrl}/comment_backlogs',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'projects_backlogs_id': projectsBacklogsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllCommentSubtasksCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? subtasksId,
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all comment subtasks',
      apiUrl: '${baseUrl}/comment_subtasks',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'subtasks_id': subtasksId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DisciplineCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Discipline',
      apiUrl: '${baseUrl}/discipline',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? discipline(dynamic response) => (getJsonField(
        response,
        r'''$[:].discipline''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TarefasSemPageEPerpageCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = TasksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tarefas sem page e perpage',
      apiUrl: '${baseUrl}/all_tasks_template',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Tasks Group Code

/// Start Trackers Group Code

class TrackersGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:T9-pCDOs';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static GetTrackersTypesRecordCall getTrackersTypesRecordCall =
      GetTrackersTypesRecordCall();
  static AddTrackersRecordCall addTrackersRecordCall = AddTrackersRecordCall();
  static DeleteTrackersRecordCall deleteTrackersRecordCall =
      DeleteTrackersRecordCall();
  static AddTrackersTypesRecordCall addTrackersTypesRecordCall =
      AddTrackersTypesRecordCall();
  static GetTrackersRecordCall getTrackersRecordCall = GetTrackersRecordCall();
  static EditTrackersRecordCall editTrackersRecordCall =
      EditTrackersRecordCall();
  static QueryAllTrackersTypesRecordsCall queryAllTrackersTypesRecordsCall =
      QueryAllTrackersTypesRecordsCall();
  static QueryAllTrackersRecordsCall queryAllTrackersRecordsCall =
      QueryAllTrackersRecordsCall();
  static EditTrackersTypesRecordCall editTrackersTypesRecordCall =
      EditTrackersTypesRecordCall();
  static DeleteTrackersTypesRecordCall deleteTrackersTypesRecordCall =
      DeleteTrackersTypesRecordCall();
}

class GetTrackersTypesRecordCall {
  Future<ApiCallResponse> call({
    int? trackersTypesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get trackers_types record',
      apiUrl: '${baseUrl}/trackers_types/${trackersTypesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTrackersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? trackersTypesId,
    int? manufacturersId,
    int? stakeQuantity,
    int? maxModules,
    dynamic? listaCompletaJson,
    int? companyId,
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    final listaCompleta = _serializeJson(listaCompletaJson, true);
    final ffApiRequestBody = '''
{
  "trackers_types_id": ${trackersTypesId},
  "manufacturers_id": ${manufacturersId},
  "stake_quantity": ${stakeQuantity},
  "max_modules": ${maxModules},
  "stakes_on_traker": ${listaCompleta},
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add trackers record',
      apiUrl: '${baseUrl}/trackers',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? trackersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete trackers record.',
      apiUrl: '${baseUrl}/trackers/${trackersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTrackersTypesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? type = '',
    int? equipamentsTypesId,
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "${escapeStringForJson(type)}",
  "equipaments_types_id": ${equipamentsTypesId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add trackers_types record',
      apiUrl: '${baseUrl}/trackers_types',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? trackersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get trackers record',
      apiUrl: '${baseUrl}/trackers/${trackersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? trackersId,
    String? bearerAuth = '',
    int? stakeQuantity,
    int? maxModules,
    int? trackersTypesId,
    int? manufacturersId,
    dynamic? listaCompletaJson,
    int? companyId,
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    final listaCompleta = _serializeJson(listaCompletaJson, true);
    final ffApiRequestBody = '''
{
  "trackers_types_id": ${trackersTypesId},
  "manufacturers_id": ${manufacturersId},
  "stake_quantity": ${stakeQuantity},
  "max_modules": ${maxModules},
  "stakes_on_traker": ${listaCompleta},
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit trackers record',
      apiUrl: '${baseUrl}/trackers/${trackersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllTrackersTypesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? search = '',
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all trackers_types records',
      apiUrl: '${baseUrl}/trackers_types',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? lista(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class QueryAllTrackersRecordsCall {
  Future<ApiCallResponse> call({
    int? page,
    int? perPage,
    String? bearerAuth = '',
    String? search = '',
    int? companyId,
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all trackers records',
      apiUrl: '${baseUrl}/trackers',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'search': search,
        'company_id': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
}

class EditTrackersTypesRecordCall {
  Future<ApiCallResponse> call({
    int? trackersTypesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit trackers_types record',
      apiUrl: '${baseUrl}/trackers_types/${trackersTypesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTrackersTypesRecordCall {
  Future<ApiCallResponse> call({
    int? trackersTypesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TrackersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete trackers_types record.',
      apiUrl: '${baseUrl}/trackers_types/${trackersTypesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Trackers Group Code

/// Start Sprints Group Code

class SprintsGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:RIFrFtp1';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static GetSprintsRecordCall getSprintsRecordCall = GetSprintsRecordCall();
  static GetSprintsTasksStatusRecordCall getSprintsTasksStatusRecordCall =
      GetSprintsTasksStatusRecordCall();
  static QueryAllSprintsRecordsCall queryAllSprintsRecordsCall =
      QueryAllSprintsRecordsCall();
  static EditSprintsStatusesRecordCall editSprintsStatusesRecordCall =
      EditSprintsStatusesRecordCall();
  static GetSprintsTasksRecordCall getSprintsTasksRecordCall =
      GetSprintsTasksRecordCall();
  static QueryAllSprintsTasksStatusRecordsCall
      queryAllSprintsTasksStatusRecordsCall =
      QueryAllSprintsTasksStatusRecordsCall();
  static QueryAllSprintsStatusesRecordsCall queryAllSprintsStatusesRecordsCall =
      QueryAllSprintsStatusesRecordsCall();
  static EditSprintsTasksRecordCall editSprintsTasksRecordCall =
      EditSprintsTasksRecordCall();
  static AddSprintsRecordCall addSprintsRecordCall = AddSprintsRecordCall();
  static EditStatusTaskCall editStatusTaskCall = EditStatusTaskCall();
  static EditStatusTaskLISTACall editStatusTaskLISTACall =
      EditStatusTaskLISTACall();
  static DeleteSprintsTasksRecordCall deleteSprintsTasksRecordCall =
      DeleteSprintsTasksRecordCall();
  static DeleteSprintsRecordCall deleteSprintsRecordCall =
      DeleteSprintsRecordCall();
  static EditSprintsRecordCall editSprintsRecordCall = EditSprintsRecordCall();
  static QueryAllSprintsTasksRecordsCall queryAllSprintsTasksRecordsCall =
      QueryAllSprintsTasksRecordsCall();
  static GetSprintsStatusesRecordCall getSprintsStatusesRecordCall =
      GetSprintsStatusesRecordCall();
  static DeleteSprintsStatusesRecordCall deleteSprintsStatusesRecordCall =
      DeleteSprintsStatusesRecordCall();
  static AddSprintsStatusesRecordCall addSprintsStatusesRecordCall =
      AddSprintsStatusesRecordCall();
  static AddSprintsTasksStatusRecordCall addSprintsTasksStatusRecordCall =
      AddSprintsTasksStatusRecordCall();
  static AddSprintsTasksRecordCall addSprintsTasksRecordCall =
      AddSprintsTasksRecordCall();
  static DeleteSprintsTasksStatusRecordCall deleteSprintsTasksStatusRecordCall =
      DeleteSprintsTasksStatusRecordCall();
  static EditSprintsTasksStatusRecordCall editSprintsTasksStatusRecordCall =
      EditSprintsTasksStatusRecordCall();
  static SprintsGraficoFiltroCall sprintsGraficoFiltroCall =
      SprintsGraficoFiltroCall();
  static CountsSubtasksCall countsSubtasksCall = CountsSubtasksCall();
}

class GetSprintsRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get sprints record',
      apiUrl: '${baseUrl}/sprints/${sprintsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSprintsTasksStatusRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsTasksStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get sprints_tasks_status record',
      apiUrl: '${baseUrl}/sprints_tasks_statuses/${sprintsTasksStatusesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'sprints_tasks_status_id': sprintsTasksStatusesId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllSprintsRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? page,
    int? perPage,
    int? projectsId,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all sprints records',
      apiUrl: '${baseUrl}/sprints',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? listFuturas(dynamic response) => getJsonField(
        response,
        r'''$.sprints_futura.items''',
        true,
      ) as List?;
  List? listConcluidas(dynamic response) => getJsonField(
        response,
        r'''$.sprints_concluida.items''',
        true,
      ) as List?;
  List? listAtivas(dynamic response) => getJsonField(
        response,
        r'''$.sprints_ativa.items''',
        true,
      ) as List?;
}

class EditSprintsStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit sprints_statuses record',
      apiUrl: '${baseUrl}/sprints_statuses/${sprintsStatusesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSprintsTasksRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsTasksId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get sprints_tasks record',
      apiUrl: '${baseUrl}/sprints_tasks/${sprintsTasksId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllSprintsTasksStatusRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? sprintsTasksStatusesId,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all sprints_tasks_status records',
      apiUrl: '${baseUrl}/sprints_tasks_statuses',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllSprintsStatusesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all sprints_statuses records',
      apiUrl: '${baseUrl}/sprints_statuses',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditSprintsTasksRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsTasksId,
    String? bearerAuth = '',
    int? sprintsId,
    int? teamsId,
    int? sprintsTasksStatusesId,
    List<int>? tasks2IdList,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();
    final tasks2Id = _serializeList(tasks2IdList);

    final ffApiRequestBody = '''
{
  "sprints_id":${sprintsId},
  "teams_id":${teamsId},
  "sprints_tasks_statuses_id":${sprintsTasksStatusesId},
  "tasks2_id":${tasks2Id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit sprints_tasks record',
      apiUrl: '${baseUrl}/sprints_tasks/${sprintsTasksId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddSprintsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? title = '',
    String? objective = '',
    int? startDate,
    int? endDate,
    int? progressPercentage,
    int? projectsId,
    int? sprintsStatusesId,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "title":"${escapeStringForJson(title)}",
  "objective":"${escapeStringForJson(objective)}",
  "start_date":${startDate},
  "end_date":${endDate},
  "progress_percentage":${progressPercentage},
  "projects_id":${projectsId},
  "sprints_statuses_id":${sprintsStatusesId} 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add sprints record',
      apiUrl: '${baseUrl}/sprints',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class EditStatusTaskCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? sprintsTasksId,
    int? sprintsTasksStatusesId,
    String? scheduledFor = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sprints_tasks_id": ${sprintsTasksId},
  "sprints_tasks_statuses_id": ${sprintsTasksStatusesId},
  "scheduled_for": "${escapeStringForJson(scheduledFor)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit status task',
      apiUrl: '${baseUrl}/update_sprint_task_status',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditStatusTaskLISTACall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    List<int>? sprintsTasksIdList,
    int? sprintsTasksStatusesId,
    String? scheduledFor = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();
    final sprintsTasksId = _serializeList(sprintsTasksIdList);

    final ffApiRequestBody = '''
{
  "sprints_tasks_id": ${sprintsTasksId},
  "sprints_tasks_statuses_id": ${sprintsTasksStatusesId},
"scheduled_for": "${escapeStringForJson(scheduledFor)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit status task LISTA',
      apiUrl: '${baseUrl}/update_lista_sprint_task_status',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSprintsTasksRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsTasksId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete sprints_tasks record.',
      apiUrl: '${baseUrl}/sprints_tasks/${sprintsTasksId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSprintsRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete sprints record.',
      apiUrl: '${baseUrl}/sprints/${sprintsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditSprintsRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsId,
    String? bearerAuth = '',
    String? title = '',
    String? objective = '',
    int? startDate,
    int? endDate,
    int? progressPercentage,
    int? projectsId,
    int? sprintsStatusesId,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "title":"${escapeStringForJson(title)}",
  "objective":"${escapeStringForJson(objective)}",
  "start_date":${startDate},
  "end_date":${endDate},
  "progress_percentage":${progressPercentage},
  "projects_id":${projectsId},
  "sprints_statuses_id": ${sprintsStatusesId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit sprints record',
      apiUrl: '${baseUrl}/sprints/${sprintsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllSprintsTasksRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? projectsId,
    int? sprintsId,
    int? search,
    List<int>? equipamentsTypesIdList,
    List<int>? teamsIdList,
    int? fieldsId,
    int? rowsId,
    int? sectionsId,
    int? pagePen,
    int? perPagePen,
    int? pageAnd,
    int? perPageAnd,
    int? pageIns,
    int? perPageIns,
    int? pageSem,
    int? perPageSem,
    int? pageConc,
    int? perPageConc,
    String? scheduledFor = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();
    final equipamentsTypesId = _serializeList(equipamentsTypesIdList);
    final teamsId = _serializeList(teamsIdList);

    final ffApiRequestBody = '''
{
  "projects_id": ${projectsId},
  "sprints_id": ${sprintsId},
  "equipaments_types_id": ${equipamentsTypesId},
  "teams_id": ${teamsId},
  "fields_id": ${fieldsId},
  "rows_id": ${rowsId},
  "search": ${search},
  "sections_id": ${sectionsId},
  "pagePen": ${pagePen},
  "per_pagePen": ${perPagePen},
  "pageAnd": ${pageAnd},
  "per_pageAnd": ${perPageAnd},
  "pageIns": ${pageIns},
  "per_pageIns": ${perPageIns},
  "pageSem": ${pageSem},
  "per_pageSem": ${perPageSem},
  "pageConc": ${pageConc},
  "per_pageConc": ${perPageConc},
  "scheduled_for": "${escapeStringForJson(scheduledFor)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Query all sprints_tasks records',
      apiUrl: '${baseUrl}/sprints_tasks_painel',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? pendentes(dynamic response) => getJsonField(
        response,
        r'''$.sprints_tasks_pendentes.items''',
        true,
      ) as List?;
  List? andamentos(dynamic response) => getJsonField(
        response,
        r'''$.sprints_tasks_em_andamento.items''',
        true,
      ) as List?;
  List? concluidas(dynamic response) => getJsonField(
        response,
        r'''$.sprints_tasks_concluidas.items''',
        true,
      ) as List?;
  List? semSucesso(dynamic response) => getJsonField(
        response,
        r'''$.sprints_tasks_sem_sucesso.items''',
        true,
      ) as List?;
  List? inspecoes(dynamic response) => getJsonField(
        response,
        r'''$.sprints_tasks_inspecao.items''',
        true,
      ) as List?;
  int? curPageAnd(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_em_andamento.curPage''',
      ));
  int? curPagePen(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_pendentes.curPage''',
      ));
  int? curPageCon(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_concluidas.curPage''',
      ));
  int? curPageSucess(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_sem_sucesso.curPage''',
      ));
  int? curPageIns(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_inspecao.curPage''',
      ));
  int? aNDitemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_em_andamento.itemsReceived''',
      ));
  int? aNDitemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_em_andamento.itemsTotal''',
      ));
  int? pENitemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_pendentes.itemsReceived''',
      ));
  int? pENitemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_pendentes.itemsTotal''',
      ));
  int? cONCitemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_concluidas.itemsReceived''',
      ));
  int? cONCitemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_concluidas.itemsTotal''',
      ));
  int? sEMitemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_sem_sucesso.itemsReceived''',
      ));
  int? sEMitemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_sem_sucesso.itemsTotal''',
      ));
  int? iNSitemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_inspecao.itemsReceived''',
      ));
  int? iNSitemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_inspecao.itemsTotal''',
      ));
  int? aNDpageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_em_andamento.pageTotal''',
      ));
  int? pENpageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_pendentes.pageTotal''',
      ));
  int? cONCpageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_concluidas.pageTotal''',
      ));
  int? sEMpageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_sem_sucesso.pageTotal''',
      ));
  int? iNSpageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sprints_tasks_inspecao.pageTotal''',
      ));
  bool? hasteamcreated(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.has_team_created''',
      ));
}

class GetSprintsStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get sprints_statuses record',
      apiUrl: '${baseUrl}/sprints_statuses/${sprintsStatusesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSprintsStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? sprintsStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete sprints_statuses record.',
      apiUrl: '${baseUrl}/sprints_statuses/${sprintsStatusesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddSprintsStatusesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add sprints_statuses record',
      apiUrl: '${baseUrl}/sprints_statuses',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddSprintsTasksStatusRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add sprints_tasks_status record',
      apiUrl: '${baseUrl}/sprints_tasks_statuses',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddSprintsTasksRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? sprintsId,
    int? teamsId,
    List<int>? backlogsIdList,
    List<int>? subtasksIdList,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();
    final backlogsId = _serializeList(backlogsIdList);
    final subtasksId = _serializeList(subtasksIdList);

    final ffApiRequestBody = '''
{
  "sprints_id": ${sprintsId},
  "teams_id": ${teamsId},
  "backlogs_id": ${backlogsId},
  "subtasks_id": ${subtasksId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add sprints_tasks record',
      apiUrl: '${baseUrl}/sprints_tasks',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSprintsTasksStatusRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? sprintsTasksStatusesId,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete sprints_tasks_status record.',
      apiUrl: '${baseUrl}/sprints_tasks_statuses/${sprintsTasksStatusesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditSprintsTasksStatusRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? sprintsTasksStatusesId,
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sprints_tasks_status_id": 0,
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit sprints_tasks_status record',
      apiUrl: '${baseUrl}/sprints_tasks_statuses/${sprintsTasksStatusesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SprintsGraficoFiltroCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Sprints grafico filtro',
      apiUrl: '${baseUrl}/sprints_grafico_filter',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CountsSubtasksCall {
  Future<ApiCallResponse> call({
    int? projectsBacklogsId,
    String? token = '',
  }) async {
    final baseUrl = SprintsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'counts subtasks',
      apiUrl: '${baseUrl}/counts_subtasks',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'projects_backlogs_id': projectsBacklogsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? totalpai(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.total_pai''',
      ));
  double? totalsomafilhos(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.total_soma_filhos''',
      ));
  double? totaldonefilhos(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.total_done_filhos''',
      ));
  double? totaldisponivelcriacao(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.total_disponivel_criacao''',
      ));
}

/// End Sprints Group Code

/// Start Module Group Code

class ModuleGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:nUPQqKD8';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static AddModulesTypesRecordCall addModulesTypesRecordCall =
      AddModulesTypesRecordCall();
  static QueryAllModulesTrackersRecordsCall queryAllModulesTrackersRecordsCall =
      QueryAllModulesTrackersRecordsCall();
  static DeleteModulesTypesRecordCall deleteModulesTypesRecordCall =
      DeleteModulesTypesRecordCall();
  static EditModulesRecordCall editModulesRecordCall = EditModulesRecordCall();
  static AddModulesRecordCall addModulesRecordCall = AddModulesRecordCall();
  static EditModulesTrackersRecordCall editModulesTrackersRecordCall =
      EditModulesTrackersRecordCall();
  static DeleteModulesTrackersRecordCall deleteModulesTrackersRecordCall =
      DeleteModulesTrackersRecordCall();
  static GetModulesTrackersRecordCall getModulesTrackersRecordCall =
      GetModulesTrackersRecordCall();
  static AddModulesTrackersRecordCall addModulesTrackersRecordCall =
      AddModulesTrackersRecordCall();
  static GetModulesRecordCall getModulesRecordCall = GetModulesRecordCall();
  static QueryAllModulesRecordsCall queryAllModulesRecordsCall =
      QueryAllModulesRecordsCall();
  static GetModulesTypesRecordCall getModulesTypesRecordCall =
      GetModulesTypesRecordCall();
  static DeleteModulesRecordCall deleteModulesRecordCall =
      DeleteModulesRecordCall();
  static EditModulesTypesRecordCall editModulesTypesRecordCall =
      EditModulesTypesRecordCall();
  static QueryAllModulesTypesRecordsCall queryAllModulesTypesRecordsCall =
      QueryAllModulesTypesRecordsCall();
}

class AddModulesTypesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? type = '',
    int? equipamentsTypesId,
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "${escapeStringForJson(type)}",
"equipaments_types_id": ${equipamentsTypesId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add modules_types record',
      apiUrl: '${baseUrl}/modules_types',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class QueryAllModulesTrackersRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all modules_trackers records',
      apiUrl: '${baseUrl}/modules_trackers',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteModulesTypesRecordCall {
  Future<ApiCallResponse> call({
    int? modulesTypesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete modules_types record.',
      apiUrl: '${baseUrl}/modules_types/${modulesTypesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditModulesRecordCall {
  Future<ApiCallResponse> call({
    int? modulesId,
    String? bearerAuth = '',
    int? updatedAt,
    int? deletedAt,
    double? voltage,
    double? current,
    double? shortCircuitCurrent,
    double? power,
    double? vco,
    double? im,
    double? vm,
    int? modulesTypesId,
    int? manufacturersId,
    String? moduleTypes = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "updated_at": ${updatedAt},
  "deleted_at": ${deletedAt},
  "voltage": ${voltage},
  "current": ${current},
  "short_circuit_current": ${shortCircuitCurrent},
  "power": ${power},
  "vco": ${vco},
  "im": ${im},
  "vm": ${vm},
  "modules_types_id": ${modulesTypesId},
  "manufacturers_id": ${manufacturersId},
  "module_types": "${escapeStringForJson(moduleTypes)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit modules record',
      apiUrl: '${baseUrl}/modules/${modulesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddModulesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    double? voltage,
    double? current,
    double? shortCircuitCurrent,
    double? power,
    double? vco,
    double? im,
    double? vm,
    int? modulesTypesId,
    int? manufacturersId,
    String? moduleTypes = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "voltage": ${voltage},
  "current": ${current},
  "short_circuit_current": ${shortCircuitCurrent},
  "power": ${power},
  "vco": ${vco},
  "im": ${im},
  "vm": ${vm},
  "modules_types_id": ${modulesTypesId},
  "manufacturers_id": ${manufacturersId},
  "module_types": "${escapeStringForJson(moduleTypes)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add modules record',
      apiUrl: '${baseUrl}/modules',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditModulesTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? modulesTrackersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "modules_id": 0,
  "trackers_id": 0,
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit modules_trackers record',
      apiUrl: '${baseUrl}/modules_trackers/${modulesTrackersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteModulesTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? modulesTrackersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete modules_trackers record.',
      apiUrl: '${baseUrl}/modules_trackers/${modulesTrackersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetModulesTrackersRecordCall {
  Future<ApiCallResponse> call({
    int? modulesTrackersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get modules_trackers record',
      apiUrl: '${baseUrl}/modules_trackers/${modulesTrackersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddModulesTrackersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "modules_id": 0,
  "trackers_id": 0,
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add modules_trackers record',
      apiUrl: '${baseUrl}/modules_trackers',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetModulesRecordCall {
  Future<ApiCallResponse> call({
    int? modulesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get modules record',
      apiUrl: '${baseUrl}/modules/${modulesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllModulesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? page,
    int? perPage,
    String? search = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all modules records',
      apiUrl: '${baseUrl}/modules',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  int? itemReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageTotal''',
      ));
}

class GetModulesTypesRecordCall {
  Future<ApiCallResponse> call({
    int? modulesTypesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get modules_types record',
      apiUrl: '${baseUrl}/modules_types/${modulesTypesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteModulesRecordCall {
  Future<ApiCallResponse> call({
    int? modulesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete modules record.',
      apiUrl: '${baseUrl}/modules/${modulesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditModulesTypesRecordCall {
  Future<ApiCallResponse> call({
    int? modulesTypesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit modules_types record',
      apiUrl: '${baseUrl}/modules_types/${modulesTypesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllModulesTypesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? search = '',
  }) async {
    final baseUrl = ModuleGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all modules_types records',
      apiUrl: '${baseUrl}/modules_types',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? lista(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

/// End Module Group Code

/// Start Sendgrid Validation Group Code

class SendgridValidationGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:KsPbEemV';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static ThisEndpointIsUsedToValidateThatSendgridIsWorkingCall
      thisEndpointIsUsedToValidateThatSendgridIsWorkingCall =
      ThisEndpointIsUsedToValidateThatSendgridIsWorkingCall();
  static AcaoDeValidarCodigoParaAAlteracaoDeSenhaCall
      acaoDeValidarCodigoParaAAlteracaoDeSenhaCall =
      AcaoDeValidarCodigoParaAAlteracaoDeSenhaCall();
  static ApiParaResetarASenhaDoUsuarioComUmaNovaSenhaCall
      apiParaResetarASenhaDoUsuarioComUmaNovaSenhaCall =
      ApiParaResetarASenhaDoUsuarioComUmaNovaSenhaCall();
  static ApiParaMandarOCodigoDeRecuperacaoParaOEmailCall
      apiParaMandarOCodigoDeRecuperacaoParaOEmailCall =
      ApiParaMandarOCodigoDeRecuperacaoParaOEmailCall();
}

class ThisEndpointIsUsedToValidateThatSendgridIsWorkingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SendgridValidationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "to_email": "",
  "subject": "",
  "body": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'This endpoint is used to validate that sendgrid is working.',
      apiUrl: '${baseUrl}/sendgrid/validate',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AcaoDeValidarCodigoParaAAlteracaoDeSenhaCall {
  Future<ApiCallResponse> call({
    int? code,
    String? usersEmail = '',
  }) async {
    final baseUrl = SendgridValidationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "code": ${code},
  "users_email": "${escapeStringForJson(usersEmail)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Acao de validar codigo para a alteracao de senha',
      apiUrl: '${baseUrl}/sendgrid/validate/code',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiParaResetarASenhaDoUsuarioComUmaNovaSenhaCall {
  Future<ApiCallResponse> call({
    String? newPassword = '',
    String? usersEmail = '',
  }) async {
    final baseUrl = SendgridValidationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "is_valid": true,
  "new_password": "${escapeStringForJson(newPassword)}",
  "users_email": "${escapeStringForJson(usersEmail)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'api para resetar a senha do usuario com uma nova senha',
      apiUrl: '${baseUrl}/sendgrid/reset/pass',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiParaMandarOCodigoDeRecuperacaoParaOEmailCall {
  Future<ApiCallResponse> call({
    String? emailToRecover = '',
  }) async {
    final baseUrl = SendgridValidationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email_to_recover": "${escapeStringForJson(emailToRecover)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'api para mandar o codigo de recuperacao para o email',
      apiUrl: '${baseUrl}/sendgrid/send/code',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Sendgrid Validation Group Code

/// Start Projects  Group Code

class ProjectsGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:2--ZlFfr';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static EditTeamsLeadersRecordCall editTeamsLeadersRecordCall =
      EditTeamsLeadersRecordCall();
  static QueryToGetAllLidersFromATeamCall queryToGetAllLidersFromATeamCall =
      QueryToGetAllLidersFromATeamCall();
  static DeleteTeamsMembersRecordCall deleteTeamsMembersRecordCall =
      DeleteTeamsMembersRecordCall();
  static AddProjectsBacklogsRecordCall addProjectsBacklogsRecordCall =
      AddProjectsBacklogsRecordCall();
  static AddProjectsStatusesRecordCall addProjectsStatusesRecordCall =
      AddProjectsStatusesRecordCall();
  static ProjectsBacklogsBulkCall projectsBacklogsBulkCall =
      ProjectsBacklogsBulkCall();
  static EditProjectsWorksSituationsRecordCall
      editProjectsWorksSituationsRecordCall =
      EditProjectsWorksSituationsRecordCall();
  static QueryAllTeamsRecordsCall queryAllTeamsRecordsCall =
      QueryAllTeamsRecordsCall();
  static GetProjectsWorksSituationsRecordCall
      getProjectsWorksSituationsRecordCall =
      GetProjectsWorksSituationsRecordCall();
  static EditProjectsStatusesRecordCall editProjectsStatusesRecordCall =
      EditProjectsStatusesRecordCall();
  static AddTeamsRecordCall addTeamsRecordCall = AddTeamsRecordCall();
  static GetProjectsStatusesRecordCall getProjectsStatusesRecordCall =
      GetProjectsStatusesRecordCall();
  static DeleteProjectsBacklogsRecordCall deleteProjectsBacklogsRecordCall =
      DeleteProjectsBacklogsRecordCall();
  static DeleteTeamsLeadersRecordCall deleteTeamsLeadersRecordCall =
      DeleteTeamsLeadersRecordCall();
  static EditProjectsRecordCall editProjectsRecordCall =
      EditProjectsRecordCall();
  static GetProjectsBacklogsRecordCall getProjectsBacklogsRecordCall =
      GetProjectsBacklogsRecordCall();
  static QueryAllIdsProjectsBacklogsRecordCall
      queryAllIdsProjectsBacklogsRecordCall =
      QueryAllIdsProjectsBacklogsRecordCall();
  static EquipamentsTypeCall equipamentsTypeCall = EquipamentsTypeCall();
  static DeleteProjectsUsersRecordCall deleteProjectsUsersRecordCall =
      DeleteProjectsUsersRecordCall();
  static EditProjectsUsersRecordCall editProjectsUsersRecordCall =
      EditProjectsUsersRecordCall();
  static DeleteProjectsRecordCall deleteProjectsRecordCall =
      DeleteProjectsRecordCall();
  static EditaLiderDoTimeCall editaLiderDoTimeCall = EditaLiderDoTimeCall();
  static DeleteProjectsWorksSituationsRecordCall
      deleteProjectsWorksSituationsRecordCall =
      DeleteProjectsWorksSituationsRecordCall();
  static QueryAllTeamsLeadersRecordsCall queryAllTeamsLeadersRecordsCall =
      QueryAllTeamsLeadersRecordsCall();
  static GetTeamsMembersRecordCall getTeamsMembersRecordCall =
      GetTeamsMembersRecordCall();
  static QueryAllProjectsStatusesRecordsCall
      queryAllProjectsStatusesRecordsCall =
      QueryAllProjectsStatusesRecordsCall();
  static EditTeamsRecordCall editTeamsRecordCall = EditTeamsRecordCall();
  static EditTeamsMembersRecordCall editTeamsMembersRecordCall =
      EditTeamsMembersRecordCall();
  static QueryAllProjectsRecordsCall queryAllProjectsRecordsCall =
      QueryAllProjectsRecordsCall();
  static AddTeamsLeadersRecordCall addTeamsLeadersRecordCall =
      AddTeamsLeadersRecordCall();
  static AddProjectsRecordCall addProjectsRecordCall = AddProjectsRecordCall();
  static GetTeamsLeadersRecordCall getTeamsLeadersRecordCall =
      GetTeamsLeadersRecordCall();
  static GetTeamsRecordCall getTeamsRecordCall = GetTeamsRecordCall();
  static AddTeamsMembersRecordCall addTeamsMembersRecordCall =
      AddTeamsMembersRecordCall();
  static GetProjectsRecordCall getProjectsRecordCall = GetProjectsRecordCall();
  static AddProjectsUsersRecordCall addProjectsUsersRecordCall =
      AddProjectsUsersRecordCall();
  static QueryAllProjectsUsersRecordsCall queryAllProjectsUsersRecordsCall =
      QueryAllProjectsUsersRecordsCall();
  static DeleteProjectsStatusesRecordCall deleteProjectsStatusesRecordCall =
      DeleteProjectsStatusesRecordCall();
  static AddProjectsWorksSituationsRecordCall
      addProjectsWorksSituationsRecordCall =
      AddProjectsWorksSituationsRecordCall();
  static QueryAllTeamsMembersRecordsCall queryAllTeamsMembersRecordsCall =
      QueryAllTeamsMembersRecordsCall();
  static GetProjectsUsersRecordCall getProjectsUsersRecordCall =
      GetProjectsUsersRecordCall();
  static DeleteTeamsRecordCall deleteTeamsRecordCall = DeleteTeamsRecordCall();
  static FiltraOsCamposCall filtraOsCamposCall = FiltraOsCamposCall();
  static GetAllProjectsBacklogsCall getAllProjectsBacklogsCall =
      GetAllProjectsBacklogsCall();
  static EditaUmMembroDoTimeCall editaUmMembroDoTimeCall =
      EditaUmMembroDoTimeCall();
  static QueryAllProjectsWorksSituationsRecordsCall
      queryAllProjectsWorksSituationsRecordsCall =
      QueryAllProjectsWorksSituationsRecordsCall();
  static EditProjectsBacklogsRecordCall editProjectsBacklogsRecordCall =
      EditProjectsBacklogsRecordCall();
  static AddTasksBacklogManualCall addTasksBacklogManualCall =
      AddTasksBacklogManualCall();
  static CheckTaskBacklogCall checkTaskBacklogCall = CheckTaskBacklogCall();
  static EditTaskBacklogCall editTaskBacklogCall = EditTaskBacklogCall();
  static AddSubtasksCall addSubtasksCall = AddSubtasksCall();
  static EditSubtasksCall editSubtasksCall = EditSubtasksCall();
  static GetSubtasksCall getSubtasksCall = GetSubtasksCall();
}

class EditTeamsLeadersRecordCall {
  Future<ApiCallResponse> call({
    int? teamsLeadersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "users_id": 0,
  "teams_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit teams_leaders record',
      apiUrl: '${baseUrl}/teams_leaders/${teamsLeadersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryToGetAllLidersFromATeamCall {
  Future<ApiCallResponse> call({
    int? teamsId,
    int? projectsId,
    int? page,
    int? perPage,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query to get all liders from a team',
      apiUrl: '${baseUrl}/teams_leaders/all/${teamsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'projects_id': projectsId,
        'page': page,
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
}

class DeleteTeamsMembersRecordCall {
  Future<ApiCallResponse> call({
    int? teamsMembersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete teams_members record.',
      apiUrl: '${baseUrl}/teams_members/${teamsMembersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddProjectsBacklogsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? projectsId,
    dynamic? listaTasksJson,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final listaTasks = _serializeJson(listaTasksJson, true);
    final ffApiRequestBody = '''
{
  "projects_id": ${projectsId},
  "lista_tasks": ${listaTasks}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add projects backlogs record',
      apiUrl: '${baseUrl}/projects_backlogs',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class AddProjectsStatusesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add projects_statuses record',
      apiUrl: '${baseUrl}/projects_statuses',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProjectsBacklogsBulkCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? projectsId,
    int? equipamentsTypesId,
    String? description = '',
    double? weight,
    int? unityId,
    double? quantity,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "projects_id": ${projectsId},
  "equipaments_types_id": ${equipamentsTypesId},
  "description": "${escapeStringForJson(description)}",
  "weight": ${weight},
  "unity_id": ${unityId},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'projects backlogs bulk',
      apiUrl: '${baseUrl}/projects_backlogs/bulk',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProjectsWorksSituationsRecordCall {
  Future<ApiCallResponse> call({
    int? projectsWorksSituationsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit projects_works_situations record',
      apiUrl:
          '${baseUrl}/projects_works_situations/${projectsWorksSituationsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllTeamsRecordsCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    int? teamsId,
    int? page,
    int? perPage,
    String? bearerAuth = '',
    String? search = '',
    List<int>? usersRolesIdList,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();
    final usersRolesId = _serializeList(usersRolesIdList);

    final ffApiRequestBody = '''
{
  "teams_id":${teamsId},
  "page":${page},
  "per_page":${perPage},
  "search": "${escapeStringForJson(search)}",
  "users_roles_id": ${usersRolesId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Query all teams records',
      apiUrl: '${baseUrl}/teams_list/all/${projectsId}',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageTotal''',
      ));
}

class GetProjectsWorksSituationsRecordCall {
  Future<ApiCallResponse> call({
    int? projectsWorksSituationsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get projects_works_situations record',
      apiUrl:
          '${baseUrl}/projects_works_situations/${projectsWorksSituationsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProjectsStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? projectsStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit projects_statuses record',
      apiUrl: '${baseUrl}/projects_statuses/${projectsStatusesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTeamsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? name = '',
    int? projectsId,
    List<int>? usersOnTeamList,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();
    final usersOnTeam = _serializeList(usersOnTeamList);

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "projects_id": ${projectsId},
  "users_on_team": ${usersOnTeam}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add teams record',
      apiUrl: '${baseUrl}/teams',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetProjectsStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? projectsStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get projects_statuses record',
      apiUrl: '${baseUrl}/projects_statuses/${projectsStatusesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectsBacklogsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? projectsBacklogsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete projects backlogs record',
      apiUrl: '${baseUrl}/projects_backlogs/${projectsBacklogsId}',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTeamsLeadersRecordCall {
  Future<ApiCallResponse> call({
    int? teamsLeadersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete teams_leaders record.',
      apiUrl: '${baseUrl}/teams_leaders/${teamsLeadersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProjectsRecordCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? bearerAuth = '',
    String? registrationNumber = '',
    String? name = '',
    String? projectCreationDate = '',
    String? originRegistration = '',
    String? art = '',
    String? rrt = '',
    String? cib = '',
    String? realStateRegistration = '',
    String? startDate = '',
    String? permitNumber = '',
    String? cnae = '',
    String? situationDate = '',
    String? responsible = '',
    String? cep = '',
    String? city = '',
    String? number = '',
    String? state = '',
    String? country = '',
    String? street = '',
    String? complement = '',
    String? cnpj = '',
    int? completionPercentage,
    int? projectsStatusesId,
    int? projectsWorksSituationsId,
    String? category = '',
    String? destination = '',
    String? projectWorkType = '',
    String? resultingWorkArea = '',
    FFUploadedFile? pdf,
    String? neighbourhood = '',
    int? companyId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Edit projects record',
      apiUrl: '${baseUrl}/projects/${projectsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'registration_number': registrationNumber,
        'name': name,
        'project_creation_date': projectCreationDate,
        'origin_registration': originRegistration,
        'art': art,
        'rrt': rrt,
        'cib': cib,
        'real_state_registration': realStateRegistration,
        'start_date': startDate,
        'permit_number': permitNumber,
        'cnae': cnae,
        'situation_date': situationDate,
        'responsible': responsible,
        'cep': cep,
        'city': city,
        'number': number,
        'state': state,
        'country': country,
        'street': street,
        'complement': complement,
        'cnpj': cnpj,
        'completion_percentage': completionPercentage,
        'projects_statuses_id': projectsStatusesId,
        'projects_works_situations_id': projectsWorksSituationsId,
        'category': category,
        'destination': destination,
        'project_work_type': projectWorkType,
        'resulting_work_area': resultingWorkArea,
        'pdf': pdf,
        'neighbourhood': neighbourhood,
        'company_id': companyId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectsBacklogsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? page,
    int? perPage,
    int? projectsId,
    List<int>? equipamentsTypesIdList,
    bool? sprintAdded = false,
    String? search = '',
    List<int>? fieldsIdList,
    List<int>? sectionsIdList,
    List<int>? rowsIdList,
    List<int>? trackersIdList,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();
    final equipamentsTypesId = _serializeList(equipamentsTypesIdList);
    final fieldsId = _serializeList(fieldsIdList);
    final sectionsId = _serializeList(sectionsIdList);
    final rowsId = _serializeList(rowsIdList);
    final trackersId = _serializeList(trackersIdList);

    final ffApiRequestBody = '''
{
  "page": ${page},
  "per_page": ${perPage},
  "equipaments_types_id": ${equipamentsTypesId},
  "sprint_added": ${sprintAdded},
  "search": "${escapeStringForJson(search)}",
  "fields_id": ${fieldsId},
  "sections_id": ${sectionsId},
  "rows_id": ${rowsId},
  "trackers_id": ${trackersId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get projects backlogs record',
      apiUrl: '${baseUrl}/projects_backlogs_list/${projectsId}',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  dynamic nextPage(dynamic response) => getJsonField(
        response,
        r'''$.nextPage''',
      );
  dynamic prevPage(dynamic response) => getJsonField(
        response,
        r'''$.prevPage''',
      );
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageTotal''',
      ));
}

class QueryAllIdsProjectsBacklogsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? page,
    int? perPage,
    int? projectsId,
    List<int>? equipamentsTypesIdList,
    bool? sprintAdded = false,
    String? search = '',
    List<int>? fieldsIdList,
    List<int>? sectionsIdList,
    List<int>? rowsIdList,
    List<int>? trackersIdList,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();
    final equipamentsTypesId = _serializeList(equipamentsTypesIdList);
    final fieldsId = _serializeList(fieldsIdList);
    final sectionsId = _serializeList(sectionsIdList);
    final rowsId = _serializeList(rowsIdList);
    final trackersId = _serializeList(trackersIdList);

    final ffApiRequestBody = '''
{
  "page": ${page},
  "per_page": ${perPage},
  "equipaments_types_id": ${equipamentsTypesId},
  "sprint_added": ${sprintAdded},
  "search": "${escapeStringForJson(search)}",
  "fields_id": ${fieldsId},
  "sections_id": ${sectionsId},
  "rows_id": ${rowsId},
  "trackers_id": ${trackersId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Query all ids projects backlogs record ',
      apiUrl: '${baseUrl}/projects_backlogs_list/${projectsId}/clone_0',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class EquipamentsTypeCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Equipaments type',
      apiUrl: '${baseUrl}/equipaments_types',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DeleteProjectsUsersRecordCall {
  Future<ApiCallResponse> call({
    int? projectsUsersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete projects_users record.',
      apiUrl: '${baseUrl}/projects_users/${projectsUsersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProjectsUsersRecordCall {
  Future<ApiCallResponse> call({
    int? projectsUsersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "users_id": 0,
  "projects_id": 0,
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit projects_users record',
      apiUrl: '${baseUrl}/projects_users/${projectsUsersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectsRecordCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete projects record.',
      apiUrl: '${baseUrl}/projects/${projectsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditaLiderDoTimeCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? teamsId,
    List<int>? listUsersList,
    String? nome = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();
    final listUsers = _serializeList(listUsersList);

    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "teams_id": ${teamsId},
  "list_users": ${listUsers}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edita lider do time',
      apiUrl: '${baseUrl}/edit_teams_leaders',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectsWorksSituationsRecordCall {
  Future<ApiCallResponse> call({
    int? projectsWorksSituationsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete projects_works_situations record.',
      apiUrl:
          '${baseUrl}/projects_works_situations/${projectsWorksSituationsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllTeamsLeadersRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? page,
    int? perPage,
    int? projectsId,
    int? teamsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all teams_leaders records',
      apiUrl: '${baseUrl}/teams_leaders',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'projects_id': projectsId,
        'teams_id': teamsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageTotal''',
      ));
  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.items[:].user''',
      );
}

class GetTeamsMembersRecordCall {
  Future<ApiCallResponse> call({
    int? teamsMembersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get teams_members record',
      apiUrl: '${baseUrl}/teams_members/${teamsMembersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllProjectsStatusesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all projects_statuses records',
      apiUrl: '${baseUrl}/projects_statuses',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditTeamsRecordCall {
  Future<ApiCallResponse> call({
    int? teamsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit teams record',
      apiUrl: '${baseUrl}/teams/${teamsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditTeamsMembersRecordCall {
  Future<ApiCallResponse> call({
    int? teamsMembersId,
    String? bearerAuth = '',
    int? teamsId,
    int? usersId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "users_id": ${usersId},
  "teams_id": ${teamsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit teams_members record',
      apiUrl: '${baseUrl}/teams_members/${teamsMembersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllProjectsRecordsCall {
  Future<ApiCallResponse> call({
    int? page,
    int? perPage,
    String? bearerAuth = '',
    String? search = '',
    int? companyId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all projects records',
      apiUrl: '${baseUrl}/projects',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'search': search,
        'company_id': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? itemsReceived(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsReceived''',
      ));
  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? nextPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.nextPage''',
      ));
  int? prevPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.prevPage''',
      ));
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageTotal''',
      ));
}

class AddTeamsLeadersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "users_id": 0,
  "teams_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add teams_leaders record',
      apiUrl: '${baseUrl}/teams_leaders',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddProjectsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? registrationNumber = '',
    String? name = '',
    int? projectCreationDate,
    String? originRegistration = '',
    String? art = '',
    String? rrt = '',
    String? cib = '',
    String? realStateRegistration = '',
    String? startDate = '',
    String? permitNumber = '',
    String? cnae = '',
    String? situationDate = '',
    String? responsible = '',
    String? cep = '',
    String? city = '',
    int? number,
    String? state = '',
    String? country = '',
    String? street = '',
    String? complement = '',
    String? cnpj = '',
    int? completionPercentage,
    int? projectsStatusesId,
    int? projectsWorksSituationsId,
    String? category = '',
    String? destination = '',
    String? projectWorkType = '',
    String? resultingWorkArea = '',
    FFUploadedFile? fileCno,
    String? neighbourhood = '',
    int? companyId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Add projects record',
      apiUrl: '${baseUrl}/projects',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'registration_number': registrationNumber,
        'name': name,
        'project_creation_date': projectCreationDate,
        'origin_registration': originRegistration,
        'art': art,
        'rrt': rrt,
        'cib': cib,
        'real_state_registration': realStateRegistration,
        'start_date': startDate,
        'permit_number': permitNumber,
        'cnae': cnae,
        'situation_date': situationDate,
        'responsible': responsible,
        'cep': cep,
        'city': city,
        'number': number,
        'state': state,
        'country': country,
        'street': street,
        'complement': complement,
        'cnpj': cnpj,
        'completion_percentage': completionPercentage,
        'projects_statuses_id': projectsStatusesId,
        'projects_works_situations_id': projectsWorksSituationsId,
        'category': category,
        'destination': destination,
        'project_work_type': projectWorkType,
        'resulting_work_area': resultingWorkArea,
        'file_cno': fileCno,
        'neighbourhood': neighbourhood,
        'company_id': companyId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetTeamsLeadersRecordCall {
  Future<ApiCallResponse> call({
    int? teamsLeadersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get teams_leaders record',
      apiUrl: '${baseUrl}/teams_leaders/${teamsLeadersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTeamsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? projectsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get teams record',
      apiUrl: '${baseUrl}/teams',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddTeamsMembersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? teamsId,
    int? usersId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "users_id": ${usersId},
  "teams_id": ${teamsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add teams_members record',
      apiUrl: '${baseUrl}/teams_members',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectsRecordCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get projects record',
      apiUrl: '${baseUrl}/projects/${projectsId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddProjectsUsersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "users_id": 0,
  "projects_id": 0,
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add projects_users record',
      apiUrl: '${baseUrl}/projects_users',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllProjectsUsersRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all projects_users records',
      apiUrl: '${baseUrl}/projects_users',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectsStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? projectsStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete projects_statuses record.',
      apiUrl: '${baseUrl}/projects_statuses/${projectsStatusesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddProjectsWorksSituationsRecordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add projects_works_situations record',
      apiUrl: '${baseUrl}/projects_works_situations',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllTeamsMembersRecordsCall {
  Future<ApiCallResponse> call({
    int? teamsId,
    int? page,
    int? perPage,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all teams_members records',
      apiUrl: '${baseUrl}/teams_members',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'teams_id': teamsId,
        'page': page,
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectsUsersRecordCall {
  Future<ApiCallResponse> call({
    int? projectsUsersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get projects_users record',
      apiUrl: '${baseUrl}/projects_users/${projectsUsersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTeamsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? teamsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete teams record.',
      apiUrl: '${baseUrl}/teams/${teamsId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FiltraOsCamposCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    List<int>? fieldsIdList,
    List<int>? sectionsIdList,
    List<int>? rowsIdList,
    List<int>? trackersIdList,
    int? projectsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();
    final fieldsId = _serializeList(fieldsIdList);
    final sectionsId = _serializeList(sectionsIdList);
    final rowsId = _serializeList(rowsIdList);
    final trackersId = _serializeList(trackersIdList);

    final ffApiRequestBody = '''
{
  "projects_id": ${projectsId},
  "fields_id": ${fieldsId},
  "sections_id": ${sectionsId},
  "rows_id": ${rowsId},
  "trackers_id": ${trackersId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'filtra os campos ',
      apiUrl: '${baseUrl}/filters_project_backlog',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? fields(dynamic response) => getJsonField(
        response,
        r'''$.fields''',
        true,
      ) as List?;
  List? sections(dynamic response) => getJsonField(
        response,
        r'''$.sections''',
        true,
      ) as List?;
  List? rows(dynamic response) => getJsonField(
        response,
        r'''$.rows''',
        true,
      ) as List?;
  List? trackers(dynamic response) => getJsonField(
        response,
        r'''$.trackers''',
        true,
      ) as List?;
}

class GetAllProjectsBacklogsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get all projects backlogs',
      apiUrl: '${baseUrl}/projects_backlogs',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditaUmMembroDoTimeCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? updatedAt = '',
    int? teamsId,
    List<int>? listUsersList,
    int? projectsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();
    final listUsers = _serializeList(listUsersList);

    final ffApiRequestBody = '''
{
  "teams_id": ${teamsId},
  "list_users": ${listUsers},
"projects_id": ${projectsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edita um membro do time',
      apiUrl: '${baseUrl}/edit_teams_member',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllProjectsWorksSituationsRecordsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all projects_works_situations records',
      apiUrl: '${baseUrl}/projects_works_situations',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProjectsBacklogsRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? projectsBacklogsId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "projects_id": 0,
  "tasks_id": 0,
  "projects_backlogs_statuses_id": 1,
  "trackers_id": 0,
  "sections_id": 0,
  "fields_id": 0,
  "rows_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit projects backlogs record',
      apiUrl: '${baseUrl}/projects_backlogs/${projectsBacklogsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTasksBacklogManualCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? projectsId,
    double? quantity,
    int? equipamentsTypesId,
    String? description = '',
    double? weight,
    int? unityId,
    int? taskQuantity,
    int? disciplineId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "projects_id": ${projectsId},
  "equipaments_types_id": ${equipamentsTypesId},
  "description": "${escapeStringForJson(description)}",
  "weight": ${weight},
  "unity_id": ${unityId},
  "quantity": ${quantity},
  "task_quantity": ${taskQuantity},
  "discipline_id": ${disciplineId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add tasks backlog manual',
      apiUrl: '${baseUrl}/projects_backlogs_manual',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckTaskBacklogCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? projectsId,
    int? tasksId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'check task backlog',
      apiUrl: '${baseUrl}/projects_backlogs_list/${projectsId}/check_taks',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'tasks_id': tasksId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class EditTaskBacklogCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? description = '',
    int? equipamentsTypesId,
    double? weight,
    int? unityId,
    double? quantity,
    int? projectsBacklogsId,
    int? disciplineId,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "description": "${escapeStringForJson(description)}",
  "equipaments_types_id": ${equipamentsTypesId},
  "weight": ${weight},
  "unity_id": ${unityId},
  "quantity": ${quantity},
  "discipline_id": ${disciplineId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit task backlog',
      apiUrl: '${baseUrl}/projects_backlogs_list/${projectsBacklogsId}',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddSubtasksCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? projectsBacklogsId,
    String? description = '',
    double? weight,
    bool? fixed,
    int? projectsId,
    double? quantity,
    int? taskQuantity,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "projects_backlogs_id": ${projectsBacklogsId},
  "description": "${escapeStringForJson(description)}",
  "weight": ${weight},
  "fixed": ${fixed},
  "projects_id": ${projectsId},
  "quantity": ${quantity},
  "task_quantity": ${taskQuantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add subtasks',
      apiUrl: '${baseUrl}/subtasks',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditSubtasksCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? description = '',
    double? weight,
    bool? fixed,
    int? subtasksId,
    double? quantity,
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "description": "${escapeStringForJson(description)}",
  "weight": ${weight},
  "fixed": ${fixed},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit subtasks',
      apiUrl: '${baseUrl}/subtasks/${subtasksId}',
      callType: ApiCallType.PUT,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSubtasksCall {
  Future<ApiCallResponse> call({
    int? projectsBacklogsId,
    String? token = '',
  }) async {
    final baseUrl = ProjectsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get subtasks',
      apiUrl: '${baseUrl}/subtasks',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'projects_backlogs_id': projectsBacklogsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Projects  Group Code

/// Start Manufacturers  Group Code

class ManufacturersGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:KxOV_SOi';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static AddManufacturersRecordCall addManufacturersRecordCall =
      AddManufacturersRecordCall();
  static EditManufacturersRecordCall editManufacturersRecordCall =
      EditManufacturersRecordCall();
  static GetManufacturersRecordCall getManufacturersRecordCall =
      GetManufacturersRecordCall();
  static DeleteManufacturersRecordCall deleteManufacturersRecordCall =
      DeleteManufacturersRecordCall();
  static QueryAllManufacturersRecordsCall queryAllManufacturersRecordsCall =
      QueryAllManufacturersRecordsCall();
}

class AddManufacturersRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? name = '',
    int? equipamentsTypesId = 0,
  }) async {
    final baseUrl = ManufacturersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "equipaments_types_id": ${equipamentsTypesId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add manufacturers record',
      apiUrl: '${baseUrl}/manufacturers',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class EditManufacturersRecordCall {
  Future<ApiCallResponse> call({
    int? manufacturersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ManufacturersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit manufacturers record',
      apiUrl: '${baseUrl}/manufacturers/${manufacturersId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetManufacturersRecordCall {
  Future<ApiCallResponse> call({
    int? manufacturersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ManufacturersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get manufacturers record',
      apiUrl: '${baseUrl}/manufacturers/${manufacturersId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteManufacturersRecordCall {
  Future<ApiCallResponse> call({
    int? manufacturersId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ManufacturersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete manufacturers record.',
      apiUrl: '${baseUrl}/manufacturers/${manufacturersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllManufacturersRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? search = '',
    int? equipamentsTypeId,
  }) async {
    final baseUrl = ManufacturersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all manufacturers records',
      apiUrl: '${baseUrl}/manufacturers',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'search': search,
        'equipaments_types_id': equipamentsTypeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
}

/// End Manufacturers  Group Code

/// Start Stakes Group Code

class StakesGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:fIuUi9AL';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static GetStakesStatusesRecordCall getStakesStatusesRecordCall =
      GetStakesStatusesRecordCall();
  static QueryAllStakesTypesRecordsCall queryAllStakesTypesRecordsCall =
      QueryAllStakesTypesRecordsCall();
  static GetStakesTypesRecordCall getStakesTypesRecordCall =
      GetStakesTypesRecordCall();
  static AddStakesTypesRecordCall addStakesTypesRecordCall =
      AddStakesTypesRecordCall();
  static QueryAllStakesStatusesRecordsCall queryAllStakesStatusesRecordsCall =
      QueryAllStakesStatusesRecordsCall();
  static DeleteStakesStatusesRecordCall deleteStakesStatusesRecordCall =
      DeleteStakesStatusesRecordCall();
  static DeleteStakesRecordCall deleteStakesRecordCall =
      DeleteStakesRecordCall();
  static EditStakesRecordCall editStakesRecordCall = EditStakesRecordCall();
  static QueryAllStakesRecordsCall queryAllStakesRecordsCall =
      QueryAllStakesRecordsCall();
  static GetStakesRecordCall getStakesRecordCall = GetStakesRecordCall();
  static AddStakesRecordCall addStakesRecordCall = AddStakesRecordCall();
  static DeleteStakesTypesRecordCall deleteStakesTypesRecordCall =
      DeleteStakesTypesRecordCall();
  static EditStakesTypesRecordCall editStakesTypesRecordCall =
      EditStakesTypesRecordCall();
  static GetEstacasDeUmTrackersCall getEstacasDeUmTrackersCall =
      GetEstacasDeUmTrackersCall();
  static AddStakesStatusesRecordCall addStakesStatusesRecordCall =
      AddStakesStatusesRecordCall();
  static EditStakesStatusesRecordCall editStakesStatusesRecordCall =
      EditStakesStatusesRecordCall();
}

class GetStakesStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get stakes_statuses record',
      apiUrl: '${baseUrl}/stakes_statuses/${stakesStatusesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllStakesTypesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? trackersId,
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all stakes_types records',
      apiUrl: '${baseUrl}/stakes_types',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'trackers_id ': trackersId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStakesTypesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesTypesId,
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get stakes_types record',
      apiUrl: '${baseUrl}/stakes_types/${stakesTypesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddStakesTypesRecordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StakesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add stakes_types record',
      apiUrl: '${baseUrl}/stakes_types',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllStakesStatusesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all stakes_statuses records',
      apiUrl: '${baseUrl}/stakes_statuses',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteStakesStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete stakes_statuses record.',
      apiUrl: '${baseUrl}/stakes_statuses/${stakesStatusesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteStakesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete stakes record.',
      apiUrl: '${baseUrl}/stakes/${stakesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditStakesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "position": "",
  "is_motor": false,
  "updated_at": 0,
  "deleted_at": 0,
  "trackers_id": 0,
  "stakes_statuses_id": 0,
  "stakes_types_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit stakes record',
      apiUrl: '${baseUrl}/stakes/${stakesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllStakesRecordsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all stakes records',
      apiUrl: '${baseUrl}/stakes',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStakesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get stakes record',
      apiUrl: '${baseUrl}/stakes/${stakesId}',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddStakesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "position": "",
  "is_motor": false,
  "updated_at": 0,
  "deleted_at": 0,
  "trackers_id": 0,
  "stakes_statuses_id": 0,
  "stakes_types_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add stakes record',
      apiUrl: '${baseUrl}/stakes',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteStakesTypesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesTypesId,
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete stakes_types record.',
      apiUrl: '${baseUrl}/stakes_types/${stakesTypesId}',
      callType: ApiCallType.DELETE,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditStakesTypesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesTypesId,
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit stakes_types record',
      apiUrl: '${baseUrl}/stakes_types/${stakesTypesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEstacasDeUmTrackersCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? trackersId,
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get estacas de um trackers',
      apiUrl: '${baseUrl}/stakes_tracker',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'trackers_id': trackersId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddStakesStatusesRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add stakes_statuses record',
      apiUrl: '${baseUrl}/stakes_statuses',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditStakesStatusesRecordCall {
  Future<ApiCallResponse> call({
    int? stakesStatusesId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = StakesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "",
  "updated_at": 0,
  "deleted_at": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit stakes_statuses record',
      apiUrl: '${baseUrl}/stakes_statuses/${stakesStatusesId}',
      callType: ApiCallType.PATCH,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Stakes Group Code

/// Start Authentication  Group Code

class AuthenticationGroup {
  static String getBaseUrl() =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:Hc67zbYj';
  static Map<String, String> headers = {
    'X-data-source': 'dev',
  };
  static GetTheRecordBelongingToTheAuthenticationTokenCall
      getTheRecordBelongingToTheAuthenticationTokenCall =
      GetTheRecordBelongingToTheAuthenticationTokenCall();
  static LoginAndRetrieveAnAuthenticationTokenCall
      loginAndRetrieveAnAuthenticationTokenCall =
      LoginAndRetrieveAnAuthenticationTokenCall();
  static SignupAndRetrieveAnAuthenticationTokenCall
      signupAndRetrieveAnAuthenticationTokenCall =
      SignupAndRetrieveAnAuthenticationTokenCall();
}

class GetTheRecordBelongingToTheAuthenticationTokenCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get the record belonging to the authentication token ',
      apiUrl: '${baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'X-data-source': 'dev',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  int? permissionsId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.users_permissions_id''',
      ));
  int? systemId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.users_permissions.users_system_access_id''',
      ));
  int? rolesId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.users_permissions.users_roles_id''',
      ));
  int? controlId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.users_permissions.users_control_system_id''',
      ));
  String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.profile_picture.url''',
      ));
  int? sprintID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.sprints_of_projects_of_sprints_statuses.id''',
      ));
  int? companyID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.company_id''',
      ));
  int? paymentID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.company.status_payment_id''',
      ));
}

class LoginAndRetrieveAnAuthenticationTokenCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? passwordHash = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password_hash": "${escapeStringForJson(passwordHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login and retrieve an authentication token ',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class SignupAndRetrieveAnAuthenticationTokenCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? phone = '',
    String? passwordHash = '',
    FFUploadedFile? profilePicture,
    int? envFromCreate = 1,
    int? userSystemAccess = 3,
    int? userControlSystem = 3,
    int? userRoleType = 3,
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Signup and retrieve an authentication token ',
      apiUrl: '${baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {
        'X-data-source': 'dev',
      },
      params: {
        'name': name,
        'email': email,
        'phone': phone,
        'password_hash': passwordHash,
        'env_from_create': envFromCreate,
        'user_system_access': userSystemAccess,
        'user_control_system': userControlSystem,
        'user_role_type': userRoleType,
        'profile_picture': profilePicture,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

/// End Authentication  Group Code

/// Start Agente IA Group Code

class AgenteIAGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:xsMxTEE1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'X-data-source': 'dev',
  };
  static AgentTaskQueriesCall agentTaskQueriesCall = AgentTaskQueriesCall();
}

class AgentTaskQueriesCall {
  Future<ApiCallResponse> call({
    String? question = '',
    String? token = '',
  }) async {
    final baseUrl = AgenteIAGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "question": "${escapeStringForJson(question)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Agent task queries',
      apiUrl: '${baseUrl}/projetcs/agent/search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.InterpretingAgent1.result.response''',
      ));
}

/// End Agente IA Group Code

/// Start Inventory Group Code

class InventoryGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:6-CZ9z54';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'X-data-source': 'dev',
  };
  static AddProductToInventoryCall addProductToInventoryCall =
      AddProductToInventoryCall();
  static GetProductInventoryCall getProductInventoryCall =
      GetProductInventoryCall();
  static EditProductInventoryCall editProductInventoryCall =
      EditProductInventoryCall();
  static DeleteProdutcInventoryCall deleteProdutcInventoryCall =
      DeleteProdutcInventoryCall();
  static GetAllStatusInventoryCall getAllStatusInventoryCall =
      GetAllStatusInventoryCall();
  static AddQuantityInventoryCall addQuantityInventoryCall =
      AddQuantityInventoryCall();
  static RemoveQuantityInventoryCall removeQuantityInventoryCall =
      RemoveQuantityInventoryCall();
  static QueryAllLogsCall queryAllLogsCall = QueryAllLogsCall();
  static QueryAllLogsCloneCall queryAllLogsCloneCall = QueryAllLogsCloneCall();
  static ExportInventoryCall exportInventoryCall = ExportInventoryCall();
}

class AddProductToInventoryCall {
  Future<ApiCallResponse> call({
    String? product = '',
    String? specifications = '',
    int? inventoryQuantity,
    int? unityId,
    int? statusInventoryId,
    int? equipamentsTypesId,
    int? manufacturersId,
    int? minQuantity,
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "product": "${escapeStringForJson(product)}",
  "specifications": "${escapeStringForJson(specifications)}",
  "inventory_quantity": ${inventoryQuantity},
  "unity_id": ${unityId},
  "status_inventory_id": ${statusInventoryId},
  "equipaments_types_id": ${equipamentsTypesId},
  "manufacturers_id": ${manufacturersId},
  "min_quantity": ${minQuantity},
  "projects_id": ${projectsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add product to inventory',
      apiUrl: '${baseUrl}/product_inventory',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductInventoryCall {
  Future<ApiCallResponse> call({
    int? page,
    int? perPage,
    int? categoryId,
    int? statusId,
    String? search = '',
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get product inventory',
      apiUrl: '${baseUrl}/product_inventory',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'category_id': categoryId,
        'status_id': statusId,
        'search': search,
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? items(dynamic response) => getJsonField(
        response,
        r'''$.result1.items''',
        true,
      ) as List?;
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.pageTotal''',
      ));
  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result1.itemsTotal''',
      ));
  int? all(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.all''',
      ));
  int? low(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.low''',
      ));
  int? no(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.no''',
      ));
}

class EditProductInventoryCall {
  Future<ApiCallResponse> call({
    String? product = '',
    String? specifications = '',
    int? inventoryQuantity,
    int? unityId,
    int? statusInventoryId,
    int? equipamentsTypesId,
    int? manufacturersId,
    int? minQuantity,
    int? productInventoryId,
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "product": "${escapeStringForJson(product)}",
  "specifications": "${escapeStringForJson(specifications)}",
  "inventory_quantity": ${inventoryQuantity},
  "unity_id": ${unityId},
  "equipaments_types_id": ${equipamentsTypesId},
  "status_inventory_id": ${statusInventoryId},
  "manufacturers_id": ${manufacturersId},
  "min_quantity": ${minQuantity},
  "projects_id": ${projectsId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit product inventory',
      apiUrl: '${baseUrl}/product_inventory/${productInventoryId}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProdutcInventoryCall {
  Future<ApiCallResponse> call({
    int? productInventoryId,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete produtc inventory',
      apiUrl: '${baseUrl}/product_inventory/${productInventoryId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'product_inventory_id ': productInventoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllStatusInventoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get all status inventory',
      apiUrl: '${baseUrl}/status_inventory',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddQuantityInventoryCall {
  Future<ApiCallResponse> call({
    int? productInventoryId,
    int? quantity,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "product_inventory_id": ${productInventoryId},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add quantity inventory',
      apiUrl: '${baseUrl}/Add_quantity_inventory',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveQuantityInventoryCall {
  Future<ApiCallResponse> call({
    int? productInventoryId,
    int? quantity,
    int? receivedUser,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "product_inventory_id": ${productInventoryId},
  "quantity": ${quantity},
  "received_user": ${receivedUser}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Remove quantity inventory',
      apiUrl: '${baseUrl}/Remove_quantity_inventory',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllLogsCall {
  Future<ApiCallResponse> call({
    int? page,
    int? perPage,
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query all logs ',
      apiUrl: '${baseUrl}/inventory_logs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'page': page,
        'per_page': perPage,
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? itemsTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.itemsTotal''',
      ));
  int? pageTotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageTotal''',
      ));
  List? items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
}

class QueryAllLogsCloneCall {
  Future<ApiCallResponse> call({
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query all logs  clone ',
      apiUrl: '${baseUrl}/inventory_logs_0',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? items(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ExportInventoryCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    int? statusId,
    int? projectsId,
    String? token = '',
  }) async {
    final baseUrl = InventoryGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'export inventory',
      apiUrl: '${baseUrl}/export_inventory',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'category_id': categoryId,
        'status_id': statusId,
        'projects_id': projectsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? item(dynamic response) => getJsonField(
        response,
        r'''$.result1''',
        true,
      ) as List?;
}

/// End Inventory Group Code

/// Start stripe Group Code

class StripeGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x4t7-ilri-ywed.n7d.xano.io/api:UQuTJ3vx';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'X-data-source': 'dev',
  };
  static SessionsCall sessionsCall = SessionsCall();
  static PricesCall pricesCall = PricesCall();
}

class SessionsCall {
  Future<ApiCallResponse> call({
    String? successUrl = '',
    String? cancelUrl = '',
    int? companyId,
    String? price = '',
    bool? firstTime,
    String? token = '',
  }) async {
    final baseUrl = StripeGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "success_url": "${escapeStringForJson(successUrl)}",
  "cancel_url": "${escapeStringForJson(cancelUrl)}",
  "line_items": [
    {
      "price": "${escapeStringForJson(price)}",
      "quantity": 1
    }
  ],
  "company_id": ${companyId},
  "first_time": ${firstTime}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sessions',
      apiUrl: '${baseUrl}/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PricesCall {
  Future<ApiCallResponse> call({
    bool? paymentIntent = false,
    String? startingAfter = '',
    int? limit = 10,
    String? endingBefore = '',
    bool? subscription = false,
    String? token = '',
  }) async {
    final baseUrl = StripeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'prices',
      apiUrl: '${baseUrl}/prices',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': 'dev',
      },
      params: {
        'payment_intent': paymentIntent,
        'starting_after': startingAfter,
        'limit': limit,
        'ending_before': endingBefore,
        'subscription': subscription,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End stripe Group Code

class GetCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Cep',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? localidade(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
  static String? regiao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.regiao''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
