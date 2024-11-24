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

import 'dart:convert';
import 'package:http/http.dart' as http;

Future sendFCMNotification(
  String? title,
  String? body,
  String? token,
) async {
  // Add your function code here!
  if (token == null || token.isEmpty) {
    throw Exception("FCM token is required.");
  }
  const String serverKey =
      "YOUR_SERVER_KEY"; // Replace with your FCM server key
  const String fcmUrl = "https://fcm.googleapis.com/fcm/send";

  final Map<String, dynamic> notification = {
    "to": token,
    "notification": {
      "title": title ?? "Default Title",
      "body": body ?? "Default Body",
    },
  };

  final response = await http.post(
    Uri.parse(fcmUrl),
    headers: {
      "Content-Type": "application/json",
      "Authorization": "key=$serverKey",
    },
    body: jsonEncode(notification),
  );

  if (response.statusCode == 200) {
    print("Notification sent successfully.");
  } else {
    throw Exception(
      "Failed to send notification. Status code: ${response.statusCode}",
    );
  }
}
