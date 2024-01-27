import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LeercartaCall {
  static Future<ApiCallResponse> call({
    String? idBLE = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Leercarta',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:OUUuiy1I/Leer_carta',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id_BLE': idBLE,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IdentificarBarCall {
  static Future<ApiCallResponse> call({
    List<String>? idBLEList,
  }) async {
    final idBLE = _serializeList(idBLEList);

    return ApiManager.instance.makeApiCall(
      callName: 'Identificar bar',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:OUUuiy1I/Identificar_bar',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id_BLE': idBLE,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
