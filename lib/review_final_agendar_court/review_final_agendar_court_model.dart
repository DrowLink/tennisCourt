import '/backend/schema/structs/index.dart';
import '/components/cancha_reservada_dialog_widget.dart';
import '/tennis_court/tennis_court_icon_button.dart';
import '/tennis_court/tennis_court_theme.dart';
import '/tennis_court/tennis_court_toggle_icon.dart';
import '/tennis_court/tennis_court_util.dart';
import '/tennis_court/tennis_court_widgets.dart';
import '/tennis_court/custom_functions.dart' as functions;
import '/tennis_court/random_data_util.dart' as random_data;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'review_final_agendar_court_widget.dart'
    show ReviewFinalAgendarCourtWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewFinalAgendarCourtModel
    extends tenniscourtModel<ReviewFinalAgendarCourtWidget> {
  ///  Local state fields for this page.

  DateTime? fechaAgendar;

  DateTime? horaInicio;

  DateTime? horaFin;

  bool toggle = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
