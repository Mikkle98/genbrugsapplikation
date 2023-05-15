import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_page_v2/home_page_v2_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'om_pladsen_model.dart';
export 'om_pladsen_model.dart';

class OmPladsenWidget extends StatefulWidget {
  const OmPladsenWidget({Key? key}) : super(key: key);

  @override
  _OmPladsenWidgetState createState() => _OmPladsenWidgetState();
}

class _OmPladsenWidgetState extends State<OmPladsenWidget> {
  late OmPladsenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OmPladsenModel());
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
                    width: 50,
                    height: 50,
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
                textGenbrugspladsRecord!.genbrugspladsNavn!,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                  child: Container(
                    width: 1000,
                    height: 600,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.black,
                              size: 24,
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 5, 20),
                              child: StreamBuilder<List<GenbrugspladsRecord>>(
                                stream: queryGenbrugspladsRecord(
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
                                  List<GenbrugspladsRecord>
                                  textGenbrugspladsRecordList =
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
                                    'Åbningstider: ',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                },
                              ),
                            ),
                            StreamBuilder<List<GenbrugspladsRecord>>(
                              stream: queryGenbrugspladsRecord(
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
                                List<GenbrugspladsRecord>
                                textGenbrugspladsRecordList =
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
                                  textGenbrugspladsRecord!
                                      .genbrugspladsAabningstider!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .black600,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.addressBook,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 20, 5, 20),
                                  child: Text(
                                    'Adresse:',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                StreamBuilder<List<GenbrugspladsRecord>>(
                                  stream: queryGenbrugspladsRecord(
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
                                    List<GenbrugspladsRecord>
                                    textGenbrugspladsRecordList =
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
                                      textGenbrugspladsRecord!
                                          .genbrugspladsLokation!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.addressBook,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 5, 20),
                                      child: Text(
                                        'Kontakt os:',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    StreamBuilder<List<GenbrugspladsRecord>>(
                                      stream: queryGenbrugspladsRecord(
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
                                        List<GenbrugspladsRecord>
                                        textGenbrugspladsRecordList =
                                        snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final textGenbrugspladsRecord =
                                        textGenbrugspladsRecordList
                                            .isNotEmpty
                                            ? textGenbrugspladsRecordList
                                            .first
                                            : null;
                                        return Text(
                                          textGenbrugspladsRecord!
                                              .genbrugspladsKontakt!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Nunito',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .black600,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 20, 5, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 20, 0),
                                            child: Icon(
                                              Icons.info_outline,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                          Text(
                                            'Inden dit besøg:',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Expanded(
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
                                                          color:
                                                          Color(0xFF7A9E9F),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<GenbrugspladsRecord>
                                                  textGenbrugspladsRecordList =
                                                  snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final textGenbrugspladsRecord =
                                                  textGenbrugspladsRecordList
                                                      .isNotEmpty
                                                      ? textGenbrugspladsRecordList
                                                      .first
                                                      : null;
                                                  return Text(
                                                    textGenbrugspladsRecord!
                                                        .genbrugsPladsIndenbesoeg!,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Nunito',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .black600,
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.normal,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
