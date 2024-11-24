// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:unlock_444/auth/firebase_auth/auth_util.dart';
import 'package:unlock_444/backend/push_notifications/push_notifications_util.dart';
import 'package:unlock_444/organization/post_challenge/post_challenge_model.dart';
import '/backend/firebase_storage/storage.dart';

import '/organization/selection_limit_exceeded_dialog/selection_limit_exceeded_dialog_widget.dart';
import '/organization/unsaved_changes_confirmation_dialog_org/unsaved_changes_confirmation_dialog_org_widget.dart';

Future notificationAction(
  String? notificationTitle,
  String? notificationText,
  String? notificationSound,
  List<DocumentReference>? solverToSendToRefs,
) async {
  triggerPushNotification(
    notificationTitle: notificationTitle,
    notificationText: notificationText,
    notificationSound: 'default',
    userRefs: solverToSendToRefs!,
    initialPageName: 'ViewChallenges',
    parameterData: {},
  );
}
