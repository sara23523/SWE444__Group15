import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    notifyListeners();
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

  bool _searchisActive = false;
  bool get searchisActive => _searchisActive;
  set searchisActive(bool value) {
    _searchisActive = value;
  }

  bool _privateORpublicState = false;
  bool get privateORpublicState => _privateORpublicState;
  set privateORpublicState(bool value) {
    _privateORpublicState = value;
  }

  final _challengeDetailsManager = FutureRequestManager<int>();
  Future<int> challengeDetails({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _challengeDetailsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChallengeDetailsCache() => _challengeDetailsManager.clear();
  void clearChallengeDetailsCacheKey(String? uniqueKey) =>
      _challengeDetailsManager.clearRequest(uniqueKey);

  final _pointsManager = FutureRequestManager<List<UsersRecord>>();
  Future<List<UsersRecord>> points({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRecord>> Function() requestFn,
  }) =>
      _pointsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPointsCache() => _pointsManager.clear();
  void clearPointsCacheKey(String? uniqueKey) =>
      _pointsManager.clearRequest(uniqueKey);

  final _recommendedChallengeManager =
      FutureRequestManager<List<ChallengesRecord>>();
  Future<List<ChallengesRecord>> recommendedChallenge({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ChallengesRecord>> Function() requestFn,
  }) =>
      _recommendedChallengeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearRecommendedChallengeCache() => _recommendedChallengeManager.clear();
  void clearRecommendedChallengeCacheKey(String? uniqueKey) =>
      _recommendedChallengeManager.clearRequest(uniqueKey);

  final _solutionsManager = StreamRequestManager<List<RepliesRecord>>();
  Stream<List<RepliesRecord>> solutions({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<RepliesRecord>> Function() requestFn,
  }) =>
      _solutionsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSolutionsCache() => _solutionsManager.clear();
  void clearSolutionsCacheKey(String? uniqueKey) =>
      _solutionsManager.clearRequest(uniqueKey);
}
