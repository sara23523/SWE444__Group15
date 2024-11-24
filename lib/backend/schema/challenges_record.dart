import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengesRecord extends FirestoreRecord {
  ChallengesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Description_file" field.
  String? _descriptionFile;
  String get descriptionFile => _descriptionFile ?? '';
  bool hasDescriptionFile() => _descriptionFile != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "ChallengeDocID" field.
  DocumentReference? _challengeDocID;
  DocumentReference? get challengeDocID => _challengeDocID;
  bool hasChallengeDocID() => _challengeDocID != null;

  // "selectedCategories" field.
  List<String>? _selectedCategories;
  List<String> get selectedCategories => _selectedCategories ?? const [];
  bool hasSelectedCategories() => _selectedCategories != null;

  // "reward_amount" field.
  double? _rewardAmount;
  double get rewardAmount => _rewardAmount ?? 0.0;
  bool hasRewardAmount() => _rewardAmount != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _descriptionFile = snapshotData['Description_file'] as String?;
    _description = snapshotData['description'] as String?;
    _title = snapshotData['title'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _challengeDocID = snapshotData['ChallengeDocID'] as DocumentReference?;
    _selectedCategories = getDataList(snapshotData['selectedCategories']);
    _rewardAmount = castToType<double>(snapshotData['reward_amount']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _id = snapshotData['ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Challenges');

  static Stream<ChallengesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengesRecord.fromSnapshot(s));

  static Future<ChallengesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChallengesRecord.fromSnapshot(s));

  static ChallengesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengesRecordData({
  String? descriptionFile,
  String? description,
  String? title,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  DocumentReference? user,
  DocumentReference? challengeDocID,
  double? rewardAmount,
  DateTime? createdTime,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Description_file': descriptionFile,
      'description': description,
      'title': title,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'user': user,
      'ChallengeDocID': challengeDocID,
      'reward_amount': rewardAmount,
      'created_time': createdTime,
      'ID': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengesRecordDocumentEquality implements Equality<ChallengesRecord> {
  const ChallengesRecordDocumentEquality();

  @override
  bool equals(ChallengesRecord? e1, ChallengesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.descriptionFile == e2?.descriptionFile &&
        e1?.description == e2?.description &&
        e1?.title == e2?.title &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.user == e2?.user &&
        e1?.challengeDocID == e2?.challengeDocID &&
        listEquality.equals(e1?.selectedCategories, e2?.selectedCategories) &&
        e1?.rewardAmount == e2?.rewardAmount &&
        e1?.createdTime == e2?.createdTime &&
        e1?.id == e2?.id;
  }

  @override
  int hash(ChallengesRecord? e) => const ListEquality().hash([
        e?.descriptionFile,
        e?.description,
        e?.title,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber,
        e?.user,
        e?.challengeDocID,
        e?.selectedCategories,
        e?.rewardAmount,
        e?.createdTime,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengesRecord;
}
