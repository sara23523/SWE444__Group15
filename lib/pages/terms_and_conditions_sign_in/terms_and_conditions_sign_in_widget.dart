import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_and_conditions_sign_in_model.dart';
export 'terms_and_conditions_sign_in_model.dart';

class TermsAndConditionsSignInWidget extends StatefulWidget {
  const TermsAndConditionsSignInWidget({super.key});

  @override
  State<TermsAndConditionsSignInWidget> createState() =>
      _TermsAndConditionsSignInWidgetState();
}

class _TermsAndConditionsSignInWidgetState
    extends State<TermsAndConditionsSignInWidget> {
  late TermsAndConditionsSignInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsSignInModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: true,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('createAccount');
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Terms and Conditions for Account Creation',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '1. Introduction',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'By creating an account on UNLOCK, you agree to be bound by these Terms and Conditions. Please read these terms carefully before creating an account. If you do not agree with these Terms and Conditions, you should not create an account.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '2. Eligibility',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'To create an account, you must:\n\n\t•\tBe at least 18 years old.\n\t•\tProvide accurate and complete information during the registration process.\n\t•\tAccept these Terms and Conditions, as well as our Privacy Policy.\n\t•\tComply with all local, state, and national laws applicable to you.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '3. Account Responsibilities',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '\t•\tYou are responsible for maintaining the confidentiality of your account credentials, including your password.\n\t•\tYou must notify us immediately if you suspect unauthorized access to your account.\n\t•\tYou are responsible for all activities that occur under your account.\n\t•\tSharing your account information with others is strictly prohibited.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '4. Account Creation',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '•\tYou must provide accurate and up-to-date information during the registration process. Misleading information may result in suspension or termination of your account.\n\t•\tWe reserve the right to suspend or terminate your account if we detect any fraudulent activity, violation of these terms, or for other reasons in our sole discretion.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '5. Content Ownership and Use',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '\t•\tYou retain ownership of all content you submit, post, or display on or through the app. However, by uploading content, you grant us a worldwide, non-exclusive, royalty-free license to use, modify, and display such content as necessary for operating and promoting the app.\n\t•\tYou may not upload content that violates any third-party rights, including intellectual property rights, privacy rights, or applicable laws.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '6. User Conduct',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '\t•\tYou agree not to use the app for any unlawful or harmful activities, including but not limited to:\n\t•\tHarassment, abuse, or harm towards others.\n\t•\tInfringing on the intellectual property rights of others.\n\t•\tSpreading malware, viruses, or other harmful code.\n\t•\tAccessing or attempting to access other users’ accounts without permission.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '7. Changes to Terms',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'We reserve the right to modify these Terms and Conditions at any time. Any changes will be effective immediately upon posting. We will notify you of material changes by email or through the app. Continued use of the app after changes are posted constitutes your acceptance of the new terms.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '8. Limitation of Liability',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'To the fullest extent permitted by law, UNLOCK is not liable for any direct, indirect, incidental, consequential, or punitive damages arising from your use of the app, including but not limited to loss of data, unauthorized access to your account, or your reliance on any content provided through the app.\n',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '9. Contact Information',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'If you have any questions or concerns regarding these Terms and Conditions, please contact us at [Support Email].\n\nMake sure to consult a legal expert to tailor the terms to your app’s specific features and to ensure compliance with applicable laws.',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ]
                  .divide(const SizedBox(height: 20.0))
                  .addToStart(const SizedBox(height: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
