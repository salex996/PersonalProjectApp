import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_Baridentificado')) {
        try {
          final serializedData = prefs.getString('ff_Baridentificado') ?? '{}';
          _Baridentificado = IdentificarBarStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  IdentificarBarStruct _Baridentificado = IdentificarBarStruct();
  IdentificarBarStruct get Baridentificado => _Baridentificado;
  set Baridentificado(IdentificarBarStruct _value) {
    _Baridentificado = _value;
    prefs.setString('ff_Baridentificado', _value.serialize());
  }

  void updateBaridentificadoStruct(Function(IdentificarBarStruct) updateFn) {
    updateFn(_Baridentificado);
    prefs.setString('ff_Baridentificado', _Baridentificado.serialize());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
