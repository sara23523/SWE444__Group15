import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'required_field_message_model.dart';
export 'required_field_message_model.dart';

class RequiredFieldMessageWidget extends StatefulWidget {
  const RequiredFieldMessageWidget({super.key});

  @override
  State<RequiredFieldMessageWidget> createState() =>
      _RequiredFieldMessageWidgetState();
}

class _RequiredFieldMessageWidgetState
    extends State<RequiredFieldMessageWidget> {
  late RequiredFieldMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequiredFieldMessageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        Navigator.pop(context);
      },
      child: Container(
        width: 340.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color(0x4CFF5963),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).error,
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Text(
            'Please fill in all required fields to proceed.',
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Inter Tight',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ),
    );
  }
}
