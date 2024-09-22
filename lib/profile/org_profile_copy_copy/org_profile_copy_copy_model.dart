import '/flutter_flow/flutter_flow_util.dart';
import 'org_profile_copy_copy_widget.dart' show OrgProfileCopyCopyWidget;
import 'package:flutter/material.dart';

class OrgProfileCopyCopyModel
    extends FlutterFlowModel<OrgProfileCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
