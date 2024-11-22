import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage1': ParameterData.none(),
  'PostChallenge': ParameterData.none(),
  'tst': ParameterData.none(),
  'startPage': ParameterData.none(),
  'userType': ParameterData.none(),
  'signIn': ParameterData.none(),
  'Sol_details': (data) async => ParameterData(
        allParams: {
          'chalRef': getParameter<DocumentReference>(data, 'chalRef'),
          'reply': await getDocumentParameter<RepliesRecord>(
              data, 'reply', RepliesRecord.fromSnapshot),
        },
      ),
  'createAccount': ParameterData.none(),
  'createAccountOrg': ParameterData.none(),
  'TST_SOLVERcreateAcc': ParameterData.none(),
  'sol_ProfileCopy': ParameterData.none(),
  'org_ProfileCopyCopy': ParameterData.none(),
  'edit_org': ParameterData.none(),
  'change_password': ParameterData.none(),
  'edit_sol': ParameterData.none(),
  'ViewChallenges': ParameterData.none(),
  'orgViewChallenges': ParameterData.none(),
  'ChallengeDetails': ParameterData.none(),
  'orgHomepage': ParameterData.none(),
  'solverHomepageCopyy': ParameterData.none(),
  'Terms_and_conditions_signIn': ParameterData.none(),
  'orgViewSolutions': (data) async => ParameterData(
        allParams: {
          'challengeID': getParameter<DocumentReference>(data, 'challengeID'),
        },
      ),
  'loggedin_page': ParameterData.none(),
  'submitsol': (data) async => ParameterData(
        allParams: {
          'challenge': getParameter<DocumentReference>(data, 'challenge'),
          'challengWholeDoc': await getDocumentParameter<ChallengesRecord>(
              data, 'challengWholeDoc', ChallengesRecord.fromSnapshot),
        },
      ),
  'EditPostChallenge': (data) async => ParameterData(
        allParams: {
          'challengeRef': getParameter<DocumentReference>(data, 'challengeRef'),
        },
      ),
  'blank': (data) async => ParameterData(
        allParams: {
          'challenge': await getDocumentParameter<ChallengesRecord>(
              data, 'challenge', ChallengesRecord.fromSnapshot),
        },
      ),
  'viewSolvers1': ParameterData.none(),
  'reset_password': ParameterData.none(),
  'orgNotification': ParameterData.none(),
  'orgNotification2': ParameterData.none(),
  'viewSolutionsCopyCopy': (data) async => ParameterData(
        allParams: {
          'challengeID': await getDocumentParameter<ChallengesRecord>(
              data, 'challengeID', ChallengesRecord.fromSnapshot),
          'idTest': getParameter<String>(data, 'idTest'),
        },
      ),
  'Chats': ParameterData.none(),
  'chatPage': (data) async => ParameterData(
        allParams: {
          'recieveChat': getParameter<DocumentReference>(data, 'recieveChat'),
        },
      ),
  'ChatsCopy': ParameterData.none(),
  'chatPage_solver': (data) async => ParameterData(
        allParams: {
          'recieveChat': getParameter<DocumentReference>(data, 'recieveChat'),
          'user': await getDocumentParameter<UsersRecord>(
              data, 'user', UsersRecord.fromSnapshot),
        },
      ),
  'chatPage_org': (data) async => ParameterData(
        allParams: {
          'recieveChat': getParameter<DocumentReference>(data, 'recieveChat'),
          'user': await getDocumentParameter<UsersRecord>(
              data, 'user', UsersRecord.fromSnapshot),
        },
      ),
  'store': ParameterData.none(),
  'defaultaa': ParameterData.none(),
  'orgHomepageCopy': ParameterData.none(),
  'orgHomepageCopy2': ParameterData.none(),
  'viewSolutions': ParameterData.none(),
  'viewSolvers': ParameterData.none(),
  'org_ProfileCopyCopyCopy': ParameterData.none(),
  'sol_ProfileCopyCopy': ParameterData.none(),
  'solverHomepage': ParameterData.none(),
  'orgViewSolverSolutions': (data) async => ParameterData(
        allParams: {
          'solver': await getDocumentParameter<UsersRecord>(
              data, 'solver', UsersRecord.fromSnapshot),
        },
      ),
  'notiTST': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
