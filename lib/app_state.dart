import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _ischallenge = false;
  bool get ischallenge => _ischallenge;
  set ischallenge(bool value) {
    _ischallenge = value;
  }

  bool _titleState = false;
  bool get titleState => _titleState;
  set titleState(bool value) {
    _titleState = value;
  }

  bool _descState = false;
  bool get descState => _descState;
  set descState(bool value) {
    _descState = value;
  }
}
