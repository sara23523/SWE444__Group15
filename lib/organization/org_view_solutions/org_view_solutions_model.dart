import '/components/bottom_navigation_bar_org_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'org_view_solutions_widget.dart' show OrgViewSolutionsWidget;
import 'package:flutter/material.dart';

class OrgViewSolutionsModel extends FlutterFlowModel<OrgViewSolutionsWidget> {
  ///  Local state fields for this page.

  String challengeID = 'nul';

  ///  State fields for stateful widgets in this page.

  // Model for BottomNavigationBarOrg component.
  late BottomNavigationBarOrgModel bottomNavigationBarOrgModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarOrgModel =
        createModel(context, () => BottomNavigationBarOrgModel());
  }

  @override
  void dispose() {
    bottomNavigationBarOrgModel.dispose();
  }
}
