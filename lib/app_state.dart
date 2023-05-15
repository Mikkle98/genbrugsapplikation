import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  bool _SearchActive = false;
  bool get SearchActive => _SearchActive;
  set SearchActive(bool _value) {
    _SearchActive = _value;
  }

  bool _Update = false;
  bool get Update => _Update;
  set Update(bool _value) {
    _Update = _value;
  }

  List<DocumentReference> _ValgAfflad = [];
  List<DocumentReference> get ValgAfflad => _ValgAfflad;
  set ValgAfflad(List<DocumentReference> _value) {
    _ValgAfflad = _value;
  }

  void addToValgAfflad(DocumentReference _value) {
    _ValgAfflad.add(_value);
  }

  void removeFromValgAfflad(DocumentReference _value) {
    _ValgAfflad.remove(_value);
  }

  void removeAtIndexFromValgAfflad(int _index) {
    _ValgAfflad.removeAt(_index);
  }

  bool _ghvjhkjneafd = false;
  bool get ghvjhkjneafd => _ghvjhkjneafd;
  set ghvjhkjneafd(bool _value) {
    _ghvjhkjneafd = _value;
  }

  DateTime? _SelectDate;
  DateTime? get SelectDate => _SelectDate;
  set SelectDate(DateTime? _value) {
    _SelectDate = _value;
  }

  String _SelectTime = '';
  String get SelectTime => _SelectTime;
  set SelectTime(String _value) {
    _SelectTime = _value;
  }

  bool _QrCode = false;
  bool get QrCode => _QrCode;
  set QrCode(bool _value) {
    _QrCode = _value;
  }

  String _rutebillede = '';
  String get rutebillede => _rutebillede;
  set rutebillede(String _value) {
    _rutebillede = _value;
  }

  String _Genbrugsplads = '';
  String get Genbrugsplads => _Genbrugsplads;
  set Genbrugsplads(String _value) {
    _Genbrugsplads = _value;
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
