import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/login_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'signin_model.dart';
export 'signin_model.dart';

class SigninWidget extends StatefulWidget {
  const SigninWidget({Key? key}) : super(key: key);

  @override
  _SigninWidgetState createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<SigninWidget> {
  late SigninModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SigninModel());

    _model.emailAddressController ??=
        TextEditingController(text: currentUserEmail);
    _model.passwordController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.password, ''));
    _model.confirmPasswordController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.password, ''));
    _model.phonenumberController ??=
        TextEditingController(text: currentPhoneNumber);
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
                child: LoginWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Opret bruger',
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Text(
                        'Opret en bruger ved at udfylde informationerne',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Nunito',
                          color:
                          FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x4D101213),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  controller: _model.emailAddressController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.emailAddressController',
                    Duration(milliseconds: 2000),
                        () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Email adresse',
                    labelStyle:
                    FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                    hintText: 'Enter your email...',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: _model.emailAddressControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x4D101213),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AuthUserStreamWidget(
                  builder: (context) => TextFormField(
                    controller: _model.passwordController,
                    obscureText: !_model.passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'kode',
                      labelStyle:
                      FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                      hintText: 'Please enter your password...',
                      hintStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                              () => _model.passwordVisibility =
                          !_model.passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                    validator:
                    _model.passwordControllerValidator.asValidator(context),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x4D101213),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AuthUserStreamWidget(
                  builder: (context) => TextFormField(
                    controller: _model.confirmPasswordController,
                    obscureText: !_model.confirmPasswordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Bekræft kode',
                      labelStyle:
                      FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                      hintText: 'Please enter your password...',
                      hintStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                              () => _model.confirmPasswordVisibility =
                          !_model.confirmPasswordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.confirmPasswordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                    validator: _model.confirmPasswordControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x4D101213),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AuthUserStreamWidget(
                  builder: (context) => TextFormField(
                    controller: _model.phonenumberController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Telefon nnummer',
                      labelStyle:
                      FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                      hintText: 'Write your number...',
                      hintStyle: FlutterFlowTheme.of(context).bodyMedium,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                    validator: _model.phonenumberControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Container(
                width: 350,
                height: 275,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: StreamBuilder<List<GenbrugspladsRecord>>(
                  stream: queryGenbrugspladsRecord(
                    limit: 3,
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
                    List<GenbrugspladsRecord> listViewGenbrugspladsRecordList =
                    snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewGenbrugspladsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewGenbrugspladsRecord =
                        listViewGenbrugspladsRecordList[listViewIndex];
                        return Theme(
                          data: ThemeData(
                            unselectedWidgetColor:
                            FlutterFlowTheme.of(context).accent2,
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValueMap[
                            listViewGenbrugspladsRecord] ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxListTileValueMap[
                              listViewGenbrugspladsRecord] = newValue!);
                              if (newValue!) {
                                setState(() {
                                  FFAppState().Genbrugsplads =
                                  listViewGenbrugspladsRecord
                                      .genbrugspladsNavn!;
                                });
                              }
                            },
                            title: Text(
                              listViewGenbrugspladsRecord.genbrugspladsNavn!,
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
                              style: FlutterFlowTheme.of(context).titleSmall,
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeColor: FlutterFlowTheme.of(context).primary,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: StreamBuilder<List<BrugereRecord>>(
                stream: queryBrugereRecord(
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
                  List<BrugereRecord> buttonOpretbrugerBrugereRecordList =
                  snapshot.data!;
                  final buttonOpretbrugerBrugereRecord =
                  buttonOpretbrugerBrugereRecordList.isNotEmpty
                      ? buttonOpretbrugerBrugereRecordList.first
                      : null;
                  return FFButtonWidget(
                    onPressed: () async {
                      if (_model.passwordController.text !=
                          _model.confirmPasswordController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Passwords don\'t match!',
                            ),
                          ),
                        );
                        return;
                      }

                      final user = await authManager.createAccountWithEmail(
                        context,
                        _model.emailAddressController.text,
                        _model.passwordController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      final brugereCreateData = createBrugereRecordData(
                        genbrugsplads: _model.checkboxListTileCheckedItems.first
                            .genbrugspladsNavn,
                      );
                      await BrugereRecord.collection
                          .doc(user.uid)
                          .update(brugereCreateData);

                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginWidget(),
                        ),
                      );
                    },
                    text: 'Opret bruger',
                    icon: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    options: FFButtonOptions(
                      width: 340,
                      height: 60,
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFF008000),
                      textStyle:
                      FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context)
                            .secondaryBackground,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
