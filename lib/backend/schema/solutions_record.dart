import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolutionsRecord extends FirestoreRecord {
  SolutionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "challengeRef" field.
  DocumentReference? _challengeRef;
  DocumentReference? get challengeRef => _challengeRef;
  bool hasChallengeRef() => _challengeRef != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _file = snapshotData['file'] as String?;
    _points = castToType<int>(snapshotData['points']);
    _title = snapshotData['title'] as String?;
    _uid = snapshotData['uid'] as String?;
    _challengeRef = snapshotData['challengeRef'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Solutions')
          : FirebaseFirestore.instance.collectionGroup('Solutions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Solutions').doc(id);

  static Stream<SolutionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolutionsRecord.fromSnapshot(s));

  static Future<SolutionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SolutionsRecord.fromSnapshot(s));

  static SolutionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolutionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolutionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolutionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolutionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolutionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolutionsRecordData({
  String? description,
  String? file,
  int? points,
  String? title,
  String? uid,
  DocumentReference? challengeRef,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'file': file,
      'points': points,
      'title': title,
      'uid': uid,
      'challengeRef': challengeRef,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolutionsRecordDocumentEquality implements Equality<SolutionsRecord> {
  const SolutionsRecordDocumentEquality();

  @override
  bool equals(SolutionsRecord? e1, SolutionsRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.file == e2?.file &&
        e1?.points == e2?.points &&
        e1?.title == e2?.title &&
        e1?.uid == e2?.uid &&
        e1?.challengeRef == e2?.challengeRef &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(SolutionsRecord? e) => const ListEquality().hash([
        e?.description,
        e?.file,
        e?.points,
        e?.title,
        e?.uid,
        e?.challengeRef,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is SolutionsRecord;
}
