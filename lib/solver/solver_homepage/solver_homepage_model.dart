import '/flutter_flow/flutter_flow_util.dart';
import '/solver/home_page_app_bar_solver/home_page_app_bar_solver_widget.dart';
import 'solver_homepage_widget.dart' show SolverHomepageWidget;
import 'package:flutter/material.dart';

class SolverHomepageModel extends FlutterFlowModel<SolverHomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomePage_AppBarSolver component.
  late HomePageAppBarSolverModel homePageAppBarSolverModel;

  @override
  void initState(BuildContext context) {
    homePageAppBarSolverModel =
        createModel(context, () => HomePageAppBarSolverModel());
  }

  @override
  void dispose() {
    homePageAppBarSolverModel.dispose();
  }
}
