// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartaBarStruct extends BaseStruct {
  CartaBarStruct({
    List<int>? id,
    List<String>? name,
    List<double>? precio,
    List<String>? descripcion,
  })  : _id = id,
        _name = name,
        _precio = precio,
        _descripcion = descripcion;

  // "id" field.
  List<int>? _id;
  List<int> get id => _id ?? const [];
  set id(List<int>? val) => _id = val;
  void updateId(Function(List<int>) updateFn) => updateFn(_id ??= []);
  bool hasId() => _id != null;

  // "name" field.
  List<String>? _name;
  List<String> get name => _name ?? const [];
  set name(List<String>? val) => _name = val;
  void updateName(Function(List<String>) updateFn) => updateFn(_name ??= []);
  bool hasName() => _name != null;

  // "precio" field.
  List<double>? _precio;
  List<double> get precio => _precio ?? const [];
  set precio(List<double>? val) => _precio = val;
  void updatePrecio(Function(List<double>) updateFn) =>
      updateFn(_precio ??= []);
  bool hasPrecio() => _precio != null;

  // "descripcion" field.
  List<String>? _descripcion;
  List<String> get descripcion => _descripcion ?? const [];
  set descripcion(List<String>? val) => _descripcion = val;
  void updateDescripcion(Function(List<String>) updateFn) =>
      updateFn(_descripcion ??= []);
  bool hasDescripcion() => _descripcion != null;

  static CartaBarStruct fromMap(Map<String, dynamic> data) => CartaBarStruct(
        id: getDataList(data['id']),
        name: getDataList(data['name']),
        precio: getDataList(data['precio']),
        descripcion: getDataList(data['descripcion']),
      );

  static CartaBarStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartaBarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'precio': _precio,
        'descripcion': _descripcion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
          true,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
          true,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.double,
          true,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static CartaBarStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartaBarStruct(
        id: deserializeParam<int>(
          data['id'],
          ParamType.int,
          true,
        ),
        name: deserializeParam<String>(
          data['name'],
          ParamType.String,
          true,
        ),
        precio: deserializeParam<double>(
          data['precio'],
          ParamType.double,
          true,
        ),
        descripcion: deserializeParam<String>(
          data['descripcion'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'CartaBarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CartaBarStruct &&
        listEquality.equals(id, other.id) &&
        listEquality.equals(name, other.name) &&
        listEquality.equals(precio, other.precio) &&
        listEquality.equals(descripcion, other.descripcion);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, precio, descripcion]);
}

CartaBarStruct createCartaBarStruct() => CartaBarStruct();
