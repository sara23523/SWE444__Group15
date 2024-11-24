import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "OrganizationID" field.
  DocumentReference? _organizationID;
  DocumentReference? get organizationID => _organizationID;
  bool hasOrganizationID() => _organizationID != null;

  // "SolverID" field.
  DocumentReference? _solverID;
  DocumentReference? get solverID => _solverID;
  bool hasSolverID() => _solverID != null;

  // "Amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "Currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "SolutionID" field.
  DocumentReference? _solutionID;
  DocumentReference? get solutionID => _solutionID;
  bool hasSolutionID() => _solutionID != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _organizationID = snapshotData['OrganizationID'] as DocumentReference?;
    _solverID = snapshotData['SolverID'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['Amount']);
    _currency = snapshotData['Currency'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _solutionID = snapshotData['SolutionID'] as DocumentReference?;
    _id = snapshotData['ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  DocumentReference? organizationID,
  DocumentReference? solverID,
  double? amount,
  String? currency,
  DateTime? date,
  DocumentReference? solutionID,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'OrganizationID': organizationID,
      'SolverID': solverID,
      'Amount': amount,
      'Currency': currency,
      'Date': date,
      'SolutionID': solutionID,
      'ID': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.organizationID == e2?.organizationID &&
        e1?.solverID == e2?.solverID &&
        e1?.amount == e2?.amount &&
        e1?.currency == e2?.currency &&
        e1?.date == e2?.date &&
        e1?.solutionID == e2?.solutionID &&
        e1?.id == e2?.id;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.organizationID,
        e?.solverID,
        e?.amount,
        e?.currency,
        e?.date,
        e?.solutionID,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
