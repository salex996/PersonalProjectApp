import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/counterwidget/counterwidget_widget.dart';
import 'confirmarpedido_widget.dart' show ConfirmarpedidoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmarpedidoModel extends FlutterFlowModel<ConfirmarpedidoWidget> {
  ///  Local state fields for this page.

  List<CartaBarStruct> localcartadescargada = [];
  void addToLocalcartadescargada(CartaBarStruct item) =>
      localcartadescargada.add(item);
  void removeFromLocalcartadescargada(CartaBarStruct item) =>
      localcartadescargada.remove(item);
  void removeAtIndexFromLocalcartadescargada(int index) =>
      localcartadescargada.removeAt(index);
  void insertAtIndexInLocalcartadescargada(int index, CartaBarStruct item) =>
      localcartadescargada.insert(index, item);
  void updateLocalcartadescargadaAtIndex(
          int index, Function(CartaBarStruct) updateFn) =>
      localcartadescargada[index] = updateFn(localcartadescargada[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
