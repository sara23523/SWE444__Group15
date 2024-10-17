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

  String _defaultUserPhoto =
      'https://firebasestorage.googleapis.com/v0/b/unlock-444.appspot.com/o/users%2FdefaultUserPhoto.jpg?alt=media&token=02732e6c-f625-4afb-a47f-57e676e84f63';
  String get defaultUserPhoto => _defaultUserPhoto;
  set defaultUserPhoto(String value) {
    _defaultUserPhoto = value;
  }
}
