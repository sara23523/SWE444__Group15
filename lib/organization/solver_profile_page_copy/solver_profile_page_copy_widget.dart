import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/solver/pdf_component/pdf_component_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'solver_profile_page_copy_model.dart';
export 'solver_profile_page_copy_model.dart';

class SolverProfilePageCopyWidget extends StatefulWidget {
  const SolverProfilePageCopyWidget({
    super.key,
    required this.solver,
    required this.ref,
  });

  final UsersRecord? solver;
  final DocumentReference? ref;

  @override
  State<SolverProfilePageCopyWidget> createState() =>
      _SolverProfilePageCopyWidgetState();
}

class _SolverProfilePageCopyWidgetState
    extends State<SolverProfilePageCopyWidget> {
  late SolverProfilePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolverProfilePageCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF111F41),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                    Text(
                      'Solver Profile',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ]
                      .divide(const SizedBox(width: 15.0))
                      .addToStart(const SizedBox(width: 10.0)),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 170.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF111F41),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget.solver?.points.toString(),
                                      'points',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'Points',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0x004B39EF),
                                      borderRadius: BorderRadius.circular(50.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 4.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          widget.solver!.photoUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        widget.solver?.username,
                                        'username',
                                      ).maybeHandleOverflow(
                                        maxChars: 20,
                                      ),
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(1.0, -1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FutureBuilder<int>(
                                    future: queryRepliesRecordCount(
                                      queryBuilder: (repliesRecord) =>
                                          repliesRecord.where(
                                        'uid',
                                        isEqualTo: widget.solver?.uid,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      int textCount = snapshot.data!;

                                      return Text(
                                        textCount.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      );
                                    },
                                  ),
                                  Text(
                                    'Submitted\n Solutions',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.solver?.email,
                      'email',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 15.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.solver?.bio,
                      'bio',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                if (widget.solver?.resume != null &&
                    widget.solver?.resume != '')
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
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
                                  child: PdfComponentWidget(
                                    fileURL: widget.solver!.resume,
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Container(
                          width: 140.0,
                          height: 38.0,
                          decoration: BoxDecoration(
                            color: const Color(0x3F0043CE),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Icon(
                                  Icons.contact_page,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 23.0,
                                ),
                              ),
                              Text(
                                'Show Resume',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                Flexible(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.solver?.username,
                                'name',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              '\'s Solutions',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ].addToStart(const SizedBox(width: 10.0)),
                        ),
                        if (false)
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'orgViewSolverSolutions',
                                queryParameters: {
                                  'solver': serializeParam(
                                    widget.solver,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'solver': widget.solver,
                                },
                              );
                            },
                            text: 'View Solutions',
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        Container(
                          width: double.infinity,
                          height: 250.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: StreamBuilder<List<RepliesRecord>>(
                            stream: queryRepliesRecord(
                              queryBuilder: (repliesRecord) =>
                                  repliesRecord.where(
                                'uid',
                                isEqualTo: widget.solver?.uid,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<RepliesRecord> listViewRepliesRecordList =
                                  snapshot.data!;

                              return ListView.separated(
                                padding: const EdgeInsets.fromLTRB(
                                  5.0,
                                  0,
                                  0,
                                  0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: listViewRepliesRecordList.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(width: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewRepliesRecord =
                                      listViewRepliesRecordList[listViewIndex];
                                  return StreamBuilder<List<ChallengesRecord>>(
                                    stream: queryChallengesRecord(
                                      queryBuilder: (challengesRecord) =>
                                          challengesRecord.where(
                                        'ChallengeDocID',
                                        isEqualTo:
                                            listViewRepliesRecord.challengeRef,
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<ChallengesRecord>
                                          containerChallengesRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final containerChallengesRecord =
                                          containerChallengesRecordList
                                                  .isNotEmpty
                                              ? containerChallengesRecordList
                                                  .first
                                              : null;

                                      return Container(
                                        width: 180.0,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 291.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          StreamBuilder<
                                                              UsersRecord>(
                                                            stream: UsersRecord
                                                                .getDocument(
                                                                    containerChallengesRecord!
                                                                        .user!),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }

                                                              final circleImageUsersRecord =
                                                                  snapshot
                                                                      .data!;

                                                              return Container(
                                                                width: 30.0,
                                                                height: 30.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  circleImageUsersRecord
                                                                              .photoUrl !=
                                                                          ''
                                                                      ? circleImageUsersRecord
                                                                          .photoUrl
                                                                      : FFAppState()
                                                                          .defaultUserPhoto,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              containerChallengesRecord
                                                                  .title,
                                                              'challenge title',
                                                            ).maybeHandleOverflow(
                                                              maxChars: 12,
                                                              replacement: '…',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 10.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  25.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 35.0,
                                                                height: 35.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  widget
                                                                      .solver!
                                                                      .photoUrl,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget.solver
                                                                      ?.username,
                                                                  'username',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 5.0)),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                listViewRepliesRecord
                                                                    .title,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Opacity(
                                                                opacity: 0.9,
                                                                child: Builder(
                                                                  builder: (_) {
                                                                    final child =
                                                                        Text(
                                                                      listViewRepliesRecord
                                                                          .description,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    );
                                                                    if (listViewRepliesRecord
                                                                            .privateORpublic ==
                                                                        'Private') {
                                                                      return ClipRect(
                                                                        child:
                                                                            ImageFiltered(
                                                                          imageFilter:
                                                                              ImageFilter.blur(
                                                                            sigmaX:
                                                                                2.0,
                                                                            sigmaY:
                                                                                2.0,
                                                                          ),
                                                                          child:
                                                                              child,
                                                                        ),
                                                                      );
                                                                    }
                                                                    return child;
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (listViewRepliesRecord
                                                                .file !=
                                                            '')
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Opacity(
                                                            opacity: 0.9,
                                                            child: Builder(
                                                              builder: (_) {
                                                                final child =
                                                                    Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: PdfComponentWidget(
                                                                                fileURL: listViewRepliesRecord.file,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    text:
                                                                        'View pdf',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: const Color(
                                                                          0xFF0043CE),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                );
                                                                if (listViewRepliesRecord
                                                                        .privateORpublic ==
                                                                    'Private') {
                                                                  return ClipRect(
                                                                    child:
                                                                        ImageFiltered(
                                                                      imageFilter:
                                                                          ImageFilter
                                                                              .blur(
                                                                        sigmaX:
                                                                            2.0,
                                                                        sigmaY:
                                                                            2.0,
                                                                      ),
                                                                      child:
                                                                          child,
                                                                    ),
                                                                  );
                                                                }
                                                                return child;
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  ].divide(
                                                      const SizedBox(height: 10.0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: StreamBuilder<List<FavouritesRecord>>(
                              stream: queryFavouritesRecord(
                                parent: currentUserReference,
                                queryBuilder: (favouritesRecord) =>
                                    favouritesRecord.where(
                                  'uid',
                                  isEqualTo: widget.solver?.uid,
                                ),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<FavouritesRecord>
                                    containerFavouritesRecordList =
                                    snapshot.data!;
                                final containerFavouritesRecord =
                                    containerFavouritesRecordList.isNotEmpty
                                        ? containerFavouritesRecordList.first
                                        : null;

                                return Container(
                                  width: double.infinity,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (containerFavouritesRecord?.uid !=
                                                  null &&
                                              containerFavouritesRecord?.uid !=
                                                  ''
                                          ? true
                                          : false)
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await containerFavouritesRecord!
                                                    .reference
                                                    .delete();
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x91000000),
                                                      offset: Offset(
                                                        0.0,
                                                        2.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: const Color(0x000043CE),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Remove from Favourites',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    Icon(
                                                      Icons.star_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 40.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (containerFavouritesRecord?.uid !=
                                                  null &&
                                              containerFavouritesRecord?.uid !=
                                                  ''
                                          ? false
                                          : true)
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await FavouritesRecord.createDoc(
                                                        currentUserReference!)
                                                    .set({
                                                  ...createFavouritesRecordData(
                                                    email:
                                                        widget.solver?.email,
                                                    displayName: widget
                                                        .solver?.displayName,
                                                    photoUrl: widget
                                                        .solver?.photoUrl,
                                                    uid: widget.solver?.uid,
                                                    createdTime:
                                                        getCurrentTimestamp,
                                                    phoneNumber: widget
                                                        .solver?.phoneNumber,
                                                    bio: widget.solver?.bio,
                                                    username: widget
                                                        .solver?.username,
                                                    points:
                                                        widget.solver?.points,
                                                    resume:
                                                        widget.solver?.resume,
                                                    user: currentUserReference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'Category2': widget
                                                          .solver?.category2,
                                                    },
                                                  ),
                                                });
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x91000000),
                                                      offset: Offset(
                                                        0.0,
                                                        2.0,
                                                      ),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: const Color(0x000043CE),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Add to favourites',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .star_outline_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 40.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child:
                                              StreamBuilder<List<ChatsRecord>>(
                                            stream: queryChatsRecord(
                                              queryBuilder: (chatsRecord) =>
                                                  chatsRecord.where(
                                                'userIds',
                                                arrayContains:
                                                    widget.solver?.reference,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ChatsRecord>
                                                  containerChatsRecordList =
                                                  snapshot.data!;

                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'chatPage_org',
                                                    queryParameters: {
                                                      'recieveChat':
                                                          serializeParam(
                                                        containerChatsRecordList
                                                            .first.reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                      'user': serializeParam(
                                                        widget.solver,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'user': widget.solver,
                                                    },
                                                  );
                                                                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x91000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: const Color(0x000043CE),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Start Chatting',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                      Icon(
                                                        Icons.chat_outlined,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 30.0,
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 5.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ].addToStart(const SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ].addToStart(const SizedBox(height: 10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
