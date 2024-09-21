import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_org_widget.dart' show CreateAccountOrgWidget;
import 'package:flutter/material.dart';

class CreateAccountOrgModel extends FlutterFlowModel<CreateAccountOrgWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Commercial_registration_number widget.
  FocusNode? commercialRegistrationNumberFocusNode;
  TextEditingController? commercialRegistrationNumberTextController;
  String? Function(BuildContext, String?)?
      commercialRegistrationNumberTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Password must be at least 8 characters long.';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\\\$&*~]).{8,}\$')
        .hasMatch(val)) {
      return 'Password must include\nat least one uppercase letter.\nat least one number.\nat least one special character (e.g., !@#\$&*~)\".';
    }
    return null;
  }

  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for bio widget.
  FocusNode? bioFocusNode;
  TextEditingController? bioTextController;
  String? Function(BuildContext, String?)? bioTextControllerValidator;

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    commercialRegistrationNumberFocusNode?.dispose();
    commercialRegistrationNumberTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    bioFocusNode?.dispose();
    bioTextController?.dispose();
  }
}
