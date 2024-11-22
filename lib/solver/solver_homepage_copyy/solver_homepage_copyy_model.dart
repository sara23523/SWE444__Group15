import '/components/bottom_navigation_bar_sol_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/solver/home_page_app_bar_solver/home_page_app_bar_solver_widget.dart';
import 'solver_homepage_copyy_widget.dart' show SolverHomepageCopyyWidget;
import 'package:flutter/material.dart';

class SolverHomepageCopyyModel
    extends FlutterFlowModel<SolverHomepageCopyyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomePage_AppBarSolver component.
  late HomePageAppBarSolverModel homePageAppBarSolverModel;
  // Model for BottomNavigationBarSol component.
  late BottomNavigationBarSolModel bottomNavigationBarSolModel;

  @override
  void initState(BuildContext context) {
    homePageAppBarSolverModel =
        createModel(context, () => HomePageAppBarSolverModel());
    bottomNavigationBarSolModel =
        createModel(context, () => BottomNavigationBarSolModel());
  }

  @override
  void dispose() {
    homePageAppBarSolverModel.dispose();
    bottomNavigationBarSolModel.dispose();
  }
}
