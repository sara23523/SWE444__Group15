import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavouritesRecord extends FirestoreRecord {
  FavouritesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

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

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "Category2" field.
  List<String>? _category2;
  List<String> get category2 => _category2 ?? const [];
  bool hasCategory2() => _category2 != null;

  // "resume" field.
  String? _resume;
  String get resume => _resume ?? '';
  bool hasResume() => _resume != null;

  // "IBAN" field.
  String? _iban;
  String get iban => _iban ?? '';
  bool hasIban() => _iban != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _bio = snapshotData['bio'] as String?;
    _username = snapshotData['username'] as String?;
    _points = castToType<int>(snapshotData['points']);
    _category2 = getDataList(snapshotData['Category2']);
    _resume = snapshotData['resume'] as String?;
    _iban = snapshotData['IBAN'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('favourites')
          : FirebaseFirestore.instance.collectionGroup('favourites');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('favourites').doc(id);

  static Stream<FavouritesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavouritesRecord.fromSnapshot(s));

  static Future<FavouritesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavouritesRecord.fromSnapshot(s));

  static FavouritesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavouritesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavouritesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavouritesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavouritesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavouritesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavouritesRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? bio,
  String? username,
  int? points,
  String? resume,
  String? iban,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'bio': bio,
      'username': username,
      'points': points,
      'resume': resume,
      'IBAN': iban,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavouritesRecordDocumentEquality implements Equality<FavouritesRecord> {
  const FavouritesRecordDocumentEquality();

  @override
  bool equals(FavouritesRecord? e1, FavouritesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.bio == e2?.bio &&
        e1?.username == e2?.username &&
        e1?.points == e2?.points &&
        listEquality.equals(e1?.category2, e2?.category2) &&
        e1?.resume == e2?.resume &&
        e1?.iban == e2?.iban &&
        e1?.user == e2?.user;
  }

  @override
  int hash(FavouritesRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.bio,
        e?.username,
        e?.points,
        e?.category2,
        e?.resume,
        e?.iban,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is FavouritesRecord;
}
