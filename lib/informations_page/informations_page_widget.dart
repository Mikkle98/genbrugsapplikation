import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_page_v2/home_page_v2_widget.dart';
import '/search_page/search_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'informations_page_model.dart';
export 'informations_page_model.dart';

class InformationsPageWidget extends StatefulWidget {
  const InformationsPageWidget({
    Key? key,
    this.informationsdetails,
  }) : super(key: key);

  final DocumentReference? informationsdetails;

  @override
  _InformationsPageWidgetState createState() => _InformationsPageWidgetState();
}

class _InformationsPageWidgetState extends State<InformationsPageWidget> {
  late InformationsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformationsPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<GenbrugsAffaldRecord>(
      stream: GenbrugsAffaldRecord.getDocument(widget.informationsdetails!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: Color(0xFF7A9E9F),
              ),
            ),
          );
        }
        final informationsPageGenbrugsAffaldRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFF004030),
          appBar: AppBar(
            backgroundColor: Color(0xFF004030),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 350),
                    reverseDuration: Duration(milliseconds: 350),
                    child: SearchPageWidget(),
                  ),
                );
              },
            ),
            title: Text(
              'Information',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Nunito',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 25,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.home,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    size: 30,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageV2Widget(),
                      ),
                    );
                  },
                ),
              ),
            ],
            centerTitle: true,
            elevation: 2,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                                child:
                                StreamBuilder<List<GenbrugsAffaldRecord>>(
                                  stream: queryGenbrugsAffaldRecord(
                                    singleRecord: true,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: Color(0xFF7A9E9F),
                                          ),
                                        ),
                                      );
                                    }
                                    List<GenbrugsAffaldRecord>
                                    imageGenbrugsAffaldRecordList =
                                    snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final imageGenbrugsAffaldRecord =
                                    imageGenbrugsAffaldRecordList.isNotEmpty
                                        ? imageGenbrugsAffaldRecordList
                                        .first
                                        : null;
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        informationsPageGenbrugsAffaldRecord
                                            .genbrugsAffaldFraktionBillede!,
                                        width: double.infinity,
                                        height: 240,
                                        fit: BoxFit.contain,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(25, 10, 12, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 360,
                                  height: 460,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 0, 4),
                                                child: Text(
                                                  'Information om affald',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .titleMedium
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .black600,
                                                    fontSize: 22,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 20, 20, 20),
                                                child: Text(
                                                  informationsPageGenbrugsAffaldRecord
                                                      .genbrugsAffaldNavn!,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .black600,
                                                    fontSize: 22,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 30, 0, 0),
                                                  child: Text(
                                                    'Placering på pladsen',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .titleMedium
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .black600,
                                                      fontSize: 22,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Icon(
                                                  Icons.access_time,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 20, 20, 20),
                                                child: StreamBuilder<
                                                    List<GenbrugspladsRecord>>(
                                                  stream:
                                                  queryGenbrugspladsRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                          CircularProgressIndicator(
                                                            color: Color(
                                                                0xFF7A9E9F),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<GenbrugspladsRecord>
                                                    textTimeGenbrugspladsRecordList =
                                                    snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final textTimeGenbrugspladsRecord =
                                                    textTimeGenbrugspladsRecordList
                                                        .isNotEmpty
                                                        ? textTimeGenbrugspladsRecordList
                                                        .first
                                                        : null;
                                                    return Text(
                                                      informationsPageGenbrugsAffaldRecord
                                                          .genbrugsAffaldFraktion!,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Nunito',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .black600,
                                                        fontSize: 22,
                                                        fontWeight:
                                                        FontWeight
                                                            .normal,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Icon(
                                                  Icons.location_pin,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 20, 20, 20),
                                                child: Text(
                                                  informationsPageGenbrugsAffaldRecord
                                                      .genbrugsAffaldContainer!,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .black600,
                                                    fontSize: 22,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 30, 0, 4),
                                                      child: Text(
                                                        'Tommelfingerregel',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .titleMedium
                                                            .override(
                                                          fontFamily:
                                                          'Nunito',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .black600,
                                                          fontSize: 22,
                                                          fontWeight:
                                                          FontWeight
                                                              .bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        10, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.info_outlined,
                                                      color: Colors.black,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Text(
                                                  informationsPageGenbrugsAffaldRecord
                                                      .genbrugsAffaldBeskrivelse!,
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Nunito',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .black600,
                                                    fontSize: 22,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
