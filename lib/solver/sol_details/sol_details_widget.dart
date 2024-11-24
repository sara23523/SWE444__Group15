import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/solver/pdf_component/pdf_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'sol_details_model.dart';
export 'sol_details_model.dart';

class SolDetailsWidget extends StatefulWidget {
  const SolDetailsWidget({
    super.key,
    required this.chalRef,
    required this.reply,
  });

  final DocumentReference? chalRef;
  final RepliesRecord? reply;

  @override
  State<SolDetailsWidget> createState() => _SolDetailsWidgetState();
}

class _SolDetailsWidgetState extends State<SolDetailsWidget> {
  late SolDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolDetailsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ChallengesRecord>(
      stream: ChallengesRecord.getDocument(widget.chalRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
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

        final solDetailsChallengesRecord = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
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
                context.pop();
              },
            ),
            title: Text(
              'Solution detail',
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
          body: StreamBuilder<ChallengesRecord>(
            stream: ChallengesRecord.getDocument(widget.chalRef!),
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

              final columnChallengesRecord = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 12.0),
                            child: Text(
                              'Challenge details',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 1.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                solDetailsChallengesRecord.title,
                                't d',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 20.0, 4.0),
                            child: Text(
                              valueOrDefault<String>(
                                solDetailsChallengesRecord.description,
                                'default des',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 20.0, 4.0),
                            child: Text(
                              valueOrDefault<String>(
                                solDetailsChallengesRecord.rewardAmount
                                    .toString(),
                                'default des',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          if (_model.isPaid == true)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 20.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (_model.isPaid == true) {
                                    triggerPushNotification(
                                      notificationTitle:
                                          'a solution  got paid!',
                                      notificationText: 'check it out!',
                                      userRefs: [currentUserReference!],
                                      initialPageName: 'Sol_details',
                                      parameterData: {
                                        'chalRef': widget.chalRef,
                                        'reply': widget.reply,
                                      },
                                    );
                                  } else {
                                    return;
                                  }
                                },
                                child: Text(
                                  'you\'ve got rewarded!',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0xFF41940D),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          Divider(
                            height: 24.0,
                            thickness: 2.0,
                            indent: 20.0,
                            endIndent: 20.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 12.0),
                            child: Text(
                              'Solution details',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 8.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x2F1D2429),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                AuthUserStreamWidget(
                                                  builder: (context) => Text(
                                                    '${valueOrDefault(currentUserDocument?.username, '')} Reply',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF0043CE),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              dateTimeFormat("MMMd, h:mm a",
                                                  widget.reply!.createdTime!),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 24.0,
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.userRole,
                                                    0) ==
                                                1)
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    StreamBuilder<
                                                        List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    queryBuilder:
                                                        (usersRecord) =>
                                                            usersRecord.where(
                                                      'uid',
                                                      isEqualTo:
                                                          widget.reply?.uid,
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
                                                    List<UsersRecord>
                                                        circleImageUsersRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final circleImageUsersRecord =
                                                        circleImageUsersRecordList
                                                                .isNotEmpty
                                                            ? circleImageUsersRecordList
                                                                .first
                                                            : null;

                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'SolverProfilePageCopy',
                                                          queryParameters: {
                                                            'solver':
                                                                serializeParam(
                                                              circleImageUsersRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                            'ref':
                                                                serializeParam(
                                                              circleImageUsersRecord
                                                                  .reference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'solver':
                                                                circleImageUsersRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          circleImageUsersRecord!
                                                              .photoUrl,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.reply?.title,
                                                      'Soltitle',
                                                    ).maybeHandleOverflow(
                                                      maxChars: 10,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        widget
                                                            .reply?.description,
                                                        'Soldescription',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (widget.reply?.file != null &&
                                  widget.reply?.file != '')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x2F1D2429),
                                          offset: Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Description file',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF0043CE),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                      "yMMMd",
                                                      widget
                                                          .reply?.createdTime),
                                                  '-',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 24.0,
                                            thickness: 2.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: PdfComponentWidget(
                                                        fileURL:
                                                            widget.reply!.file,
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              text: 'View pdf',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFF0043CE),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
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
                                ),
                            ],
                          ),
                          if ((widget.reply?.isEvaluated == false) &&
                              (_model.isEvaluated == false) &&
                              (valueOrDefault(
                                      currentUserDocument?.userRole, 0) ==
                                  1))
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 12.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Evaluate solution ',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x2F1D2429),
                                    offset: Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Visibility(
                                visible: (widget.reply?.isEvaluated ==
                                        false) &&
                                    (_model.isEvaluated == false) &&
                                    (valueOrDefault(
                                            currentUserDocument?.userRole, 0) ==
                                        1),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 14.0, 0.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                _model.userIdSolver200 =
                                                    await queryRepliesRecordOnce(
                                                  queryBuilder:
                                                      (repliesRecord) =>
                                                          repliesRecord.where(
                                                    'uid',
                                                    isEqualTo:
                                                        widget.reply?.uid,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);

                                                await widget.reply!.reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'points':
                                                          FieldValue.increment(
                                                              20),
                                                    },
                                                  ),
                                                });
                                                _model.solverId200 =
                                                    await queryUsersRecordOnce(
                                                  queryBuilder: (usersRecord) =>
                                                      usersRecord.where(
                                                    'uid',
                                                    isEqualTo:
                                                        widget.reply?.uid,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);

                                                await _model
                                                    .solverId200!.reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'points':
                                                          FieldValue.increment(
                                                              20),
                                                    },
                                                  ),
                                                });
                                                _model.isEvaluated = true;
                                                safeSetState(() {});

                                                await widget.reply!.reference
                                                    .update(
                                                        createRepliesRecordData(
                                                  isEvaluated: true,
                                                ));

                                                safeSetState(() {});
                                              },
                                              text: '20',
                                              icon: Icon(
                                                Icons.stars_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 25.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconAlignment:
                                                    IconAlignment.end,
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                _model.userIdSolver10 =
                                                    await queryRepliesRecordOnce(
                                                  queryBuilder:
                                                      (repliesRecord) =>
                                                          repliesRecord.where(
                                                    'uid',
                                                    isEqualTo:
                                                        widget.reply?.uid,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);

                                                await widget.reply!.reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'points':
                                                          FieldValue.increment(
                                                              10),
                                                    },
                                                  ),
                                                });
                                                _model.solverId10 =
                                                    await queryUsersRecordOnce(
                                                  queryBuilder: (usersRecord) =>
                                                      usersRecord.where(
                                                    'uid',
                                                    isEqualTo:
                                                        widget.reply?.uid,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);

                                                await _model
                                                    .solverId10!.reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'points':
                                                          FieldValue.increment(
                                                              10),
                                                    },
                                                  ),
                                                });
                                                _model.isEvaluated = true;
                                                safeSetState(() {});

                                                await widget.reply!.reference
                                                    .update(
                                                        createRepliesRecordData(
                                                  isEvaluated: true,
                                                ));

                                                safeSetState(() {});
                                              },
                                              text: '10',
                                              icon: const Icon(
                                                Icons.stars_sharp,
                                                size: 25.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconAlignment:
                                                    IconAlignment.end,
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                _model.userIdSolver5 =
                                                    await queryRepliesRecordOnce(
                                                  queryBuilder:
                                                      (repliesRecord) =>
                                                          repliesRecord.where(
                                                    'uid',
                                                    isEqualTo:
                                                        widget.reply?.uid,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);

                                                await widget.reply!.reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'points':
                                                          FieldValue.increment(
                                                              5),
                                                    },
                                                  ),
                                                });
                                                _model.solverId5 =
                                                    await queryUsersRecordOnce(
                                                  queryBuilder: (usersRecord) =>
                                                      usersRecord.where(
                                                    'uid',
                                                    isEqualTo:
                                                        widget.reply?.uid,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);

                                                await _model
                                                    .solverId5!.reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'points':
                                                          FieldValue.increment(
                                                              5),
                                                    },
                                                  ),
                                                });
                                                _model.isEvaluated = true;
                                                safeSetState(() {});

                                                await widget.reply!.reference
                                                    .update(
                                                        createRepliesRecordData(
                                                  isEvaluated: true,
                                                ));

                                                safeSetState(() {});
                                              },
                                              text: '5',
                                              icon: const Icon(
                                                Icons.stars_sharp,
                                                size: 25.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconAlignment:
                                                    IconAlignment.end,
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x2F1D2429),
                                    offset: Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.userRole, 0) ==
                              1)
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 12.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    'Reward Solution',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          if (valueOrDefault(
                                  currentUserDocument?.userRole, 0) ==
                              1)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 8.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x2F1D2429),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 324.0,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Text(
                                                'Select the \'Pay\'  to proceed with payment via PayPal or credit card.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 24.0,
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<UsersRecord>>(
                                              stream: queryUsersRecord(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord.where(
                                                  'uid',
                                                  isEqualTo: widget.reply?.uid,
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
                                                List<UsersRecord>
                                                    buttonUsersRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final buttonUsersRecord =
                                                    buttonUsersRecordList
                                                            .isNotEmpty
                                                        ? buttonUsersRecordList
                                                            .first
                                                        : null;

                                                return FFButtonWidget(
                                                  onPressed: () async {
                                                    var shouldSetState = false;
                                                    final paymentResponse =
                                                        await processStripePayment(
                                                      context,
                                                      amount:
                                                          columnChallengesRecord
                                                              .rewardAmount
                                                              .round(),
                                                      currency: 'SAR',
                                                      customerEmail:
                                                          currentUserEmail,
                                                      allowGooglePay: false,
                                                      allowApplePay: false,
                                                    );
                                                    if (paymentResponse
                                                                .paymentId ==
                                                            null &&
                                                        paymentResponse
                                                                .errorMessage !=
                                                            null) {
                                                      showSnackbar(
                                                        context,
                                                        'Error: ${paymentResponse.errorMessage}',
                                                      );
                                                    }
                                                    _model.paymentId =
                                                        paymentResponse
                                                                .paymentId ??
                                                            '';

                                                    shouldSetState = true;
                                                    _model.isPaid = true;
                                                    safeSetState(() {});

                                                    await TransactionsRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createTransactionsRecordData(
                                                          amount:
                                                              columnChallengesRecord
                                                                  .rewardAmount,
                                                          currency: 'SAR',
                                                          date:
                                                              getCurrentTimestamp,
                                                          id: random_data
                                                              .randomString(
                                                            10,
                                                            15,
                                                            true,
                                                            true,
                                                            true,
                                                          ),
                                                          solverID:
                                                              buttonUsersRecord
                                                                  ?.reference,
                                                          organizationID:
                                                              currentUserReference,
                                                        ));

                                                    context.pushNamed(
                                                        'SuccessPayment');

                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          'Exciting news! ',
                                                      notificationText:
                                                          'you just got paid by${valueOrDefault(currentUserDocument?.username, '')}  !',
                                                      userRefs: [
                                                        buttonUsersRecord!
                                                            .reference
                                                      ],
                                                      initialPageName:
                                                          'solverTransactionsSummary',
                                                      parameterData: {},
                                                    );
                                                    _model.apiPayment =
                                                        await UnlockApiFlowAPIGroup
                                                            .oneTimePaymentMobileCall
                                                            .call(
                                                      amount:
                                                          columnChallengesRecord
                                                              .rewardAmount
                                                              .toString(),
                                                      currency: 'SAR',
                                                      email:
                                                          columnChallengesRecord
                                                              .email,
                                                    );

                                                    shouldSetState = true;
                                                    if ((_model.apiPayment
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.paymentStatus =
                                                          await actions
                                                              .initPayment(
                                                        PaymentIntentStruct
                                                                .maybeFromMap((_model
                                                                        .apiPayment
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .clientSecret,
                                                      );
                                                      shouldSetState = true;
                                                      if (_model
                                                              .paymentStatus ==
                                                          true) {
                                                        _model.isPaid = true;
                                                        safeSetState(() {});

                                                        await TransactionsRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createTransactionsRecordData(
                                                              amount: columnChallengesRecord
                                                                  .rewardAmount,
                                                              currency: 'SAR',
                                                              date:
                                                                  getCurrentTimestamp,
                                                              id: random_data
                                                                  .randomString(
                                                                10,
                                                                15,
                                                                true,
                                                                true,
                                                                true,
                                                              ),
                                                            ));

                                                        context.pushNamed(
                                                            'SuccessPayment');
                                                      } else {
                                                        if (shouldSetState) {
                                                          safeSetState(() {});
                                                        }
                                                        return;
                                                      }
                                                    } else {
                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                      return;
                                                    }

                                                    if (shouldSetState) {
                                                      safeSetState(() {});
                                                    }
                                                  },
                                                  text: 'Pay ',
                                                  options: FFButtonOptions(
                                                    width: 100.0,
                                                    height: 50.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    elevation: 2.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
