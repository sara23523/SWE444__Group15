import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sol_details_widget.dart' show SolDetailsWidget;
import 'package:flutter/material.dart';

class SolDetailsModel extends FlutterFlowModel<SolDetailsWidget> {
  ///  Local state fields for this page.

  bool show = false;

  bool? isEvaluated = false;

  bool isPaid = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  RepliesRecord? userIdSolver200;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? solverId200;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  RepliesRecord? userIdSolver10;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? solverId10;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  RepliesRecord? userIdSolver5;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? solverId5;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;
  // Stores action output result for [Backend Call - API (One-Time Payment (Mobile))] action in Button widget.
  ApiCallResponse? apiPayment;
  // Stores action output result for [Custom Action - initPayment] action in Button widget.
  bool? paymentStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
