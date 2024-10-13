import '/components/bottom_navigation_bar_org_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/organization/home_page_app_bar/home_page_app_bar_widget.dart';
import 'org_homepage_widget.dart' show OrgHomepageWidget;
import 'package:flutter/material.dart';

class OrgHomepageModel extends FlutterFlowModel<OrgHomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomePage_AppBar component.
  late HomePageAppBarModel homePageAppBarModel;
  // Model for BottomNavigationBarOrg component.
  late BottomNavigationBarOrgModel bottomNavigationBarOrgModel;

  @override
  void initState(BuildContext context) {
    homePageAppBarModel = createModel(context, () => HomePageAppBarModel());
    bottomNavigationBarOrgModel =
        createModel(context, () => BottomNavigationBarOrgModel());
  }

  @override
  void dispose() {
    homePageAppBarModel.dispose();
    bottomNavigationBarOrgModel.dispose();
  }
}
