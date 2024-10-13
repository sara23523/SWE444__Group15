import '/flutter_flow/flutter_flow_util.dart';
import 'post_challenge_widget.dart' show PostChallengeWidget;
import 'package:flutter/material.dart';

class PostChallengeModel extends FlutterFlowModel<PostChallengeWidget> {
  ///  Local state fields for this page.

  int show = 0;

  String? title = '';

  String? desc;

  bool technology = false;

  bool marketing = false;

  bool businessStrategy = false;

  bool finance = false;

  bool design = false;

  bool operationsLogistics = false;

  bool educationTraining = false;

  bool healthcare = false;

  bool legalCompliance = false;

  bool humanResources = false;

  bool sustainabilityEnvironment = false;

  bool artCreativity = false;

  bool salesCustomerService = false;

  bool personalDevelopment = false;

  List<String> selectedCategories = [];
  void addToSelectedCategories(String item) => selectedCategories.add(item);
  void removeFromSelectedCategories(String item) =>
      selectedCategories.remove(item);
  void removeAtIndexFromSelectedCategories(int index) =>
      selectedCategories.removeAt(index);
  void insertAtIndexInSelectedCategories(int index, String item) =>
      selectedCategories.insert(index, item);
  void updateSelectedCategoriesAtIndex(int index, Function(String) updateFn) =>
      selectedCategories[index] = updateFn(selectedCategories[index]);

  bool other = false;

  List<DocumentReference> solversref = [];
  void addToSolversref(DocumentReference item) => solversref.add(item);
  void removeFromSolversref(DocumentReference item) => solversref.remove(item);
  void removeAtIndexFromSolversref(int index) => solversref.removeAt(index);
  void insertAtIndexInSolversref(int index, DocumentReference item) =>
      solversref.insert(index, item);
  void updateSolversrefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      solversref[index] = updateFn(solversref[index]);

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
