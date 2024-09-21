import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'bottom_navigation_component_model.dart';
export 'bottom_navigation_component_model.dart';

class BottomNavigationComponentWidget extends StatefulWidget {
  const BottomNavigationComponentWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<BottomNavigationComponentWidget> createState() =>
      _BottomNavigationComponentWidgetState();
}

class _BottomNavigationComponentWidgetState
    extends State<BottomNavigationComponentWidget>
    with TickerProviderStateMixin {
  late BottomNavigationComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavigationComponentModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
        child: Container(
          width: 360.0,
          height: 70.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF203B60), Color(0xFF0E243F)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(1.0, -1.0),
              end: AlignmentDirectional(-1.0, 1.0),
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                    child: FlutterFlowIconButton(
                      borderRadius: 30.0,
                      borderWidth: 0.0,
                      buttonSize: 50.0,
                      fillColor: const Color(0x004B39EF),
                      icon: Icon(
                        Icons.cottage_outlined,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'Homepage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                  if (widget.selectedPageIndex == 1)
                    const SizedBox(
                      width: 30.0,
                      child: Divider(
                        height: 2.0,
                        thickness: 2.0,
                        color: Color(0xFF7EC1E5),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['dividerOnPageLoadAnimation1']!),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 0.0,
                      buttonSize: 50.0,
                      fillColor: const Color(0x004B39EF),
                      icon: Icon(
                        Icons.lock_outline_sharp,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.goNamed(
                          'ViewChallenges',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                  if (widget.selectedPageIndex == 2)
                    const SizedBox(
                      width: 30.0,
                      child: Divider(
                        height: 2.0,
                        thickness: 2.0,
                        color: Color(0xFF7EC1E5),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['dividerOnPageLoadAnimation2']!),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 0.0,
                      buttonSize: 50.0,
                      fillColor: const Color(0x004B39EF),
                      icon: Icon(
                        Icons.key,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'viewSolutions',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                  if (widget.selectedPageIndex == 3)
                    const SizedBox(
                      width: 30.0,
                      child: Divider(
                        height: 2.0,
                        thickness: 2.0,
                        color: Color(0xFF7EC1E5),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['dividerOnPageLoadAnimation3']!),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 0.0,
                      buttonSize: 50.0,
                      fillColor: const Color(0x004B39EF),
                      icon: Icon(
                        Icons.person_outline,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'Solver_Profile',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                  if (widget.selectedPageIndex == 4)
                    const SizedBox(
                      width: 30.0,
                      child: Divider(
                        height: 2.0,
                        thickness: 2.0,
                        color: Color(0xFF7EC1E5),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['dividerOnPageLoadAnimation4']!),
                ],
              ),
            ]
                .divide(const SizedBox(width: 16.0))
                .addToStart(const SizedBox(width: 16.0))
                .addToEnd(const SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
