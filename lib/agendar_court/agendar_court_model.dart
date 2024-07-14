import '/backend/schema/structs/index.dart';
import '/tennis_court/tennis_court_drop_down.dart';
import '/tennis_court/tennis_court_icon_button.dart';
import '/tennis_court/tennis_court_theme.dart';
import '/tennis_court/tennis_court_toggle_icon.dart';
import '/tennis_court/tennis_court_util.dart';
import '/tennis_court/tennis_court_widgets.dart';
import '/tennis_court/form_field_controller.dart';
import '/tennis_court/random_data_util.dart' as random_data;
import 'agendar_court_widget.dart' show AgendarCourtWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgendarCourtModel extends tenniscourtModel<AgendarCourtWidget> {
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
