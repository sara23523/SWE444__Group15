import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DocumentReference> generateListOfUsers(
  DocumentReference authUser,
  DocumentReference otherUser,
) {
  return [authUser, otherUser];
}

List<String> generateListOfNames(
  String authUserName,
  String otherUserName,
) {
  return [authUserName, otherUserName];
}

DocumentReference getOtherUserRef(
  List<DocumentReference> listOfUserRefs,
  DocumentReference authUserRef,
) {
  return authUserRef == listOfUserRefs.first
      ? listOfUserRefs.last
      : listOfUserRefs.first;
}

String? getFileNameFromUrl(String? url) {
  // Check if the URL is not empty or null
  if (url == null || url.isEmpty) {
    return ''; // Return an empty string if no URL is provided
  }

  // Decode the URL to handle encoded characters like %2F
  String decodedUrl = Uri.decodeFull(url);

  // Remove any query parameters by finding the first occurrence of "?"
  if (decodedUrl.contains('?')) {
    decodedUrl = decodedUrl.split('?').first;
  }

  // Split the decoded URL by '/' and return the last segment
  return decodedUrl.split('/').last;
}
