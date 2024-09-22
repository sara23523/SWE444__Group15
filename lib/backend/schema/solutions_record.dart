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

  // "solution_title" field.
  String? _solutionTitle;
  String get solutionTitle => _solutionTitle ?? '';
  bool hasSolutionTitle() => _solutionTitle != null;

  // "solution_desc" field.
  String? _solutionDesc;
  String get solutionDesc => _solutionDesc ?? '';
  bool hasSolutionDesc() => _solutionDesc != null;

  // "solution_file" field.
  String? _solutionFile;
  String get solutionFile => _solutionFile ?? '';
  bool hasSolutionFile() => _solutionFile != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _solutionTitle = snapshotData['solution_title'] as String?;
    _solutionDesc = snapshotData['solution_desc'] as String?;
    _solutionFile = snapshotData['solution_file'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('solutions')
          : FirebaseFirestore.instance.collectionGroup('solutions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('solutions').doc(id);

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
  String? solutionTitle,
  String? solutionDesc,
  String? solutionFile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'solution_title': solutionTitle,
      'solution_desc': solutionDesc,
      'solution_file': solutionFile,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolutionsRecordDocumentEquality implements Equality<SolutionsRecord> {
  const SolutionsRecordDocumentEquality();

  @override
  bool equals(SolutionsRecord? e1, SolutionsRecord? e2) {
    return e1?.solutionTitle == e2?.solutionTitle &&
        e1?.solutionDesc == e2?.solutionDesc &&
        e1?.solutionFile == e2?.solutionFile;
  }

  @override
  int hash(SolutionsRecord? e) => const ListEquality()
      .hash([e?.solutionTitle, e?.solutionDesc, e?.solutionFile]);

  @override
  bool isValidKey(Object? o) => o is SolutionsRecord;
}
