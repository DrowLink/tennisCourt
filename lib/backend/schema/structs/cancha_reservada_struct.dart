// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/tennis_court/tennis_court_util.dart';

class CanchaReservadaStruct extends BaseStruct {
  CanchaReservadaStruct({
    int? idCancha,
    String? nombreCancha,
    String? imgCancha,
    bool? estaDisponible,
    double? precipitacion,
    List<DateTime>? disponibilidad,
    int? precioPorHora,
    int? horas,
    String? instructor,
    DateTime? fecha,
    DateTime? horaInicial,
  })  : _idCancha = idCancha,
        _nombreCancha = nombreCancha,
        _imgCancha = imgCancha,
        _estaDisponible = estaDisponible,
        _precipitacion = precipitacion,
        _disponibilidad = disponibilidad,
        _precioPorHora = precioPorHora,
        _horas = horas,
        _instructor = instructor,
        _fecha = fecha,
        _horaInicial = horaInicial;

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

  // "horas" field.
  int? _horas;
  int get horas => _horas ?? 0;
  set horas(int? val) => _horas = val;

  void incrementHoras(int amount) => horas = horas + amount;

  bool hasHoras() => _horas != null;

  // "instructor" field.
  String? _instructor;
  String get instructor => _instructor ?? '';
  set instructor(String? val) => _instructor = val;

  bool hasInstructor() => _instructor != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "horaInicial" field.
  DateTime? _horaInicial;
  DateTime? get horaInicial => _horaInicial;
  set horaInicial(DateTime? val) => _horaInicial = val;

  bool hasHoraInicial() => _horaInicial != null;

  static CanchaReservadaStruct fromMap(Map<String, dynamic> data) =>
      CanchaReservadaStruct(
        idCancha: castToType<int>(data['idCancha']),
        nombreCancha: data['nombreCancha'] as String?,
        imgCancha: data['imgCancha'] as String?,
        estaDisponible: data['estaDisponible'] as bool?,
        precipitacion: castToType<double>(data['precipitacion']),
        disponibilidad: getDataList(data['disponibilidad']),
        precioPorHora: castToType<int>(data['precioPorHora']),
        horas: castToType<int>(data['horas']),
        instructor: data['instructor'] as String?,
        fecha: data['fecha'] as DateTime?,
        horaInicial: data['horaInicial'] as DateTime?,
      );

  static CanchaReservadaStruct? maybeFromMap(dynamic data) => data is Map
      ? CanchaReservadaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idCancha': _idCancha,
        'nombreCancha': _nombreCancha,
        'imgCancha': _imgCancha,
        'estaDisponible': _estaDisponible,
        'precipitacion': _precipitacion,
        'disponibilidad': _disponibilidad,
        'precioPorHora': _precioPorHora,
        'horas': _horas,
        'instructor': _instructor,
        'fecha': _fecha,
        'horaInicial': _horaInicial,
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
        'horas': serializeParam(
          _horas,
          ParamType.int,
        ),
        'instructor': serializeParam(
          _instructor,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'horaInicial': serializeParam(
          _horaInicial,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CanchaReservadaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CanchaReservadaStruct(
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
        horas: deserializeParam(
          data['horas'],
          ParamType.int,
          false,
        ),
        instructor: deserializeParam(
          data['instructor'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        horaInicial: deserializeParam(
          data['horaInicial'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CanchaReservadaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CanchaReservadaStruct &&
        idCancha == other.idCancha &&
        nombreCancha == other.nombreCancha &&
        imgCancha == other.imgCancha &&
        estaDisponible == other.estaDisponible &&
        precipitacion == other.precipitacion &&
        listEquality.equals(disponibilidad, other.disponibilidad) &&
        precioPorHora == other.precioPorHora &&
        horas == other.horas &&
        instructor == other.instructor &&
        fecha == other.fecha &&
        horaInicial == other.horaInicial;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idCancha,
        nombreCancha,
        imgCancha,
        estaDisponible,
        precipitacion,
        disponibilidad,
        precioPorHora,
        horas,
        instructor,
        fecha,
        horaInicial
      ]);
}

CanchaReservadaStruct createCanchaReservadaStruct({
  int? idCancha,
  String? nombreCancha,
  String? imgCancha,
  bool? estaDisponible,
  double? precipitacion,
  int? precioPorHora,
  int? horas,
  String? instructor,
  DateTime? fecha,
  DateTime? horaInicial,
}) =>
    CanchaReservadaStruct(
      idCancha: idCancha,
      nombreCancha: nombreCancha,
      imgCancha: imgCancha,
      estaDisponible: estaDisponible,
      precipitacion: precipitacion,
      precioPorHora: precioPorHora,
      horas: horas,
      instructor: instructor,
      fecha: fecha,
      horaInicial: horaInicial,
    );
