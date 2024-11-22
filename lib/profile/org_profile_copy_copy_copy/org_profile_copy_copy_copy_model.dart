import '/components/bottom_navigation_bar_org_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'org_profile_copy_copy_copy_widget.dart'
    show OrgProfileCopyCopyCopyWidget;
import 'package:flutter/material.dart';

class OrgProfileCopyCopyCopyModel
    extends FlutterFlowModel<OrgProfileCopyCopyCopyWidget> {
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
