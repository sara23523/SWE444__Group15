import '/flutter_flow/flutter_flow_util.dart';
import '/organization/home_page_app_bar/home_page_app_bar_widget.dart';
import 'homepage_solver_widget.dart' show HomepageSolverWidget;
import 'package:flutter/material.dart';

class HomepageSolverModel extends FlutterFlowModel<HomepageSolverWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomePage_AppBar component.
  late HomePageAppBarModel homePageAppBarModel;

  @override
  void initState(BuildContext context) {
    homePageAppBarModel = createModel(context, () => HomePageAppBarModel());
  }

  @override
  void dispose() {
    homePageAppBarModel.dispose();
  }
}
