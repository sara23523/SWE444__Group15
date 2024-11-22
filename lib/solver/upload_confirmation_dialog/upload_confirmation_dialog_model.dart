import '/flutter_flow/flutter_flow_util.dart';
import 'upload_confirmation_dialog_widget.dart'
    show UploadConfirmationDialogWidget;
import 'package:flutter/material.dart';

class UploadConfirmationDialogModel
    extends FlutterFlowModel<UploadConfirmationDialogWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
