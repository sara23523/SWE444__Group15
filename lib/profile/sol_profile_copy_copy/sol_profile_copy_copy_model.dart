import '/components/bottom_navigation_bar_sol_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sol_profile_copy_copy_widget.dart' show SolProfileCopyCopyWidget;
import 'package:flutter/material.dart';

class SolProfileCopyCopyModel
    extends FlutterFlowModel<SolProfileCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BottomNavigationBarSol component.
  late BottomNavigationBarSolModel bottomNavigationBarSolModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    bottomNavigationBarSolModel =
        createModel(context, () => BottomNavigationBarSolModel());
  }

  @override
  void dispose() {
    bottomNavigationBarSolModel.dispose();
  }
}
