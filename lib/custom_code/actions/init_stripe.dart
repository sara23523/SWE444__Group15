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

import 'package:flutter_stripe/flutter_stripe.dart';

Future initStripe() async {
  Stripe.publishableKey =
      'pk_test_51QLmlBIJYD1K6dcsvsdJ3Z7oE8opEYApuzZocYGqEdr49xmHk1CRW58Vz9Z1we7l0G0R6Au4SHIWVnSj1ZcaX2Px00uh1rPwIP';

  Stripe.instance.applySettings();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
