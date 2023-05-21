import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home_page_v2/home_page_v2_widget.dart';
import '/reward_page/reward_page_widget.dart';
import '/search_page/search_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'ruteplanlaegger_model.dart';
export 'ruteplanlaegger_model.dart';

class RuteplanlaeggerWidget extends StatefulWidget {
  const RuteplanlaeggerWidget({
    Key? key,
    this.rute,
  }) : super(key: key);

  final DocumentReference? rute;

  @override
  _RuteplanlaeggerWidgetState createState() => _RuteplanlaeggerWidgetState();
}

class _RuteplanlaeggerWidgetState extends State<RuteplanlaeggerWidget> {
  late RuteplanlaeggerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RuteplanlaeggerModel());
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

    return StreamBuilder<List<GenbrugsAffaldRecord>>(
      stream: queryGenbrugsAffaldRecord(
        queryBuilder: (genbrugsAffaldRecord) =>
            genbrugsAffaldRecord.orderBy('GenbrugsAffald_Nummer'),
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
        List<GenbrugsAffaldRecord> ruteplanlaeggerGenbrugsAffaldRecordList =
        snapshot.data!;
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
                      child: SearchPageWidget(),
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
                    valueOrDefault<String>(
                      FFAppState().Genbrugsplads,
                      'Rute',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
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
            body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                    child: Container(
                      width: 800,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Valgt affald',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 0),
                                  child: StreamBuilder<List<ValgtAffaldRecord>>(
                                    stream: queryValgtAffaldRecord(
                                      queryBuilder: (valgtAffaldRecord) =>
                                          valgtAffaldRecord.orderBy(
                                              'GenbrugsAffald_Fraktion'),
                                      limit: 7,
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
                                      List<ValgtAffaldRecord>
                                      listViewValgtAffaldRecordList =
                                      snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewValgtAffaldRecordList
                                            .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewValgtAffaldRecord =
                                          listViewValgtAffaldRecordList[
                                          listViewIndex];
                                          return Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Container(
                                                    width: 300,
                                                    height: 165,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          5),
                                                      child: Image.network(
                                                        listViewValgtAffaldRecord
                                                            .billede!,
                                                        width: 90,
                                                        height: 110,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Valgt affald: ',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Nunito',
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      listViewValgtAffaldRecord
                                                          .genbrugspladsAffaldNavn!,
                                                      textAlign:
                                                      TextAlign.start,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Nunito',
                                                        fontSize: 22,
                                                        fontWeight:
                                                        FontWeight.w600,
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                      Colors.transparent,
                                                      borderRadius: 30,
                                                      borderWidth: 1,
                                                      buttonSize: 60,
                                                      icon: Icon(
                                                        Icons.delete_outline,
                                                        color:
                                                        Color(0xFFFF0000),
                                                        size: 30,
                                                      ),
                                                      onPressed: () async {
                                                        await listViewValgtAffaldRecord
                                                            .reference
                                                            .delete();
                                                        ScaffoldMessenger.of(
                                                            context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Affald fjernet fra rute',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .primaryBtnText,
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                1500),
                                                            backgroundColor:
                                                            Color(
                                                                0xFF083B04),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Tilhørende container: ',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Nunito',
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      listViewValgtAffaldRecord
                                                          .genbrugsAffaldContainer!,
                                                      textAlign:
                                                      TextAlign.start,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Nunito',
                                                        fontSize: 22,
                                                        fontWeight:
                                                        FontWeight
                                                            .normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RewardPageWidget(),
                          ),
                        );
                      },
                      text: 'Rute færdiggjort',
                      icon: Icon(
                        Icons.done_rounded,
                        size: 25,
                      ),
                      options: FFButtonOptions(
                        width: 340,
                        height: 70,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFF008000),
                        textStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
