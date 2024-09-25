import '/components/bottom_navigation_bar_org_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_challenges_copy_widget.dart' show ViewChallengesCopyWidget;
import 'package:flutter/material.dart';

class ViewChallengesCopyModel
    extends FlutterFlowModel<ViewChallengesCopyWidget> {
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
