import '/components/bottom_navigation_bar_sol_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'view_challenges_widget.dart' show ViewChallengesWidget;
import 'package:flutter/material.dart';

class ViewChallengesModel extends FlutterFlowModel<ViewChallengesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for BottomNavigationBarSol component.
  late BottomNavigationBarSolModel bottomNavigationBarSolModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarSolModel =
        createModel(context, () => BottomNavigationBarSolModel());
  }

  @override
  void dispose() {
    bottomNavigationBarSolModel.dispose();
  }
}
