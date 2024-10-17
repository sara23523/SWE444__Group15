import '/flutter_flow/flutter_flow_util.dart';
import 'post_challenge_widget.dart' show PostChallengeWidget;
import 'package:flutter/material.dart';

class PostChallengeModel extends FlutterFlowModel<PostChallengeWidget> {
  ///  Local state fields for this page.

  int show = 0;

  String? title = '';

  String? desc;

  List<DocumentReference> solversref = [];
  void addToSolversref(DocumentReference item) => solversref.add(item);
  void removeFromSolversref(DocumentReference item) => solversref.remove(item);
  void removeAtIndexFromSolversref(int index) => solversref.removeAt(index);
  void insertAtIndexInSolversref(int index, DocumentReference item) =>
      solversref.insert(index, item);
  void updateSolversrefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      solversref[index] = updateFn(solversref[index]);

  List<String> selectedtypes = [];
  void addToSelectedtypes(String item) => selectedtypes.add(item);
  void removeFromSelectedtypes(String item) => selectedtypes.remove(item);
  void removeAtIndexFromSelectedtypes(int index) =>
      selectedtypes.removeAt(index);
  void insertAtIndexInSelectedtypes(int index, String item) =>
      selectedtypes.insert(index, item);
  void updateSelectedtypesAtIndex(int index, Function(String) updateFn) =>
      selectedtypes[index] = updateFn(selectedtypes[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();
  }
}
