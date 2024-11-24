import '/components/bottom_navigation_bar_org_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'favourites_list_widget.dart' show FavouritesListWidget;
import 'package:flutter/material.dart';

class FavouritesListModel extends FlutterFlowModel<FavouritesListWidget> {
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
