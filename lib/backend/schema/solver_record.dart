import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolverRecord extends FirestoreRecord {
  SolverRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _bio = snapshotData['bio'] as String?;
    _password = snapshotData['Password'] as String?;
    _points = castToType<int>(snapshotData['Points']);
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Solver');

  static Stream<SolverRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolverRecord.fromSnapshot(s));

  static Future<SolverRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SolverRecord.fromSnapshot(s));

  static SolverRecord fromSnapshot(DocumentSnapshot snapshot) => SolverRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolverRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolverRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolverRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolverRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolverRecordData({
  String? photoUrl,
  String? bio,
  String? password,
  int? points,
  String? email,
  String? phoneNumber,
  String? uid,
  DateTime? createdTime,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'bio': bio,
      'Password': password,
      'Points': points,
      'email': email,
      'phone_number': phoneNumber,
      'uid': uid,
      'created_time': createdTime,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolverRecordDocumentEquality implements Equality<SolverRecord> {
  const SolverRecordDocumentEquality();

  @override
  bool equals(SolverRecord? e1, SolverRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.bio == e2?.bio &&
        e1?.password == e2?.password &&
        e1?.points == e2?.points &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(SolverRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.bio,
        e?.password,
        e?.points,
        e?.email,
        e?.phoneNumber,
        e?.uid,
        e?.createdTime,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is SolverRecord;
}
