import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_solver_widget.dart' show ChatPageSolverWidget;
import 'package:flutter/material.dart';

class ChatPageSolverModel extends FlutterFlowModel<ChatPageSolverWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
