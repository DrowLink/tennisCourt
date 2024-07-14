// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/tennis_court/tennis_court_util.dart';

class CanchaStruct extends BaseStruct {
  CanchaStruct({
    int? idCancha,
    String? nombreCancha,
    String? imgCancha,
    bool? estaDisponible,
    double? precipitacion,
    List<DateTime>? disponibilidad,
    int? precioPorHora,
  })  : _idCancha = idCancha,
        _nombreCancha = nombreCancha,
        _imgCancha = imgCancha,
        _estaDisponible = estaDisponible,
        _precipitacion = precipitacion,
        _disponibilidad = disponibilidad,
        _precioPorHora = precioPorHora;

  // "idCancha" field.
  int? _idCancha;
  int get idCancha => _idCancha ?? 0;
  set idCancha(int? val) => _idCancha = val;

  void incrementIdCancha(int amount) => idCancha = idCancha + amount;

  bool hasIdCancha() => _idCancha != null;

  // "nombreCancha" field.
  String? _nombreCancha;
  String get nombreCancha => _nombreCancha ?? '';
  set nombreCancha(String? val) => _nombreCancha = val;

  bool hasNombreCancha() => _nombreCancha != null;

  // "imgCancha" field.
  String? _imgCancha;
  String get imgCancha => _imgCancha ?? '';
  set imgCancha(String? val) => _imgCancha = val;

  bool hasImgCancha() => _imgCancha != null;

  // "estaDisponible" field.
  bool? _estaDisponible;
  bool get estaDisponible => _estaDisponible ?? true;
  set estaDisponible(bool? val) => _estaDisponible = val;

  bool hasEstaDisponible() => _estaDisponible != null;

  // "precipitacion" field.
  double? _precipitacion;
  double get precipitacion => _precipitacion ?? 0.0;
  set precipitacion(double? val) => _precipitacion = val;

  void incrementPrecipitacion(double amount) =>
      precipitacion = precipitacion + amount;

  bool hasPrecipitacion() => _precipitacion != null;

  // "disponibilidad" field.
  List<DateTime>? _disponibilidad;
  List<DateTime> get disponibilidad => _disponibilidad ?? const [];
  set disponibilidad(List<DateTime>? val) => _disponibilidad = val;

  void updateDisponibilidad(Function(List<DateTime>) updateFn) {
    updateFn(_disponibilidad ??= []);
  }

  bool hasDisponibilidad() => _disponibilidad != null;

  // "precioPorHora" field.
  int? _precioPorHora;
  int get precioPorHora => _precioPorHora ?? 0;
  set precioPorHora(int? val) => _precioPorHora = val;

  void incrementPrecioPorHora(int amount) =>
      precioPorHora = precioPorHora + amount;

  bool hasPrecioPorHora() => _precioPorHora != null;

  static CanchaStruct fromMap(Map<String, dynamic> data) => CanchaStruct(
        idCancha: castToType<int>(data['idCancha']),
        nombreCancha: data['nombreCancha'] as String?,
        imgCancha: data['imgCancha'] as String?,
        estaDisponible: data['estaDisponible'] as bool?,
        precipitacion: castToType<double>(data['precipitacion']),
        disponibilidad: getDataList(data['disponibilidad']),
        precioPorHora: castToType<int>(data['precioPorHora']),
      );

  static CanchaStruct? maybeFromMap(dynamic data) =>
      data is Map ? CanchaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idCancha': _idCancha,
        'nombreCancha': _nombreCancha,
        'imgCancha': _imgCancha,
        'estaDisponible': _estaDisponible,
        'precipitacion': _precipitacion,
        'disponibilidad': _disponibilidad,
        'precioPorHora': _precioPorHora,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idCancha': serializeParam(
          _idCancha,
          ParamType.int,
        ),
        'nombreCancha': serializeParam(
          _nombreCancha,
          ParamType.String,
        ),
        'imgCancha': serializeParam(
          _imgCancha,
          ParamType.String,
        ),
        'estaDisponible': serializeParam(
          _estaDisponible,
          ParamType.bool,
        ),
        'precipitacion': serializeParam(
          _precipitacion,
          ParamType.double,
        ),
        'disponibilidad': serializeParam(
          _disponibilidad,
          ParamType.DateTime,
          isList: true,
        ),
        'precioPorHora': serializeParam(
          _precioPorHora,
          ParamType.int,
        ),
      }.withoutNulls;

  static CanchaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CanchaStruct(
        idCancha: deserializeParam(
          data['idCancha'],
          ParamType.int,
          false,
        ),
        nombreCancha: deserializeParam(
          data['nombreCancha'],
          ParamType.String,
          false,
        ),
        imgCancha: deserializeParam(
          data['imgCancha'],
          ParamType.String,
          false,
        ),
        estaDisponible: deserializeParam(
          data['estaDisponible'],
          ParamType.bool,
          false,
        ),
        precipitacion: deserializeParam(
          data['precipitacion'],
          ParamType.double,
          false,
        ),
        disponibilidad: deserializeParam<DateTime>(
          data['disponibilidad'],
          ParamType.DateTime,
          true,
        ),
        precioPorHora: deserializeParam(
          data['precioPorHora'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CanchaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CanchaStruct &&
        idCancha == other.idCancha &&
        nombreCancha == other.nombreCancha &&
        imgCancha == other.imgCancha &&
        estaDisponible == other.estaDisponible &&
        precipitacion == other.precipitacion &&
        listEquality.equals(disponibilidad, other.disponibilidad) &&
        precioPorHora == other.precioPorHora;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idCancha,
        nombreCancha,
        imgCancha,
        estaDisponible,
        precipitacion,
        disponibilidad,
        precioPorHora
      ]);
}

CanchaStruct createCanchaStruct({
  int? idCancha,
  String? nombreCancha,
  String? imgCancha,
  bool? estaDisponible,
  double? precipitacion,
  int? precioPorHora,
}) =>
    CanchaStruct(
      idCancha: idCancha,
      nombreCancha: nombreCancha,
      imgCancha: imgCancha,
      estaDisponible: estaDisponible,
      precipitacion: precipitacion,
      precioPorHora: precioPorHora,
    );
