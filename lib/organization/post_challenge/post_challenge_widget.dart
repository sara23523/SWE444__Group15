import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/organization/selection_limit_exceeded_dialog/selection_limit_exceeded_dialog_widget.dart';
import '/organization/unsaved_changes_confirmation_dialog_org/unsaved_changes_confirmation_dialog_org_widget.dart';
import '/pages/post_confirmation_dialog/post_confirmation_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'post_challenge_model.dart';
export 'post_challenge_model.dart';

class PostChallengeWidget extends StatefulWidget {
  const PostChallengeWidget({
    super.key,
    required this.backStack,
  });

  final String? backStack;

  @override
  State<PostChallengeWidget> createState() => _PostChallengeWidgetState();
}

class _PostChallengeWidgetState extends State<PostChallengeWidget> {
  late PostChallengeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostChallengeModel());

    _model.titleTextFieldTextController ??= TextEditingController();
    _model.titleTextFieldFocusNode ??= FocusNode();
    _model.titleTextFieldFocusNode!.addListener(() => safeSetState(() {}));
    _model.descriptionTextFieldTextController ??= TextEditingController();
    _model.descriptionTextFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        queryBuilder: (usersRecord) => usersRecord.where(
          'user_role',
          isEqualTo: 0,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersRecord> postChallengeUsersRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  if ((_model.titleTextFieldTextController.text != '') ||
                      (_model.descriptionTextFieldTextController.text !=
                              '') ||
                      (_model.selectedCategories.isNotEmpty) ||
                      (_model.uploadedFileUrl2 != '')) {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => FocusScope.of(context).unfocus(),
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: UnsavedChangesConfirmationDialogOrgWidget(
                              backStack: widget.backStack!,
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  } else {
                    context.safePop();
                  }
                },
              ),
              title: Text(
                'Post Challenge',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter Tight',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Title',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: SizedBox(
                                      width: 360.0,
                                      child: TextFormField(
                                        controller:
                                            _model.titleTextFieldTextController,
                                        focusNode:
                                            _model.titleTextFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText:
                                              'Enter your challenge title here...',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: (_model.title != 'null') ||
                                                      (_model.show == 0)
                                                  ? const Color(0xFFD8DADC)
                                                  : FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF0043CE),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLength: 60,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.none,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .titleTextFieldTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  if ((_model.show == 1) &&
                                      (_model.titleTextFieldTextController
                                                  .text ==
                                              ''))
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Text(
                                          '^ Title is required',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        'Description',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: SizedBox(
                                      width: 360.0,
                                      child: TextFormField(
                                        controller: _model
                                            .descriptionTextFieldTextController,
                                        focusNode: _model
                                            .descriptionTextFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText:
                                              'Describe your challenge here...',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: (_model.desc != 'null') ||
                                                      (_model.show == 0)
                                                  ? const Color(0xFFD8DADC)
                                                  : FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF0043CE),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLines: 5,
                                        minLines: 5,
                                        maxLength: 300,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.enforced,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .descriptionTextFieldTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  if ((_model.show == 1) &&
                                      (_model.descriptionTextFieldTextController
                                                  .text ==
                                              ''))
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 15.0),
                                        child: Text(
                                          '^ Description is required',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            'File Attachments',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            '(Optional)',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final selectedFiles = await selectFiles(
                                        allowedExtensions: ['pdf'],
                                        multiFile: false,
                                      );
                                      if (selectedFiles != null) {
                                        safeSetState(() =>
                                            _model.isDataUploading1 = true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        try {
                                          selectedUploadedFiles = selectedFiles
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                  ))
                                              .toList();
                                        } finally {
                                          _model.isDataUploading1 = false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                            selectedFiles.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile1 =
                                                selectedUploadedFiles.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 360.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: const Color(0xFFD8DADC),
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.file_upload_outlined,
                                              color: Color(0xFF0043CE),
                                              size: 35.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              (_model
                                                              .uploadedLocalFile1
                                                              .bytes
                                                              ?.isNotEmpty ??
                                                          false)
                                                  ? 'Success! Your file is secure.'
                                                  : 'Upload File',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: (_model
                                                                    .uploadedLocalFile1
                                                                    .bytes
                                                                    ?.isNotEmpty ??
                                                                false)
                                                        ? const Color(0xFF0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          if ((_model.uploadedLocalFile1.bytes
                                                      ?.isNotEmpty ??
                                                  false))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      40.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderRadius: 15.0,
                                                borderWidth: 1.0,
                                                buttonSize: 28.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                icon: Icon(
                                                  Icons.close_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 13.0,
                                                ),
                                                onPressed: () async {
                                                  safeSetState(() {
                                                    _model.isDataUploading1 =
                                                        false;
                                                    _model.uploadedLocalFile1 =
                                                        FFUploadedFile(
                                                            bytes: Uint8List
                                                                .fromList([]));
                                                  });
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 25.0, 0.0, 0.0),
                                          child: Text(
                                            'Pick up to three categories that best fit your challenge to proceed.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Wrap(
                                            spacing: 8.0,
                                            runSpacing: 8.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Technology')) {
                                                    _model.technology = true;
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Technology');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Technology')) {
                                                      _model
                                                          .removeFromSelectedCategories(
                                                              'Technology');
                                                      _model.technology = false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 100.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.technology
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model.technology
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Technology',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Marketing')) {
                                                    _model.marketing = true;
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Marketing');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Marketing')) {
                                                      _model
                                                          .removeFromSelectedCategories(
                                                              'Marketing');
                                                      _model.marketing = false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 90.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.marketing
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model.marketing
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Marketing',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Business & Strategy')) {
                                                    _model.businessStrategy =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.addToSelectedCategories(
                                                        'Business & Strategy');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Business & Strategy')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Business & Strategy');
                                                      _model.businessStrategy =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 158.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .businessStrategy
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .businessStrategy
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Business & Strategy',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Finance')) {
                                                    _model.finance = true;
                                                    safeSetState(() {});
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Finance');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains('Finance')) {
                                                      _model
                                                          .removeFromSelectedCategories(
                                                              'Finance');
                                                      _model.finance = false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 75.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.finance
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model.finance
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Finance',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains('Design')) {
                                                    _model.design = true;
                                                    safeSetState(() {});
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Design');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains('Design')) {
                                                      _model
                                                          .removeFromSelectedCategories(
                                                              'Design');
                                                      _model.design = false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 65.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.design
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model.design
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Design',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Operations & Logistics')) {
                                                    _model.operationsLogistics =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.addToSelectedCategories(
                                                        'Operations & Logistics');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Operations & Logistics')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Operations & Logistics');
                                                      _model.operationsLogistics =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 172.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .operationsLogistics
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .operationsLogistics
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Operations & Logistics',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Education & Training')) {
                                                    _model.educationTraining =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.addToSelectedCategories(
                                                        'Education & Training');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Education & Training')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Education & Training');
                                                      _model.educationTraining =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 157.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .educationTraining
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .educationTraining
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Education & Training',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Healthcare')) {
                                                    _model.healthcare = true;
                                                    safeSetState(() {});
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Healthcare');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Healthcare')) {
                                                      _model
                                                          .removeFromSelectedCategories(
                                                              'Healthcare');
                                                      _model.healthcare = false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 94.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.healthcare
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model.healthcare
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Healthcare',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Legal & Compliance')) {
                                                    _model.legalCompliance =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.addToSelectedCategories(
                                                        'Legal & Compliance');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Legal & Compliance')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Legal & Compliance');
                                                      _model.legalCompliance =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 150.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .legalCompliance
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .legalCompliance
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Legal & Compliance',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Human Resources')) {
                                                    _model.humanResources =
                                                        true;
                                                    safeSetState(() {});
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Human Resources');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Human Resources')) {
                                                      _model
                                                          .removeFromSelectedCategories(
                                                              'Human Resources');
                                                      _model.humanResources =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 141.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.humanResources
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .humanResources
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Human Resources',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Sustainability & Environment')) {
                                                    _model.sustainabilityEnvironment =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.addToSelectedCategories(
                                                        'Sustainability & Environment');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Sustainability & Environment')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Sustainability & Environment');
                                                      _model.sustainabilityEnvironment =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 208.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .sustainabilityEnvironment
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .sustainabilityEnvironment
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Sustainability & Environment',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Art & Creativity')) {
                                                    _model.artCreativity = true;
                                                    safeSetState(() {});
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Art & Creativity');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Art & Creativity')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Art & Creativity');
                                                      _model.artCreativity =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 119.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.artCreativity
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .artCreativity
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Art & Creativity',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Sales & Customer Service')) {
                                                    _model.salesCustomerService =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.addToSelectedCategories(
                                                        'Sales & Customer Service');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Sales & Customer Service')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Sales & Customer Service');
                                                      _model.salesCustomerService =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 188.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .salesCustomerService
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .salesCustomerService
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Sales & Customer Service',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains(
                                                              'Personal Development')) {
                                                    _model.personalDevelopment =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.addToSelectedCategories(
                                                        'Personal Development');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains(
                                                            'Personal Development')) {
                                                      _model.removeFromSelectedCategories(
                                                          'Personal Development');
                                                      _model.personalDevelopment =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 167.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .personalDevelopment
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .personalDevelopment
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Personal Development',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model.selectedCategories
                                                              .length <=
                                                          2) &&
                                                      !_model.selectedCategories
                                                          .contains('Other')) {
                                                    _model.other = true;
                                                    safeSetState(() {});
                                                    _model
                                                        .addToSelectedCategories(
                                                            'Other');
                                                    safeSetState(() {});
                                                  } else {
                                                    if (_model
                                                        .selectedCategories
                                                        .contains('Other')) {
                                                      _model
                                                          .removeFromSelectedCategories(
                                                              'Other');
                                                      _model.other = false;
                                                      safeSetState(() {});
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const SelectionLimitExceededDialogWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  width: 60.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.other
                                                        ? const Color(0x3E0043CE)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: _model.other
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : const Color(0xFFD8DADC),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Other',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if ((_model.show == 1) &&
                                                  (_model.selectedCategories.isEmpty))
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 15.0),
                                                    child: Text(
                                                      '^ Selecting a category is required',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (_model.show == 1)
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          width: 360.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0x52FF5963),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Please fill in all required fields to proceed.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        _model.title = _model
                                            .titleTextFieldTextController.text;
                                        _model.desc = _model
                                            .descriptionTextFieldTextController
                                            .text;
                                        safeSetState(() {});
                                        if ((_model.titleTextFieldTextController.text == '') ||
                                            (_model.descriptionTextFieldTextController
                                                        .text ==
                                                    '') ||
                                            (_model.selectedCategories.isEmpty)) {
                                          _model.show = 1;
                                          safeSetState(() {});
                                        } else {
                                          _model.show = 0;
                                          safeSetState(() {});
                                          if ((_model.uploadedLocalFile1.bytes
                                                      ?.isNotEmpty ??
                                                  false)) {
                                            {
                                              safeSetState(() => _model
                                                  .isDataUploading2 = true);
                                              var selectedUploadedFiles =
                                                  <FFUploadedFile>[];
                                              var selectedFiles =
                                                  <SelectedFile>[];
                                              var downloadUrls = <String>[];
                                              try {
                                                selectedUploadedFiles = _model
                                                        .uploadedLocalFile1
                                                        .bytes!
                                                        .isNotEmpty
                                                    ? [
                                                        _model
                                                            .uploadedLocalFile1
                                                      ]
                                                    : <FFUploadedFile>[];
                                                selectedFiles =
                                                    selectedFilesFromUploadedFiles(
                                                  selectedUploadedFiles,
                                                );
                                                downloadUrls =
                                                    (await Future.wait(
                                                  selectedFiles.map(
                                                    (f) async =>
                                                        await uploadData(
                                                            f.storagePath,
                                                            f.bytes),
                                                  ),
                                                ))
                                                        .where((u) => u != null)
                                                        .map((u) => u!)
                                                        .toList();
                                              } finally {
                                                _model.isDataUploading2 = false;
                                              }
                                              if (selectedUploadedFiles
                                                          .length ==
                                                      selectedFiles.length &&
                                                  downloadUrls.length ==
                                                      selectedFiles.length) {
                                                safeSetState(() {
                                                  _model.uploadedLocalFile2 =
                                                      selectedUploadedFiles
                                                          .first;
                                                  _model.uploadedFileUrl2 =
                                                      downloadUrls.first;
                                                });
                                              } else {
                                                safeSetState(() {});
                                                return;
                                              }
                                            }

                                            await ChallengesRecord.collection
                                                .doc()
                                                .set({
                                              ...createChallengesRecordData(
                                                descriptionFile:
                                                    _model.uploadedFileUrl2,
                                                title: _model
                                                    .titleTextFieldTextController
                                                    .text,
                                                description: _model
                                                    .descriptionTextFieldTextController
                                                    .text,
                                                createdTime:
                                                    getCurrentTimestamp,
                                                user: currentUserReference,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'selectedCategories':
                                                      _model.selectedCategories,
                                                },
                                              ),
                                            });
                                          } else {
                                            await ChallengesRecord.collection
                                                .doc()
                                                .set({
                                              ...createChallengesRecordData(
                                                description: _model
                                                    .descriptionTextFieldTextController
                                                    .text,
                                                title: _model
                                                    .titleTextFieldTextController
                                                    .text,
                                                user: currentUserReference,
                                                createdTime:
                                                    getCurrentTimestamp,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'selectedCategories':
                                                      _model.selectedCategories,
                                                },
                                              ),
                                            });
                                          }

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () =>
                                                    FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      const PostConfirmationDialogWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          _model.solversref =
                                              postChallengeUsersRecordList
                                                  .map((e) => e.reference)
                                                  .toList()
                                                  .cast<DocumentReference>();
                                          safeSetState(() {});
                                          triggerPushNotification(
                                            notificationTitle:
                                                'this is new one, هلا',
                                            notificationText: 'هلا والله',
                                            notificationSound: 'default',
                                            userRefs:
                                                _model.solversref.toList(),
                                            initialPageName: 'ViewChallenges',
                                            parameterData: {},
                                          );
                                        }
                                      },
                                      text: 'Post',
                                      options: FFButtonOptions(
                                        width: 360.0,
                                        height: 54.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.black,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]
                            .addToStart(const SizedBox(height: 16.0))
                            .addToEnd(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
