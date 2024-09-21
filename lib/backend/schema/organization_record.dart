import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizationRecord extends FirestoreRecord {
  OrganizationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "CR_number" field.
  String? _cRNumber;
  String get cRNumber => _cRNumber ?? '';
  bool hasCRNumber() => _cRNumber != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _cRNumber = snapshotData['CR_number'] as String?;
    _password = snapshotData['Password'] as String?;
    _bio = snapshotData['Bio'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Organization');

  static Stream<OrganizationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizationRecord.fromSnapshot(s));

  static Future<OrganizationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrganizationRecord.fromSnapshot(s));

  static OrganizationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizationRecordData({
  String? cRNumber,
  String? password,
  String? bio,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? email,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CR_number': cRNumber,
      'Password': password,
      'Bio': bio,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'email': email,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrganizationRecordDocumentEquality
    implements Equality<OrganizationRecord> {
  const OrganizationRecordDocumentEquality();

  @override
  bool equals(OrganizationRecord? e1, OrganizationRecord? e2) {
    return e1?.cRNumber == e2?.cRNumber &&
        e1?.password == e2?.password &&
        e1?.bio == e2?.bio &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(OrganizationRecord? e) => const ListEquality().hash([
        e?.cRNumber,
        e?.password,
        e?.bio,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.email,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is OrganizationRecord;
}
