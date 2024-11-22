import '/components/bottom_navigation_bar_org_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/organization/home_page_app_bar/home_page_app_bar_widget.dart';
import 'org_homepage_widget.dart' show OrgHomepageWidget;
import 'package:flutter/material.dart';

class OrgHomepageModel extends FlutterFlowModel<OrgHomepageWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> list = [];
  void addToList(DocumentReference item) => list.add(item);
  void removeFromList(DocumentReference item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, DocumentReference item) =>
      list.insert(index, item);
  void updateListAtIndex(int index, Function(DocumentReference) updateFn) =>
      list[index] = updateFn(list[index]);

  ///  State fields for stateful widgets in this page.

  // Model for HomePage_AppBar component.
  late HomePageAppBarModel homePageAppBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
