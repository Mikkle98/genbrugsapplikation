import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home_page_v2/home_page_v2_widget.dart';
import '/login/login_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bruger_side_model.dart';
export 'bruger_side_model.dart';

class BrugerSideWidget extends StatefulWidget {
  const BrugerSideWidget({Key? key}) : super(key: key);

  @override
  _BrugerSideWidgetState createState() => _BrugerSideWidgetState();
}

class _BrugerSideWidgetState extends State<BrugerSideWidget> {
  late BrugerSideModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrugerSideModel());

    _model.yourNameController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.emailAddressController ??=
        TextEditingController(text: currentUserEmail);
    _model.phoneNumberController ??= TextEditingController(
        text: valueOrDefault<String>(
      currentPhoneNumber,
      'Telefon nummer',
    ));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
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
            Icons.arrow_back_rounded,
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
        title: Text(
          'Min profil',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<List<BrugereRecord>>(
                    stream: queryBrugereRecord(
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
                      List<BrugereRecord> yourNameBrugereRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final yourNameBrugereRecord =
                          yourNameBrugereRecordList.isNotEmpty
                              ? yourNameBrugereRecordList.first
                              : null;
                      return TextFormField(
                        controller: _model.yourNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Fulde Navn',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                  ),
                          hintText: 'Your full name...',
                          hintStyle: FlutterFlowTheme.of(context).bodySmall,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 0.0, 30.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                        validator: _model.yourNameControllerValidator
                            .asValidator(context),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: StreamBuilder<List<BrugereRecord>>(
                  stream: queryBrugereRecord(
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
                    List<BrugereRecord> emailAddressBrugereRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final emailAddressBrugereRecord =
                        emailAddressBrugereRecordList.isNotEmpty
                            ? emailAddressBrugereRecordList.first
                            : null;
                    return TextFormField(
                      controller: _model.emailAddressController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: emailAddressBrugereRecord!.email,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18.0,
                                ),
                        hintText: 'Email',
                        hintStyle: FlutterFlowTheme.of(context).bodySmall,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 0.0, 30.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                      validator: _model.emailAddressControllerValidator
                          .asValidator(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<List<BrugereRecord>>(
                    stream: queryBrugereRecord(
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
                      List<BrugereRecord> phoneNumberBrugereRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final phoneNumberBrugereRecord =
                          phoneNumberBrugereRecordList.isNotEmpty
                              ? phoneNumberBrugereRecordList.first
                              : null;
                      return TextFormField(
                        controller: _model.phoneNumberController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.phoneNumberController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Telefon nummer',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 0.0, 20.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.phone,
                        validator: _model.phoneNumberControllerValidator
                            .asValidator(context),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Container(
                  width: 350.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 1.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder<List<GenbrugspladsRecord>>(
                            stream: queryGenbrugspladsRecord(),
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
                              List<GenbrugspladsRecord>
                                  listViewGenbrugspladsRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listViewGenbrugspladsRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewGenbrugspladsRecord =
                                      listViewGenbrugspladsRecordList[
                                          listViewIndex];
                                  return Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).accent2,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.checkboxListTileValueMap[
                                              listViewGenbrugspladsRecord] ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                                    .checkboxListTileValueMap[
                                                listViewGenbrugspladsRecord] =
                                            newValue!);
                                        if (newValue!) {
                                          setState(() {
                                            FFAppState().Genbrugsplads =
                                                listViewGenbrugspladsRecord
                                                    .genbrugspladsNavn!;
                                          });
                                        }
                                      },
                                      title: Text(
                                        listViewGenbrugspladsRecord
                                            .genbrugspladsNavn!,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      subtitle: Text(
                                        listViewGenbrugspladsRecord
                                            .genbrugspladsLokation!,
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                      ),
                                      tileColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final brugereUpdateData1 = createBrugereRecordData(
                        displayName: _model.yourNameController.text,
                        email: _model.emailAddressController.text,
                      );
                      await currentUserReference!.update(brugereUpdateData1);

                      final brugereUpdateData2 = createBrugereRecordData(
                        genbrugsplads: _model
                            .checkboxListTileCheckedItems.first.reference.id,
                      );
                      await currentUserReference!.update(brugereUpdateData2);

                      final brugereUpdateData3 = createBrugereRecordData(
                        phoneNumber: _model.phoneNumberController.text,
                      );
                      await currentUserReference!.update(brugereUpdateData3);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Profil ændringer gemt',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 18.0,
                            ),
                          ),
                          duration: Duration(milliseconds: 1500),
                          backgroundColor: Color(0xFF083B04),
                        ),
                      );
                    },
                    text: 'Gem ændringer',
                    icon: Icon(
                      Icons.save_alt,
                      size: 25.0,
                    ),
                    options: FFButtonOptions(
                      width: 340.0,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF008000),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Nunito',
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 50.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await authManager.signOut();
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginWidget(),
                        ),
                      );
                    },
                    text: 'Log ud ',
                    icon: Icon(
                      Icons.logout,
                      size: 25.0,
                    ),
                    options: FFButtonOptions(
                      width: 340.0,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF008000),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Nunito',
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
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
