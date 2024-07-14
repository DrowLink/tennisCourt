import '/backend/schema/structs/index.dart';
import '/tennis_court/tennis_court_theme.dart';
import '/tennis_court/tennis_court_util.dart';
import '/tennis_court/tennis_court_widgets.dart';
import 'favoritos_widget.dart' show FavoritosWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoritosModel extends tenniscourtModel<FavoritosWidget> {
  ///  Local state fields for this page.

  DateTime? fechaAgendar;

  DateTime? horaInicio;

  DateTime? horaFin;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
