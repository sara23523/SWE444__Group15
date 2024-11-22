import '/backend/backend.dart';
import '/components/bottom_navigation_bar_org_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'view_solvers_widget.dart' show ViewSolversWidget;
import 'package:flutter/material.dart';

class ViewSolversModel extends FlutterFlowModel<ViewSolversWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for DropDown3 widget.
  String? dropDown3Value;
  FormFieldController<String>? dropDown3ValueController;
  // Model for BottomNavigationBarOrg component.
  late BottomNavigationBarOrgModel bottomNavigationBarOrgModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationBarOrgModel =
        createModel(context, () => BottomNavigationBarOrgModel());
  }

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();

    bottomNavigationBarOrgModel.dispose();
  }
}
