// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/*import '/backend/backend.dart';




import '/backend/backend.dart';*/

import '../../backend/firebase_storage/storage.dart'; // For file storage
import '../../flutter_flow/upload_data.dart'; // For selecting and uploading files
import '../../flutter_flow/flutter_flow_util.dart'; // For utility functions

Future uploadFileAndReturnURL(List<String>? fileType) async {
  fileType = fileType ?? ['pdf']; // Default to 'pdf' file type

  // Select file to upload
  final selectedFile = await selectFile(allowedExtensions: fileType);
  if (selectedFile != null) {
    // Upload file to Firebase Storage
    final downloadUrl =
        await uploadData(selectedFile.storagePath, selectedFile.bytes);

    if (downloadUrl != null) {
      return downloadUrl; // Return the file's URL after successful upload
    } else {
      return 'error'; // Return an error message in case of failure
    }
  }
  return null; // No file selected
}
