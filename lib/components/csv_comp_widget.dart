import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'csv_comp_model.dart';
export 'csv_comp_model.dart';

class CsvCompWidget extends StatefulWidget {
  const CsvCompWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    required this.csvJson,
  });

  final List<String>? parameter1;
  final List<int>? parameter2;
  final dynamic csvJson;

  @override
  State<CsvCompWidget> createState() => _CsvCompWidgetState();
}

class _CsvCompWidgetState extends State<CsvCompWidget> {
  late CsvCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CsvCompModel());

    _model.switchValue = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            FFLocalizations.of(context).getText(
              'pvufwpxh' /* 1 */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
        Expanded(
          child: Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  getJsonField(
                    widget!.csvJson,
                    r'''$.nome''',
                  )?.toString(),
                  '-',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ),
        ),
        Container(
          width: 90.0,
          height: 30.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ),
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: Switch.adaptive(
              value: _model.switchValue!,
              onChanged: (newValue) async {
                safeSetState(() => _model.switchValue = newValue!);
              },
              activeColor: FlutterFlowTheme.of(context).primary,
              activeTrackColor: FlutterFlowTheme.of(context).primary,
              inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
              inactiveThumbColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: FlutterFlowDropDown<int>(
              controller: _model.dropDownValueController1 ??=
                  FormFieldController<int>(null),
              options: List<int>.from(widget!.parameter2!),
              optionLabels: widget!.parameter1!,
              onChanged: (val) =>
                  safeSetState(() => _model.dropDownValue1 = val),
              width: double.infinity,
              height: 40.0,
              maxHeight: 200.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.lexend(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: _model.switchValue!
                        ? FlutterFlowTheme.of(context).primaryText
                        : FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
              hintText: FFLocalizations.of(context).getText(
                'tuiyc58c' /* Selecionar comparação */,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: _model.switchValue!
                  ? FlutterFlowTheme.of(context).status03
                  : FlutterFlowTheme.of(context).alternate,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 0.0,
              margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              disabled: !_model.switchValue!,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  getJsonField(
                    widget!.csvJson,
                    r'''$.responsavel''',
                  )?.toString(),
                  '-',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.lexend(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController2 ??=
                  FormFieldController<String>(null),
              options: [
                FFLocalizations.of(context).getText(
                  'etcpoliz' /* Renan Cesar dos Santos */,
                ),
                FFLocalizations.of(context).getText(
                  'ey957ugi' /* Samantha maia */,
                ),
                FFLocalizations.of(context).getText(
                  'wl52zlyq' /* Vitor */,
                )
              ],
              onChanged: (val) =>
                  safeSetState(() => _model.dropDownValue2 = val),
              width: double.infinity,
              height: 40.0,
              maxHeight: 200.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.lexend(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
              hintText: FFLocalizations.of(context).getText(
                '5npjwoqk' /* Selecionar comparação */,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).status03,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 0.0,
              margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
        ),
      ],
    );
  }
}
