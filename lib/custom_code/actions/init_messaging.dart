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

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future initMessaging() async {
  // Add your function code here!
  await Firebase.initializeApp();

  await AwesomeNotifications().initialize(
      null, //'resource://drawable/res_app_icon',//
      [
        NotificationChannel(
            channelKey: 'alerts',
            channelName: 'Alerts',
            channelDescription: 'Notification tests as alerts',
            playSound: true,
            onlyAlertOnce: true,
            groupAlertBehavior: GroupAlertBehavior.Children,
            importance: NotificationImportance.High,
            defaultPrivacy: NotificationPrivacy.Private,
            defaultColor: Colors.deepPurple,
            ledColor: Colors.deepPurple)
      ],
      debug: true);

  String? token = await FirebaseMessaging.instance.getToken();
  FFAppState().token = token ?? 'No token';

  FirebaseMessaging.instance.getInitialMessage().then((message) {
    if (message != null) {
      print('received initial message: ${message.notification?.title}');
    }
  });

  // Listen for incoming messages while the app is in the foreground
  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    // Print the received message for debugging
    print('Received message 1: ${message.notification?.title}');

    // Create a new notification using Awesome Notifications
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: -1, // You can replace -1 with any unique ID
          channelKey: 'alerts', // The channel for notifications
          title: message.notification?.title ?? 'No title', // Fallback title
          body: message.notification?.body ?? 'No body', // Fallback body
          payload: {
            'notificationId': '1234567890'
          }, // Optional payload for deep links
        ),
        actionButtons: [
          // Optional action buttons for interaction
          NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
          NotificationActionButton(
              key: 'REPLY',
              label: 'Reply Message',
              requireInputText: true,
              actionType: ActionType.SilentAction),
          NotificationActionButton(
              key: 'DISMISS',
              label: 'Dismiss',
              actionType: ActionType.DismissAction,
              isDangerousOption: true)
        ]);
  });

  // 2. Handling messages when the app is opened from the background
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('Received message 2: ${message.notification?.title}');
    // You can navigate to a specific screen or handle the message here
  });

  // 3. Handling messages in the background (when the app is terminated or in the background)
  FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async {
    print('Received message 3: ${message.notification?.title}');
    // You can handle background tasks or notifications here as needed
  });
}
