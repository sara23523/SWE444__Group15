import '/flutter_flow/flutter_flow_util.dart';
import 'stst_widget.dart' show StstWidget;
import 'package:flutter/material.dart';

class StstModel extends FlutterFlowModel<StstWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
