import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'counterwidget_model.dart';
export 'counterwidget_model.dart';

class CounterwidgetWidget extends StatefulWidget {
  const CounterwidgetWidget({Key? key}) : super(key: key);

  @override
  _CounterwidgetWidgetState createState() => _CounterwidgetWidgetState();
}

class _CounterwidgetWidgetState extends State<CounterwidgetWidget> {
  late CounterwidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CounterwidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(1.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Container(
                width: 80.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                ),
                child: FlutterFlowCountController(
                  decrementIconBuilder: (enabled) => FaIcon(
                    FontAwesomeIcons.minus,
                    color: enabled
                        ? FlutterFlowTheme.of(context).secondaryText
                        : FlutterFlowTheme.of(context).alternate,
                    size: 15.0,
                  ),
                  incrementIconBuilder: (enabled) => FaIcon(
                    FontAwesomeIcons.plus,
                    color: enabled
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    size: 15.0,
                  ),
                  countBuilder: (count) => Text(
                    count.toString(),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Sora',
                          fontSize: 15.0,
                        ),
                  ),
                  count: _model.countControllerValue ??= 0,
                  updateCount: (count) =>
                      setState(() => _model.countControllerValue = count),
                  stepSize: 1,
                  contentPadding: EdgeInsets.all(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
