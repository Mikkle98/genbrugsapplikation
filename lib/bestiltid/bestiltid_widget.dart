import '/backend/backend.dart';
import '/bestiltidtid/bestiltidtid_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home_page_v2/home_page_v2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bestiltid_model.dart';
export 'bestiltid_model.dart';

class BestiltidWidget extends StatefulWidget {
  const BestiltidWidget({Key? key}) : super(key: key);

  @override
  _BestiltidWidgetState createState() => _BestiltidWidgetState();
}

class _BestiltidWidgetState extends State<BestiltidWidget> {
  late BestiltidModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BestiltidModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF004030),
        appBar: AppBar(
          backgroundColor: Color(0xFF004030),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.clear,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  duration: Duration(milliseconds: 350),
                  reverseDuration: Duration(milliseconds: 350),
                  child: HomePageV2Widget(),
                ),
              );
            },
          ),
          title: StreamBuilder<List<GenbrugspladsRecord>>(
            stream: queryGenbrugspladsRecord(
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: Color(0xFF7A9E9F),
                    ),
                  ),
                );
              }
              List<GenbrugspladsRecord> textGenbrugspladsRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final textGenbrugspladsRecord =
                  textGenbrugspladsRecordList.isNotEmpty
                      ? textGenbrugspladsRecordList.first
                      : null;
              return Text(
                valueOrDefault<String>(
                  FFAppState().Genbrugsplads,
                  'Dato',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
              );
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Vælg dag',
                      style: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 20.0),
                    child: FlutterFlowCalendar(
                      color: FlutterFlowTheme.of(context).black600,
                      iconColor: Color(0xFF004030),
                      weekFormat: false,
                      weekStartsMonday: true,
                      initialDate: getCurrentTimestamp,
                      rowHeight: 70.0,
                      onChange: (DateTimeRange? newSelectedDate) async {
                        _model.calendarSelectedDay = newSelectedDate;
                        setState(() {
                          FFAppState().SelectDate =
                              _model.calendarSelectedDay?.start;
                        });
                        setState(() {});
                      },
                      titleStyle: FlutterFlowTheme.of(context)
                          .displaySmall
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 30.0,
                          ),
                      dayOfWeekStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 15.0,
                          ),
                      dateStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 20.0,
                          ),
                      selectedDateStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 22.0,
                              ),
                      inactiveDateStyle:
                          FlutterFlowTheme.of(context).bodySmall.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).grayIcon,
                                fontSize: 20.0,
                              ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 220.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xFF004030),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: FlutterFlowTheme.of(context).black600,
                      offset: Offset(5.0, 5.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  dateTimeFormat('MMMMEEEEd', FFAppState().SelectDate),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BestiltidtidWidget(),
                      ),
                    );
                  },
                  text: 'Bekræft dato',
                  icon: Icon(
                    Icons.check,
                    size: 25.0,
                  ),
                  options: FFButtonOptions(
                    width: 340.0,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF008000),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
