import '/components/bottom_navigation_bar_sol_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sol_profile_copy_widget.dart' show SolProfileCopyWidget;
import 'package:flutter/material.dart';

class SolProfileCopyModel extends FlutterFlowModel<SolProfileCopyWidget> {
  ///  State fields for stateful widgets in this page.

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
