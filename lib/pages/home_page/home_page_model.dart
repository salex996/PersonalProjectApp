import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool barescaneando = true;

  bool isBluetoothEnable = false;

  List<String> nameMesas = [];
  void addToNameMesas(String item) => nameMesas.add(item);
  void removeFromNameMesas(String item) => nameMesas.remove(item);
  void removeAtIndexFromNameMesas(int index) => nameMesas.removeAt(index);
  void insertAtIndexInNameMesas(int index, String item) =>
      nameMesas.insert(index, item);
  void updateNameMesasAtIndex(int index, Function(String) updateFn) =>
      nameMesas[index] = updateFn(nameMesas[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - isBluetoothEnabled] action in HomePage widget.
  bool? bluetoothEnabled;
  // Stores action output result for [Custom Action - findDevices] action in Button widget.
  List ? bLEList;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
