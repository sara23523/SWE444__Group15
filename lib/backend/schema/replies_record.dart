import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepliesRecord extends FirestoreRecord {
  RepliesRecord._(
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

  // "solver" field.
  DocumentReference? _solver;
  DocumentReference? get solver => _solver;
  bool hasSolver() => _solver != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "challengeRef" field.
  DocumentReference? _challengeRef;
  DocumentReference? get challengeRef => _challengeRef;
  bool hasChallengeRef() => _challengeRef != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _file = snapshotData['file'] as String?;
    _points = castToType<int>(snapshotData['points']);
    _solver = snapshotData['solver'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _challengeRef = snapshotData['challengeRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('replies');

  static Stream<RepliesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RepliesRecord.fromSnapshot(s));

  static Future<RepliesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RepliesRecord.fromSnapshot(s));

  static RepliesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RepliesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RepliesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RepliesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RepliesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RepliesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRepliesRecordData({
  String? description,
  String? file,
  int? points,
  DocumentReference? solver,
  String? title,
  DocumentReference? challengeRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'file': file,
      'points': points,
      'solver': solver,
      'title': title,
      'challengeRef': challengeRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class RepliesRecordDocumentEquality implements Equality<RepliesRecord> {
  const RepliesRecordDocumentEquality();

  @override
  bool equals(RepliesRecord? e1, RepliesRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.file == e2?.file &&
        e1?.points == e2?.points &&
        e1?.solver == e2?.solver &&
        e1?.title == e2?.title &&
        e1?.challengeRef == e2?.challengeRef;
  }

  @override
  int hash(RepliesRecord? e) => const ListEquality().hash([
        e?.description,
        e?.file,
        e?.points,
        e?.solver,
        e?.title,
        e?.challengeRef
      ]);

  @override
  bool isValidKey(Object? o) => o is RepliesRecord;
}
