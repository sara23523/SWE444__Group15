import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'challengedocument_model.dart';
export 'challengedocument_model.dart';

class ChallengedocumentWidget extends StatefulWidget {
  const ChallengedocumentWidget({super.key});

  @override
  State<ChallengedocumentWidget> createState() =>
      _ChallengedocumentWidgetState();
}

class _ChallengedocumentWidgetState extends State<ChallengedocumentWidget> {
  late ChallengedocumentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChallengedocumentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
