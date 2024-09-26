import '/components/bottom_navigation_bar_sol_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_solutions_widget.dart' show ViewSolutionsWidget;
import 'package:flutter/material.dart';

class ViewSolutionsModel extends FlutterFlowModel<ViewSolutionsWidget> {
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
