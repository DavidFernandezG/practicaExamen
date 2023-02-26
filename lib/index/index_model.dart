import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/bts_editar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndexModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCategoria widget.
  TextEditingController? txtCategoriaController;
  String? Function(BuildContext, String?)? txtCategoriaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtCategoriaController?.dispose();
  }

  /// Additional helper methods are added here.

}
