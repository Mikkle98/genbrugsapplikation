import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/dineruter/dineruter_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/informations_page/informations_page_widget.dart';
import '/ruteplanlaegger/ruteplanlaegger_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

import 'search_page_model.dart';
export 'search_page_model.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({
    Key? key,
    this.rute,
  }) : super(key: key);

  final String? rute;

  @override
  _SearchPageWidgetState createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  late SearchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().SearchActive = false;
      });
    });

    _model.textController ??= TextEditingController();
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
            genbrugsAffaldRecord.orderBy('GenbrugsAffald_Navn'),
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
        List<GenbrugsAffaldRecord> searchPageGenbrugsAffaldRecordList =
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
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: DineruterWidget(),
                    ),
                  );
                },
              ),
              title: Text(
                'Ruteplanlægger',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Autocomplete<String>(
                                initialValue: TextEditingValue(),
                                optionsBuilder: (textEditingValue) {
                                  if (textEditingValue.text == '') {
                                    return const Iterable<String>.empty();
                                  }
                                  return ['Option 1'].where((option) {
                                    final lowercaseOption =
                                    option.toLowerCase();
                                    return lowercaseOption.contains(
                                        textEditingValue.text.toLowerCase());
                                  });
                                },
                                optionsViewBuilder:
                                    (context, onSelected, options) {
                                  return AutocompleteOptionsList(
                                    textFieldKey: _model.textFieldKey,
                                    textController: _model.textController!,
                                    options: options.toList(),
                                    onSelected: onSelected,
                                    textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                    textHighlightStyle: TextStyle(),
                                    elevation: 4,
                                    optionBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    optionHighlightColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    maxHeight: 200,
                                  );
                                },
                                onSelected: (String selection) {
                                  setState(() => _model
                                      .textFieldSelectedOption = selection);
                                  FocusScope.of(context).unfocus();
                                },
                                fieldViewBuilder: (
                                    context,
                                    textEditingController,
                                    focusNode,
                                    onEditingComplete,
                                    ) {
                                  _model.textController = textEditingController;
                                  return TextFormField(
                                    key: _model.textFieldKey,
                                    controller: textEditingController,
                                    focusNode: focusNode,
                                    onEditingComplete: onEditingComplete,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      Duration(milliseconds: 2000),
                                          () async {
                                        setState(() {
                                          _model
                                              .simpleSearchResults = TextSearch(
                                            searchPageGenbrugsAffaldRecordList
                                                .map(
                                                  (record) => TextSearchItem(
                                                  record, [
                                                record.genbrugsAffaldNavn!
                                              ]),
                                            )
                                                .toList(),
                                          )
                                              .search(
                                              _model.textController.text)
                                              .map((r) => r.object)
                                              .toList();
                                        });
                                        setState(() {
                                          FFAppState().SearchActive = true;
                                        });
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Søg affald her...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          24, 16, 24, 16),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  );
                                },
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.clear,
                                color: Color(0xFF004030),
                                size: 30,
                              ),
                              onPressed: () async {
                                setState(() {
                                  _model.textController?.clear();
                                });
                                setState(() {
                                  FFAppState().SearchActive = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Søge Resultat',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBtnText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            _model.simpleSearchResults.length.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBtnText,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (!FFAppState().SearchActive)
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Builder(
                                builder: (context) {
                                  final affaldNoSearch =
                                  searchPageGenbrugsAffaldRecordList
                                      .toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: affaldNoSearch.length,
                                    itemBuilder:
                                        (context, affaldNoSearchIndex) {
                                      final affaldNoSearchItem =
                                      affaldNoSearch[affaldNoSearchIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 3, 10,0 ),
                                        child: Container(
                                          width: double.infinity,
                                          height: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 3,
                                                color: Color(0x32000000),
                                                offset: Offset(0, 1),
                                              )
                                            ],
                                            borderRadius:
                                            BorderRadius.circular(12),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: ListView(
                                                  padding: EdgeInsets.zero,
                                                  scrollDirection:
                                                  Axis.vertical,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 90,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 3,
                                                            color: Color(
                                                                0x32000000),
                                                            offset:
                                                            Offset(0, 1),
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(12),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    2,
                                                                    0,
                                                                    2),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    InkWell(
                                                                      splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                      focusColor:
                                                                      Colors
                                                                          .transparent,
                                                                      hoverColor:
                                                                      Colors
                                                                          .transparent,
                                                                      highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                InformationsPageWidget(
                                                                                  informationsdetails: affaldNoSearchItem.reference,
                                                                                ),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                      Container(
                                                                        width:
                                                                        314,
                                                                        height:
                                                                        100,
                                                                        decoration:
                                                                        BoxDecoration(
                                                                          color:
                                                                          FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                          BorderRadius.circular(12),
                                                                        ),
                                                                        child:
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                    child: Image.network(
                                                                                      affaldNoSearchItem.genbrugsAffaldFraktionBillede!,
                                                                                      width: 80,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        affaldNoSearchItem.genbrugsAffaldNavn!,
                                                                                        style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                          fontFamily: 'Nunito',
                                                                                          color: Color(0xFF090F13),
                                                                                          fontSize: 20,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Fraktion: ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Nunito',
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                            child: Text(
                                                                                              affaldNoSearchItem.genbrugsAffaldFraktion!,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: 'Nunito',
                                                                                                color: Color(0xFF7C8791),
                                                                                                fontSize: 14,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Container:   ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Nunito',
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                            child: Text(
                                                                                              affaldNoSearchItem.genbrugsAffaldContainer!,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                fontFamily: 'Nunito',
                                                                                                color: Color(0xFFFF9100),
                                                                                                fontSize: 14,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                        child: Text(
                                                                                          affaldNoSearchItem.genbrugsAffaldBidrag!,
                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: 'Nunito',
                                                                                            color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                            fontSize: 1,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
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
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (FFAppState().SearchActive)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Builder(
                          builder: (context) {
                            final affaldNoSearch =
                            _model.simpleSearchResults.toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: affaldNoSearch.length,
                              itemBuilder: (context, affaldNoSearchIndex) {
                                final affaldNoSearchItem =
                                affaldNoSearch[affaldNoSearchIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 10, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Color(0x32000000),
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(120),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 90,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 3,
                                                      color: Color(0x32000000),
                                                      offset: Offset(0, 1),
                                                    )
                                                  ],
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                  Colors.transparent,
                                                  focusColor:
                                                  Colors.transparent,
                                                  hoverColor:
                                                  Colors.transparent,
                                                  highlightColor:
                                                  Colors.transparent,
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            InformationsPageWidget(
                                                              informationsdetails:
                                                              affaldNoSearchItem
                                                                  .reference,
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            2, 2, 0, 2),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          child: Image.network(
                                                            affaldNoSearchItem
                                                                .genbrugsAffaldFraktionBillede!,
                                                            width: 80,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              affaldNoSearchItem
                                                                  .genbrugsAffaldNavn!,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                fontFamily:
                                                                'Nunito',
                                                                color: Color(
                                                                    0xFF090F13),
                                                                fontSize:
                                                                20,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Text(
                                                                  'Fraktion: ',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Nunito',
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      4,
                                                                      0,
                                                                      0),
                                                                  child: Text(
                                                                    affaldNoSearchItem
                                                                        .genbrugsAffaldFraktion!,
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodySmall
                                                                        .override(
                                                                      fontFamily:
                                                                      'Nunito',
                                                                      color:
                                                                      Color(0xFF7C8791),
                                                                      fontSize:
                                                                      14,
                                                                      fontWeight:
                                                                      FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Text(
                                                                  'Container: ',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Nunito',
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      4,
                                                                      0,
                                                                      0),
                                                                  child: Text(
                                                                    affaldNoSearchItem
                                                                        .genbrugsAffaldContainer!,
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodySmall
                                                                        .override(
                                                                      fontFamily:
                                                                      'Nunito',
                                                                      color:
                                                                      Color(0xFFFF9100),
                                                                      fontSize:
                                                                      14,
                                                                      fontWeight:
                                                                      FontWeight.normal,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0,
                                                                  4,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                affaldNoSearchItem
                                                                    .genbrugsAffaldBidrag!,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodySmall
                                                                    .override(
                                                                  fontFamily:
                                                                  'Nunito',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryBtnText,
                                                                  fontSize:
                                                                  1,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0, 0,
                                                            20, 0),
                                                        child:
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          borderWidth: 1,
                                                          buttonSize: 60,
                                                          icon: Icon(
                                                            Icons.add,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .primaryText,
                                                            size: 30,
                                                          ),
                                                          onPressed: () async {
                                                            final valgtAffaldCreateData =
                                                            createValgtAffaldRecordData(
                                                              genbrugspladsAffaldNavn: _model
                                                                  .simpleSearchResults
                                                                  .first
                                                                  .genbrugsAffaldNavn,
                                                              genbrugsAffaldContainer: _model
                                                                  .simpleSearchResults
                                                                  .first
                                                                  .genbrugsAffaldContainer,
                                                              genbrugsAffaldFraktion: _model
                                                                  .simpleSearchResults
                                                                  .first
                                                                  .genbrugsAffaldFraktion,
                                                              billede:
                                                              affaldNoSearchItem
                                                                  .genbrugsAffaldBillede,
                                                              bidragfragenbrugspladsaffald:
                                                              affaldNoSearchItem
                                                                  .genbrugsAffaldBidrag,
                                                            );
                                                            await ValgtAffaldRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                valgtAffaldCreateData);
                                                            ScaffoldMessenger
                                                                .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Affald tilføjet til rute',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Nunito',
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .primaryBtnText,
                                                                    fontSize:
                                                                    18,
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
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RuteplanlaeggerWidget(),
                            ),
                          );
                        },
                        text: 'Se valgt affald',
                        icon: Icon(
                          Icons.alt_route,
                          size: 30,
                        ),
                        options: FFButtonOptions(
                          width: 340,
                          height: 70,
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Color(0xFF228B22),
                          textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Nunito',
                            color: Colors.white,
                            fontSize: 25,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
