import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'tennis_court/tennis_court_util.dart';

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
      _favoritos = prefs
              .getStringList('ff_favoritos')
              ?.map((x) {
                try {
                  return CanchaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _favoritos;
    });
    _safeInit(() {
      _listaCanchas = prefs
              .getStringList('ff_listaCanchas')
              ?.map((x) {
                try {
                  return CanchaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _listaCanchas;
    });
    _safeInit(() {
      _canchasReservadas = prefs
              .getStringList('ff_canchasReservadas')
              ?.map((x) {
                try {
                  return CanchaReservadaStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _canchasReservadas;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CanchaStruct> _favoritos = [];
  List<CanchaStruct> get favoritos => _favoritos;
  set favoritos(List<CanchaStruct> value) {
    _favoritos = value;
    prefs.setStringList(
        'ff_favoritos', value.map((x) => x.serialize()).toList());
  }

  void addToFavoritos(CanchaStruct value) {
    favoritos.add(value);
    prefs.setStringList(
        'ff_favoritos', _favoritos.map((x) => x.serialize()).toList());
  }

  void removeFromFavoritos(CanchaStruct value) {
    favoritos.remove(value);
    prefs.setStringList(
        'ff_favoritos', _favoritos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFavoritos(int index) {
    favoritos.removeAt(index);
    prefs.setStringList(
        'ff_favoritos', _favoritos.map((x) => x.serialize()).toList());
  }

  void updateFavoritosAtIndex(
    int index,
    CanchaStruct Function(CanchaStruct) updateFn,
  ) {
    favoritos[index] = updateFn(_favoritos[index]);
    prefs.setStringList(
        'ff_favoritos', _favoritos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFavoritos(int index, CanchaStruct value) {
    favoritos.insert(index, value);
    prefs.setStringList(
        'ff_favoritos', _favoritos.map((x) => x.serialize()).toList());
  }

  List<CanchaStruct> _listaCanchas = [
    CanchaStruct.fromSerializableMap(jsonDecode(
        '{\"idCancha\":\"1\",\"nombreCancha\":\"Cancha A\",\"imgCancha\":\"https://storage.googleapis.com/tenniscourt-io-6f20.appspot.com/projects/tennis-court-9p70xg/assets/5ozdvjc45zmv/Enmascarar_grupo_38.png\",\"estaDisponible\":\"true\",\"precipitacion\":\"0.0\",\"disponibilidad\":\"[]\"}')),
    CanchaStruct.fromSerializableMap(jsonDecode(
        '{\"idCancha\":\"2\",\"nombreCancha\":\"Cancha B\",\"imgCancha\":\"https://picsum.photos/seed/729/600\",\"estaDisponible\":\"true\",\"precipitacion\":\"0.0\",\"disponibilidad\":\"[]\"}')),
    CanchaStruct.fromSerializableMap(jsonDecode(
        '{\"idCancha\":\"3\",\"nombreCancha\":\"Cancha C\",\"imgCancha\":\"https://storage.googleapis.com/tenniscourt-io-6f20.appspot.com/projects/tennis-court-9p70xg/assets/hs2hqk7neuh8/Enmascarar_grupo_38.png\",\"estaDisponible\":\"true\",\"precipitacion\":\"0.0\",\"disponibilidad\":\"[]\"}'))
  ];
  List<CanchaStruct> get listaCanchas => _listaCanchas;
  set listaCanchas(List<CanchaStruct> value) {
    _listaCanchas = value;
    prefs.setStringList(
        'ff_listaCanchas', value.map((x) => x.serialize()).toList());
  }

  void addToListaCanchas(CanchaStruct value) {
    listaCanchas.add(value);
    prefs.setStringList(
        'ff_listaCanchas', _listaCanchas.map((x) => x.serialize()).toList());
  }

  void removeFromListaCanchas(CanchaStruct value) {
    listaCanchas.remove(value);
    prefs.setStringList(
        'ff_listaCanchas', _listaCanchas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListaCanchas(int index) {
    listaCanchas.removeAt(index);
    prefs.setStringList(
        'ff_listaCanchas', _listaCanchas.map((x) => x.serialize()).toList());
  }

  void updateListaCanchasAtIndex(
    int index,
    CanchaStruct Function(CanchaStruct) updateFn,
  ) {
    listaCanchas[index] = updateFn(_listaCanchas[index]);
    prefs.setStringList(
        'ff_listaCanchas', _listaCanchas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListaCanchas(int index, CanchaStruct value) {
    listaCanchas.insert(index, value);
    prefs.setStringList(
        'ff_listaCanchas', _listaCanchas.map((x) => x.serialize()).toList());
  }

  List<CanchaReservadaStruct> _canchasReservadas = [];
  List<CanchaReservadaStruct> get canchasReservadas => _canchasReservadas;
  set canchasReservadas(List<CanchaReservadaStruct> value) {
    _canchasReservadas = value;
    prefs.setStringList(
        'ff_canchasReservadas', value.map((x) => x.serialize()).toList());
  }

  void addToCanchasReservadas(CanchaReservadaStruct value) {
    canchasReservadas.add(value);
    prefs.setStringList('ff_canchasReservadas',
        _canchasReservadas.map((x) => x.serialize()).toList());
  }

  void removeFromCanchasReservadas(CanchaReservadaStruct value) {
    canchasReservadas.remove(value);
    prefs.setStringList('ff_canchasReservadas',
        _canchasReservadas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCanchasReservadas(int index) {
    canchasReservadas.removeAt(index);
    prefs.setStringList('ff_canchasReservadas',
        _canchasReservadas.map((x) => x.serialize()).toList());
  }

  void updateCanchasReservadasAtIndex(
    int index,
    CanchaReservadaStruct Function(CanchaReservadaStruct) updateFn,
  ) {
    canchasReservadas[index] = updateFn(_canchasReservadas[index]);
    prefs.setStringList('ff_canchasReservadas',
        _canchasReservadas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCanchasReservadas(
      int index, CanchaReservadaStruct value) {
    canchasReservadas.insert(index, value);
    prefs.setStringList('ff_canchasReservadas',
        _canchasReservadas.map((x) => x.serialize()).toList());
  }
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
