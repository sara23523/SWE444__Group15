import '/components/bottom_navigation_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_challenges_copy_widget.dart' show ViewChallengesCopyWidget;
import 'package:flutter/material.dart';

class ViewChallengesCopyModel
    extends FlutterFlowModel<ViewChallengesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BottomNavigationComponent component.
  late BottomNavigationComponentModel bottomNavigationComponentModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationComponentModel =
        createModel(context, () => BottomNavigationComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomNavigationComponentModel.dispose();
  }
}
